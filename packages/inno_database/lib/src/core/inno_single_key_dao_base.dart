import 'package:inno_database/inno_database.dart';
import 'package:postgres/postgres_v3_experimental.dart';

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
    final notifierFunctionName = '${schema}_${tableName}inserts_function';
    final notifierChannel = '${schema}_${tableName}inserts_channel';
    final triggerName = '$schema.{$tableName}_inserts_trigger';
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
    print(createTableInsertFunction);
    final createTableInsertsTrigger = '''
CREATE TRIGGER $triggerName
AFTER INSERT
on $schema.$tableName
FOR EACH ROW
EXECUTE PROCEDURE $notifierFunctionName();
''';
    print(createTableInsertsTrigger);
    final connection = await v3ConnectionPool;

    await connection.execute(PgSql(createTableInsertFunction));
    await connection.execute(PgSql(createTableInsertsTrigger));
    await connection.execute(
      PgSql('DROP TRIGGER IF EXISTS $triggerName ON $schema.$tableName;'),
    );
    await connection.execute('LISTEN $notifierChannel;');
    return connection.channels[notifierChannel].asyncMap((id) async {
      final result = await select(id: id);
      return result;
    });
  }

  Future<Stream<T>> rowUpdatesStream({
    required dynamic id,
  }) async {
    final notifierFunctionName = '${schema}_$tableName${id}_updates_function';
    final notifierChannel = '${schema}_$tableName${id}_updates_channel';
    final triggerName = '${schema}_$tableName${id}_updates_trigger';
    final createTableUpdateFunction = '''
CREATE OR REPLACE FUNCTION $notifierFunctionName() 
  RETURNS TRIGGER
  LANGUAGE plpgsql
   AS \$\$
  BEGIN
    IF NEW.id = $id THEN
      PERFORM pg_notify('$notifierChannel', NEW.$primaryKeyColumn::text);
    END IF;
    RETURN NULL;
  END;
\$\$;
''';

    final createTableUpdatesTrigger = '''
  CREATE TRIGGER $triggerName
  AFTER UPDATE
  ON $schema.$tableName
  FOR EACH ROW
  EXECUTE FUNCTION $notifierFunctionName();

  ''';
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
}
