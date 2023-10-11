/// Copyright 2023 Ariwa Pre Ltd
/// 
/// Licensed under the Apache License, Version 2.0 (the "License");
/// you may not use this file except in compliance with the License.
/// You may obtain a copy of the License at
/// 
///   http://www.apache.org/licenses/LICENSE-2.0
/// 
/// Unless required by applicable law or agreed to in writing, software
/// distributed under the License is distributed on an "AS IS" BASIS,
/// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
/// See the License for the specific language governing permissions and
/// limitations under the License.
/// 

import 'package:inno_database/inno_database.dart';
import 'package:logging/logging.dart';

//DAO: data access object

abstract class InnoDatabase with LoggerMixin {
  abstract final String schema;
  abstract final String tableName;
  abstract final List<String> columns;

  final InnoConnectionPool connectionPool;

  InnoDatabase({
    required this.connectionPool,
  });

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

mixin LoggerMixin {
  Logger get _logger => Logger(runtimeType.toString());

  void info(String message) {
    _logger.info(message);
  }

  void warning(String message) {
    _logger.warning(message);
  }

  void severe(String message) {
    _logger.severe(message);
  }

  void shout(String message) {
    _logger.shout(message);
  }

  void logError(String message) {
    _logger.shout(message);
  }

  void logErrorWithStackTrace(String message, StackTrace st) {
    _logger.shout(message, st);
  }

  void logErrorWithException(String message, Exception e) {
    _logger.shout(message, e);
  }
}

abstract class DatabaseColumnDefinition<T> {
  T getValueFromRow(PostgreSQLResultRow row, String columnName);
  T getValue();
  String get name;
  String get type;
  bool get isPrimaryKey;
  bool get isAutoIncrement;
  bool get isNullable;
  bool get isUnique;
  bool get isIndexed;
  String get ddl;
}

abstract class IntColumn extends DatabaseColumnDefinition<int> {
  @override
  int getValueFromRow(PostgreSQLResultRow row, String columnName) {
    return row.toColumnMap()[columnName] as int;
  }

  @override
  String get type => 'int';

  @override
  String get ddl => '$name $type ${isPrimaryKey ? 'PRIMARY KEY' : ''}';
}

class IntPrimaryKeyColumn extends IntColumn {
  IntPrimaryKeyColumn(this._value, this.name);

  final int _value;
  @override
  final String name;

  @override
  int getValue() {
    return _value;
  }

  @override
  bool get isPrimaryKey => true;

  @override
  bool get isAutoIncrement => true;

  @override
  bool get isNullable => false;

  @override
  bool get isUnique => true;

  @override
  bool get isIndexed => true;
}

abstract class StringColumn extends DatabaseColumnDefinition<String> {
  @override
  String getValueFromRow(PostgreSQLResultRow row, String columnName) {
    return row.toColumnMap()[columnName] as String;
  }

  @override
  String get type => 'text';

  @override
  String get ddl => '$name $type ${isPrimaryKey ? 'PRIMARY KEY' : ''}';

  @override
  String toString() {
    return getValue();
  }
}

abstract class BoolColumn extends DatabaseColumnDefinition<bool> {
  @override
  bool getValueFromRow(PostgreSQLResultRow row, String columnName) {
    return row.toColumnMap()[columnName] as bool;
  }

  @override
  String get type => 'boolean';

  @override
  String get ddl => '$name $type ${isPrimaryKey ? 'PRIMARY KEY' : ''}';
}

abstract class DateTimeColumn extends DatabaseColumnDefinition<DateTime> {
  @override
  DateTime getValueFromRow(PostgreSQLResultRow row, String columnName) {
    return row.toColumnMap()[columnName] as DateTime;
  }

  @override
  String get type => 'timestamp';

  @override
  String get ddl => '$name $type ${isPrimaryKey ? 'PRIMARY KEY' : ''}';
}

// abstract class GeometryColumn extends DatabaseColumnDefinition<Geometry> {
//   @override
//   Geometry getValueFromRow(PostgreSQLResultRow row, String columnName) {
//     return row.toColumnMap()[columnName] as Geometry;
//   }

//   @override
//   String get type => 'geometry';

//   @override
//   String get ddl => '$name $type ${isPrimaryKey ? 'PRIMARY KEY' : ''}';
// }

/// CREATE TABLE users (
///   id SERIAL PRIMARY KEY,
/// )