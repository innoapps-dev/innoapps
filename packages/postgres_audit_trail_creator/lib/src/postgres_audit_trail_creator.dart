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

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fpdart/fpdart.dart';
import 'package:inno_database/inno_database.dart';

/// Postres Audit Trail Creator
/// {@endtemplate}
class PostgresAuditTrailCreator {
  const PostgresAuditTrailCreator({
    required InnoConnectionPool connection,
  }) : _connection = connection;

  final InnoConnectionPool _connection;

  /// Sends a query to the database and returns the result.
  Future<Either<PostgreSQLException, PostgreSQLResult>> query(
    String query, {
    Map<String, dynamic>? substitutionValues,
  }) async {
    try {
      return Right(
        await _connection.query(query, substitutionValues: substitutionValues),
      );
    } on PostgreSQLException catch (e) {
      return Left(e);
    }
  }

  Future<Either<PostgreSQLException, List<TableColumn>>> scanTables(
    String schema,
  ) async {
    final result = await query(
      '''
      SELECT table_name, column_name, data_type
      FROM information_schema.columns
      WHERE table_schema = @schema
      ORDER BY table_name, ordinal_position;
    ''',
      substitutionValues: {
        'schema': schema,
      },
    );
    return result.map((rows) {
      return rows.map((e) {
        final data = e.toColumnMap();
        final name = data['column_name'] as String;
        final type = data['data_type'] as String;
        final tableName = data['table_name'] as String;

        return TableColumn(name: name, type: type, tableName: tableName);
      }).toList();
    });
  }

  /// Closes the connection to the database.
  /// This should be called when the object is no longer needed.
  Future<void> close() async {
    await _connection.close();
  }
}

/// Models a Column in a Table
class TableColumn {
  final String tableName;
  final String name;
  final String type;
  TableColumn({
    required this.name,
    required this.type,
    required this.tableName,
  });

  @override
  String toString() {
    return 'TableColumn{tableName: $tableName, name: $name, type: $type}';
  }
}

/// Models a Table in a Schema
class PostgresTable {
  final String name;
  final List<TableColumn> columns;
  PostgresTable({
    required this.name,
    required this.columns,
  });

  @override
  String toString() {
    return 'PostgresTable{name: $name, columns: ${columns.map((e) => '\n\t\t$e')}}';
  }
}

/// {@template postgres_audit_trail_creator}
/// DAO for the TableColumns table
class TableColumnDao extends InnoSingleKeyDaoBase<TableColumn> {
  TableColumnDao({
    required InnoConnectionPool connection,
  }) : super(connectionPool: connection);

  static String columnTableName = 'table_name';
  static String columnColumnName = 'column_name';
  static String columnDataType = 'data_type';

  @override
  List<String> get columns => [
        columnTableName,
        columnColumnName,
        columnDataType,
      ];

  @override
  Future<TableColumn> mapToModel({required PostgreSQLResultRow row}) {
    final data = row.toColumnMap();
    return Future.value(
      TableColumn(
        name: data[columnColumnName] as String,
        type: data[columnDataType] as String,
        tableName: data[columnTableName] as String,
      ),
    );
  }

  @override
  String get primaryKeyColumn => throw UnimplementedError();

  @override
  String get schema => 'information_schema';

  @override
  String get tableName => 'columns';

  @override
  Future<List<TableColumn>> selectAll() async {
    final result = await selectAllQuery(orderByColumn: columnTableName);
    return Future.wait(result.map((e) => mapToModel(row: e)).toList());
  }

  @override
  Future<List<TableColumn>> selectBy({required String id}) {
    throw UnimplementedError();
  }
}

extension GroupTableColumns on List<TableColumn> {
  List<PostgresTable> groupByTableName() {
    final map = <String, List<TableColumn>>{};
    forEach((element) {
      if (map.containsKey(element.tableName)) {
        map[element.tableName]!.add(element);
      } else {
        map[element.tableName] = [element];
      }
    });
    return map.entries.map((e) {
      return PostgresTable(
        name: e.key,
        columns: e.value,
      );
    }).toList();
  }
}
