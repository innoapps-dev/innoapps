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

class InnoConferenceFieldDao extends InnoSingleKeyDaoBase<InnoConferenceField> {
  static String columnId = 'id';
  static String columnTitle = 'title';
  static String columnConferenceId = 'conference_id';
  static String columnValue = 'value';

  @override
  final String primaryKeyColumn = columnId;

  @override
  final String schema = 'inno';

  @override
  final String tableName = 'inno_conference_field';

  @override
  final List<String> columns = [
    columnId,
    columnTitle,
    columnConferenceId,
    columnValue,
  ];

  InnoConferenceFieldDao({required super.connectionPool});

  @override
  Future<List<InnoConferenceField>> selectAll() async {
    final result = await selectAllQuery(orderByColumn: columnId);
    return Future.wait(result.map((row) => mapToModel(row: row)));
  }

  /// This select by conference_id as the parent
  @override
  Future<List<InnoConferenceField>> selectBy({required String id}) async {
    final result = await selectByQuery(
      filterColumn: columnConferenceId,
      filterValue: id,
      orderByColumn: columnId,
    );
    return Future.wait(result.map((row) => mapToModel(row: row)));
  }

  @override
  Future<InnoConferenceField> mapToModel({
    required PostgreSQLResultRow row,
  }) async {
    if (row.length != columns.length) {
      throw PostgreSQLException(
          'Failed to select row, updated number of columns is ${row.length} != ${columns.length}');
    }

    final columnMap = row.toColumnMap();

    final innoConferenceField = InnoConferenceField(
      id: columnMap[columnId],
      title: columnMap[columnTitle],
      conferenceId: columnMap[columnConferenceId],
      value: columnMap[columnValue],
    );

    return innoConferenceField;
  }
}
