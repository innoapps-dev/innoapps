import 'package:inno_database/inno_database.dart';
import 'package:logging/logging.dart';
import 'package:fpdart/fpdart.dart';

//DAO: data access object

abstract class InnoDatabase {
  abstract final String schema;
  abstract final String tableName;
  abstract final List<String> columns;

  final InnoConnectionPool connectionPool;
  late Logger _logger;

  InnoDatabase({
    required this.connectionPool,
  }) {
    _logger = Logger(runtimeType.toString());
  }

  Future<Either<PostgreSQLException, PostgreSQLResult>> selectAllQuery({
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
    } on PostgreSQLException catch (e) {
      _logger.shout(e);
      return Left(e);
    }
    return Right(result);
  }

  Future<Either<PostgreSQLException, PostgreSQLResult>> selectByQuery({
    required String filterColumn,
    required dynamic filterValue,
    required String orderByColumn,
  }) async {
    late PostgreSQLResult result;

    String sql = '''
        SELECT ${columns.join(',')} 
        FROM $schema.$tableName
        WHERE $filterColumn=@filterValue
        ORDER BY $orderByColumn
        ''';

    _logger.info(sql);

    try {
      result = await connectionPool.query(
        sql,
        substitutionValues: {'filterValue': filterValue},
      );
    } on PostgreSQLException catch (e) {
      _logger.shout(e);
      return Left(e);
    }
    return Right(result);
  }

  Future<Either<PostgreSQLException, PostgreSQLResultRow>>
      selectQuerySingleKey({
    required String id,
    required String column,
  }) async {
    PostgreSQLResult result;

    String sql = '''
        SELECT ${columns.join(',')} 
        FROM $schema.$tableName
        WHERE $column=@id
        ''';

    _logger.info(sql);
    try {
      result = await connectionPool.query(
        sql,
        substitutionValues: {'id': id},
      );
      return Right(result.first);
    } on StateError {
      return Left(PostgreSQLException('Row not found'));
    } on PostgreSQLException catch (e) {
      _logger.shout(e);
      return Left(e);
    }
  }

  Future<Either<PostgreSQLException, T>> insertQuerySingleKey<T>({
    required Map<String, dynamic> values,
    required String primaryKeyColumn,
  }) async {
    String insertedId = '';

    String sql = '''
        INSERT INTO $schema.$tableName (${values.keys.join(',')})
        VALUES (${values.values.map((e) => "'$e'").join(',')})
        RETURNING $primaryKeyColumn
        ''';

    _logger.info(sql);

    List<List<dynamic>> result;

    //TODO: do we need to use substitution values?
    result = await connectionPool.query(sql);

    var returnedRow = result[0];

    if (returnedRow.length != 1) {
      throw PostgreSQLException(
        'Failed to insert row, updated number of columns is ${returnedRow.length} != 1',
      );
    }

    insertedId = returnedRow[0];

    return Right(insertedId as T);
  }

  Future<void> updateQuerySingleKey({
    required Map<String, dynamic> values,
    required String id,
    required String primaryKeyColumn,
  }) async {
    var updatesList = <String>[];

    // INPUT
    // updates:
    //  updates['name'] = 'math01'
    //  updates['department'] = 'mathematics'

    // OUTPUT for SET clause
    // name = @name, department = @department

    var substitutionValues = values;

    values.forEach((key, value) {
      updatesList.add('$key=@$key');
    });

    //UPDATE unitech.unitech_application_course
    //SET name = 'math01', department = 'mathematics'
    //WHERE id= 12341234

    var updatesFormatted = updatesList.join(', ');

    String sql = '''
        UPDATE $schema.$tableName
        SET $updatesFormatted
        WHERE $primaryKeyColumn='$id'
        ''';

    _logger.info(sql);

    try {
      // List<List<dynamic>> result;
      //
      // result = await connectionPool.query(sql);
      await connectionPool.query(sql, substitutionValues: values);
    } catch (e) {
      _logger.warning(e);
      // TODO(Ask): We should also rethrow here
      rethrow;
    }
  }

  Future<void> deleteQuerySingleKey({
    required column,
    required String id,
  }) async {
    String sql = '''
        DELETE FROM $schema.$tableName
        WHERE $column='$id'
        ''';

    _logger.info(sql);

    try {
      await connectionPool.query(sql);
    } catch (e) {
      _logger.warning(e);
      //TODO(Ask): We should also rethrow here
      rethrow;
    }
  }
}
