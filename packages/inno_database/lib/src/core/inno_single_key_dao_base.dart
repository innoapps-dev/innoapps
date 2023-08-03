import 'dart:convert';

import 'package:inno_database/inno_database.dart';
import 'package:postgres/postgres_v3_experimental.dart';
import 'package:crypto/crypto.dart';

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

  Future<Stream<T>> insertsStream() async {
    final notifierFunctionName = '${schema}_${tableName}_inserts_function';
    final notifierChannel = '${schema}_${tableName}_inserts_channel';
    final triggerName = '${schema}_${tableName}_inserts_trigger';
    final createTableInsertFunction = '''
CREATE OR REPLACE FUNCTION $notifierFunctionName() 
  RETURNS TRIGGER
  LANGUAGE plpgsql
   AS \$\$
  BEGIN
    PERFORM pg_notify('$notifierChannel', NEW.$primaryKeyColumn::text);
    RETURN NULL;
  END;
\$\$;
''';
    final createTableInsertsTrigger = '''
CREATE TRIGGER $triggerName
AFTER INSERT
on $schema.$tableName
FOR EACH ROW
EXECUTE PROCEDURE $notifierFunctionName();
''';

    final connection = await v3ConnectionPool;

    await connection.execute(
      PgSql('DROP TRIGGER IF EXISTS $triggerName ON $schema.$tableName;'),
    );

    await connection.execute(PgSql(createTableInsertFunction));
    await connection.execute(PgSql(createTableInsertsTrigger));

    await connection.execute('LISTEN $notifierChannel;');
    return connection.channels[notifierChannel].asyncMap((id) async {
      final result = await select(id: id);
      return result;
    });
  }

  Future<Stream<T>> rowUpdatesStream({
    required dynamic id,
  }) async {
    late String idComparisonString;
    late String notifierFunctionName;
    late String notifierChannel;
    late String triggerName;

    final md5Hash = _shortenId(id);
    notifierFunctionName = '${schema}_${tableName}_${md5Hash}_updates_function';
    notifierChannel = '${schema}_${tableName}_${md5Hash}_updates_channel';
    triggerName = '${schema}_${tableName}_${md5Hash}_updates_trigger';
    if (id is int) {
      idComparisonString = 'NEW.$primaryKeyColumn = $id';
    } else if (id is String) {
      idComparisonString = 'NEW.$primaryKeyColumn = \'$id\'';
    } else {
      throw Exception('id must be either int or String');
    }

    final createTableUpdateFunction = '''
CREATE OR REPLACE FUNCTION $notifierFunctionName() 
  RETURNS TRIGGER
  LANGUAGE plpgsql
   AS \$\$
  BEGIN
    IF $idComparisonString THEN
      PERFORM pg_notify('$notifierChannel', NEW.$primaryKeyColumn::text);
    END IF;
    RETURN NULL;
  END;
\$\$;
''';
    info(createTableUpdateFunction);

    final createTableUpdatesTrigger = '''
  CREATE TRIGGER $triggerName
  AFTER UPDATE
  ON $schema.$tableName
  FOR EACH ROW
  EXECUTE FUNCTION $notifierFunctionName();

  ''';
    info(createTableUpdatesTrigger);

    final connection = await v3ConnectionPool;

    await connection.execute(
      PgSql('DROP TRIGGER IF EXISTS $triggerName  ON $schema.$tableName;'),
    );
    await connection.execute(PgSql(createTableUpdateFunction));
    await connection.execute(PgSql(createTableUpdatesTrigger));
    await connection.execute('LISTEN $notifierChannel;');
    return connection.channels[notifierChannel].asyncMap((id) async {
      final result = await select(id: id);
      return result;
    });
  }

  Future<Stream<String>> deletesStream() async {
    final notifierFunctionName = '${schema}_${tableName}deletes_function';
    final notifierChannel = '${schema}_${tableName}deletes_channel';
    final createTableDeleteFunction = '''
CREATE OR REPLACE FUNCTION $notifierFunctionName() 
  RETURNS TRIGGER
  LANGUAGE plpgsql
   AS \$\$
  BEGIN
    PERFORM pg_notify('$notifierChannel', OLD.$primaryKeyColumn::text);
    RETURN NULL;
  END;
\$\$;
''';
    final createTableDeletesTrigger = '''
CREATE TRIGGER ${schema}_${tableName}deletes_trigger
AFTER DELETE
ON $schema.$tableName
FOR EACH ROW
EXECUTE FUNCTION $notifierFunctionName();
''';
    final connection = await v3ConnectionPool;

    await connection.execute(PgSql(createTableDeleteFunction));
    await connection.execute(PgSql(createTableDeletesTrigger));
    await connection.execute('LISTEN $notifierChannel;');
    return connection.channels[notifierChannel];
  }

  String _shortenId(dynamic id) {
    final md5Hash = md5.convert(utf8.encode(id.toString()));
    if (id is int || id is String) {
      return md5Hash.toString().substring(0, 8);
    } else {
      throw Exception('id must be either int or String');
    }
  }
}
