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
    if (id.isEmpty) {
      throw PostgreSQLException('Failed to update row, id is empty');
    }
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
