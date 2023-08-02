import 'package:inno_database/inno_database.dart';
import 'package:logging/logging.dart';
import 'package:postgres/postgres_v3_experimental.dart' as v3;

//DAO: data access object

abstract class InnoDatabase {
  abstract final String schema;
  abstract final String tableName;
  abstract final List<String> columns;

  final InnoConnectionPool connectionPool;
  late Logger _logger;
  late Future<v3.PgConnection> v3ConnectionPool;

  InnoDatabase({
    required this.connectionPool,
  }) {
    _logger = Logger(runtimeType.toString());
    v3ConnectionPool = connectionPool.v3ConnectionPool;
  }

  Future<PostgreSQLResult> selectAllQuery({
    required String orderByColumn,
  }) async {
    late PostgreSQLResult result;

    String sql = '''
        SELECT ${columns.join(',')}
        FROM $schema.$tableName
        ORDER BY $orderByColumn
        ''';

    _logger.info(sql);

    try {
      result = await connectionPool.query(sql);
    } catch (e, st) {
      _logger.shout(e.runtimeType, e, st);
      rethrow;
    }
    return result;
  }

  Future<PostgreSQLResult> joinAllQuery({
    required String otherTableSchema,
    required String otherTable,
    required String otherTableJoinColumn,
    required List<String> otherTableColumns,
    required String thisTableColumn,
    required String orderByColumn,
  }) async {
    final thisClassColumns = columns.map((e) => '$schema.$tableName.$e');
    final otherTableColumnsFormatted =
        otherTableColumns.map((e) => '$otherTableSchema.$otherTable.$e');

    final sql = '''
SELECT ${thisClassColumns.join(', ')}, ${otherTableColumnsFormatted.join(', ')}
FROM $schema.$tableName
INNER JOIN $schema.$otherTable
ON $schema.$tableName.$thisTableColumn = $schema.$otherTable.$otherTableJoinColumn
ORDER BY $schema.$tableName.$orderByColumn
''';

    _logger.info(sql);

    late PostgreSQLResult result;

    try {
      result = await connectionPool.query(sql);
    } catch (e, st) {
      _logger.shout(e.runtimeType, e, st);
      rethrow;
    }
    return result;
  }

  Future<PostgreSQLResult> joinAllQueryWhere({
    required String otherTable,
    required String otherTableColumn,
    required String thisTableColumn,
    required String orderByColumn,
    required String whereColumn,
    required dynamic whereValue,
  }) async {
    throw UnimplementedError();
  }

  Future<PostgreSQLResult> selectByQuery({
    required String filterColumn,
    required dynamic filterValue,
    required String orderByColumn,
  }) async {
    late PostgreSQLResult result;

    String sql = '''
        SELECT ${columns.join(',')} 
        FROM $schema.$tableName
        WHERE $filterColumn=@filterValue
        ORDER BY @orderByColumn
        ''';

    _logger.info(sql);

    try {
      result = await connectionPool.query(
        sql,
        substitutionValues: {
          'filterValue': filterValue,
          'orderByColumn': orderByColumn,
        },
      );
    } catch (e, st) {
      _logger.shout(e.runtimeType, e, st);
      rethrow;
    }
    return result;
  }

  Future<PostgreSQLResult> selectGreaterThanQuery({
    required String filterColumn,
    required dynamic filterValue,
    required String orderByColumn,
  }) async {
    late PostgreSQLResult result;

    String sql = '''
        SELECT ${columns.join(',')} 
        FROM $schema.$tableName
        WHERE $filterColumn>@filterValue
        ORDER BY @orderByColumn
        ''';

    _logger.info(sql);

    try {
      result = await connectionPool.query(
        sql,
        substitutionValues: {
          'filterValue': filterValue,
          'orderByColumn': orderByColumn,
        },
      );
      return result;
    } catch (e, st) {
      _logger.shout(e.runtimeType, e, st);
      rethrow;
    }
  }

  Future<PostgreSQLResult> selectLessThanQuery({
    required String filterColumn,
    required dynamic filterValue,
    required String orderByColumn,
  }) async {
    late PostgreSQLResult result;

    String sql = '''
        SELECT ${columns.join(',')} 
        FROM $schema.$tableName
        WHERE $filterColumn<@filterValue
        ORDER BY @orderByColumn
        ''';

    _logger.info(sql);

    try {
      result = await connectionPool.query(
        sql,
        substitutionValues: {
          'filterValue': filterValue,
          'orderByColumn': orderByColumn,
          'schema': schema,
        },
      );
      return result;
    } catch (e, st) {
      _logger.shout(e.runtimeType, e, st);
      rethrow;
    }
  }

  Future<PostgreSQLResultRow> selectQuerySingleKey({
    required String id,
    required String column,
  }) async {
    PostgreSQLResult result;
    PostgreSQLResultRow row;

    String sql = '''
        SELECT ${columns.join(',')} 
        FROM $schema.$tableName
        WHERE $column=@id
        ''';

    _logger.info(sql);

    try {
      result = await connectionPool.query(
        sql,
        substitutionValues: {
          'id': id,
          'column': column,
        },
      );

      if (result.isEmpty) {
        throw PostgreSQLException('Record not found');
      }

      row = result[0];
      if (row.isEmpty) {
        throw PostgreSQLException('Record not found. Postgresql row is empty');
      }
    } catch (e, st) {
      _logger.shout(e.runtimeType, e, st);
      rethrow;
    }

    return row;
  }

  Future<dynamic> insertQuerySingleKey({
    required Map<String, dynamic> values,
    required String primaryKeyColumn,
  }) async {
    String sql = '''
        INSERT INTO $schema.$tableName (${values.keys.join(',')})
        VALUES (${values.keys.map((e) => "@$e").join(',')})
        RETURNING $primaryKeyColumn
        ''';

    _logger.info(sql);

    List<List<dynamic>> result;

    result = await connectionPool.query(
      sql,
      substitutionValues: values,
    );

    var returnedRow = result[0];

    if (returnedRow.length != 1) {
      throw PostgreSQLException(
        'Failed to insert row, updated number of columns is ${returnedRow.length} != 1',
      );
    }

    return returnedRow[0];
  }

  Future<void> updateQuerySingleKey({
    required Map<String, dynamic> values,
    required String id,
    required String primaryKeyColumn,
  }) async {
    var updatesList = <String>[];

    if (id.isEmpty) {
      throw PostgreSQLException('Failed to update row, id is empty');
    }

    if (values.isEmpty) {
      throw PostgreSQLException(
        'Cannot send update with no values. Ensure that `Map<String, dynamic> values` is not empty',
      );
    }

    values.forEach((key, value) {
      updatesList.add('$key=@$key');
    });

    var updatesFormatted = updatesList.join(', ');

    String sql = '''
        UPDATE $schema.$tableName
        SET $updatesFormatted
        WHERE $primaryKeyColumn='$id'
        ''';

    _logger.info(sql);

    try {
      await connectionPool.query(sql, substitutionValues: values);
    } catch (e, st) {
      _logger.shout(e.runtimeType, e, st);
      rethrow;
    }
  }

  Future<void> deleteQuerySingleKey({
    required column,
    required String id,
  }) async {
    String sql = '''
        DELETE FROM $schema.$tableName
        WHERE $column=@id
        ''';

    _logger.info(sql);

    try {
      await connectionPool.query(
        sql,
        substitutionValues: {'id': id},
      );
    } catch (e, st) {
      _logger.shout(e.runtimeType, e, st);
      rethrow;
    }
  }
}
