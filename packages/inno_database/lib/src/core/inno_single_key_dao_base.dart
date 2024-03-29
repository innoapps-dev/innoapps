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

abstract class InnoSingleKeyDaoBase<T> extends InnoDatabase {
  abstract final String primaryKeyColumn;

  InnoSingleKeyDaoBase({required super.connectionPool});

  Future<List<T>> selectAll();

  Future<List<T>> selectBy({required String id});

  Future<T> select({required String id}) async {
    PostgreSQLResultRow row = await selectQuerySingleKey(
      id: id,
      column: primaryKeyColumn,
    );

    return await mapToModel(row: row);
  }

  Future<T> mapToModel({required PostgreSQLResultRow row});

  Future<T> insert({
    required Map<String, dynamic> values,
  }) async {
    String id;

    try {
      id = await insertQuerySingleKey(
        values: values,
        primaryKeyColumn: primaryKeyColumn,
      );

      if (id.isEmpty) {
        throw PostgreSQLException('Failed to insert row, id is empty');
      }
    } on PostgreSQLException catch (e) {
      print(e);
      rethrow;
    }

    return await select(id: id);
  }

  Future<T> update({
    required Map<String, dynamic> values,
    required String id,
  }) async {
    try {
      await updateQuerySingleKey(
        values: values,
        primaryKeyColumn: primaryKeyColumn,
        id: id,
      );
    } on PostgreSQLException catch (e) {
      print(e);
      rethrow;
    }

    return await select(id: id);
  }

  Future<void> delete({required String id}) async {
    await deleteQuerySingleKey(id: id, column: primaryKeyColumn);
  }

  Future<void> deleteBy({required String id}) async {
    await deleteQuerySingleKey(id: id, column: primaryKeyColumn);
  }
}
