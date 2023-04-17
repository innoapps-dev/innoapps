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
          values: values, primaryKeyColumn: primaryKeyColumn);

      if (id.isEmpty) {
        throw PostgreSQLException('Failed to insert row, id is empty');
        // throw GrpcError.unknown(
        //   'Empty id while executing insert inno file',
        // );
      }
    } on PostgreSQLException catch (e) {
      print(e);
      rethrow;
      // if (e.code == '23505') {
      //   throw GrpcError.alreadyExists(e.message);
      // }
      // throw GrpcError.unknown(
      //   e.message,
      // );
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

      if (id.isEmpty) {
        //TODO: add error control
        throw PostgreSQLException('Failed to insert row, id is empty');
        // throw GrpcError.unknown(
        //   'Empty id while executing insert inno file',
        // );
      }
    } on PostgreSQLException catch (e) {
      print(e);
      //TODO: add error control
      rethrow;
      // if (e.code == '23505') {
      //   throw GrpcError.alreadyExists(e.message);
      // }
      // throw GrpcError.unknown(
      //   e.message,
      // );
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
