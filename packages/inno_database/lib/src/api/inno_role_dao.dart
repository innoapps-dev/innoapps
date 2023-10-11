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

class InnoRoleDao extends InnoSingleKeyDaoBase<InnoRole> {
  static String columnId = 'id';
  static String columnTitle = 'title';

  @override
  final String primaryKeyColumn = columnId;

  @override
  final String schema = 'inno';

  @override
  final String tableName = 'inno_role';

  @override
  final List<String> columns = [
    columnId,
    columnTitle,
  ];

  InnoRoleDao({required super.connectionPool});

  @override
  Future<List<InnoRole>> selectAll() async {
    PostgreSQLResult results = await selectAllQuery(orderByColumn: columnTitle);

    List<InnoRole> innoRoles = List.empty(growable: true);

    for (final PostgreSQLResultRow row in results) {
      final innoRole = await mapToModel(row: row);
      innoRoles.add(innoRole);
    }

    return innoRoles;
  }

  @override
  Future<List<InnoRole>> selectBy({required String id}) async {
    // TODO: implement selectBy
    throw UnimplementedError();
  }

  @override
  Future<InnoRole> mapToModel({required PostgreSQLResultRow row}) async {
    if (row.length != columns.length) {
      throw PostgreSQLException(
          'Failed to select row, updated number of columns is ${row.length} != ${columns.length}');
    }

    final columnMap = row.toColumnMap();

    InnoRole innoRole = InnoRole(
      id: columnMap[columnId],
      title: columnMap[columnTitle],
    );

    return innoRole;
  }
}
