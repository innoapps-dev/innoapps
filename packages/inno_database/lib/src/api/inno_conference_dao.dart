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

class InnoConferenceDao extends InnoSingleKeyDaoBase<InnoConference> {
  static String columnId = 'id';
  static String columnTitle = 'title';
  static String columnProviderId = 'provider_id';

  @override
  final String primaryKeyColumn = columnId;

  @override
  final String schema = 'inno';

  @override
  final String tableName = 'inno_conference';

  @override
  final List<String> columns = [
    columnId,
    columnTitle,
    columnProviderId,
  ];

  InnoConferenceDao({required super.connectionPool});

  @override
  Future<List<InnoConference>> selectAll() async {
    final result = await selectAllQuery(orderByColumn: columnId);
    return Future.wait(result.map((row) => mapToModel(row: row)));
  }

  @override
  Future<List<InnoConference>> selectBy({required String id}) async {
    final result = await selectByQuery(
      filterColumn: columnProviderId,
      filterValue: id,
      orderByColumn: columnId,
    );
    return Future.wait(result.map((row) => mapToModel(row: row)));
  }

  @override
  Future<InnoConference> mapToModel({required PostgreSQLResultRow row}) async {
    if (row.length != columns.length) {
      throw PostgreSQLException(
        'Failed to select row, updated number of columns is ${row.length} != ${columns.length}',
      );
    }

    final columnMap = row.toColumnMap();
    final innoConferenceProviderDao = InnoConferenceProviderDao(
      connectionPool: connectionPool,
    );
    final innoConferenceFieldsDao = InnoConferenceFieldDao(
      connectionPool: connectionPool,
    );
    final provider = await innoConferenceProviderDao.select(
      id: columnMap[columnProviderId],
    );
    final innoConferenceFields = await innoConferenceFieldsDao.selectBy(
      id: columnMap[columnId],
    );

    final innoConference = InnoConference(
      id: columnMap[columnId],
      title: columnMap[columnTitle],
      provider: provider,
      fields: innoConferenceFields,
    );

    return innoConference;
  }
}

extension AsDBMap on InnoConference {
  Map<String, dynamic> get asDBMap {
    return {
      InnoConferenceDao.columnId: id,
      InnoConferenceDao.columnProviderId: provider.id,
      InnoConferenceDao.columnTitle: title,
    };
  }
}
