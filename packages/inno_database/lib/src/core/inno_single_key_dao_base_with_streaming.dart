import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:inno_database/inno_database.dart';
import 'package:postgres/postgres_v3_experimental.dart';

abstract class InnoSingleKeyDaoBaseWithStreaming<T>
    extends InnoSingleKeyDaoBase<T> {
  InnoSingleKeyDaoBaseWithStreaming({required super.connectionPool});

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

    return await connectionPool.v3Pool.withConnection(
      (connection) async {
        await connection.execute(
          PgSql('DROP TRIGGER IF EXISTS $triggerName ON $schema.$tableName;'),
        );

        await connection.execute(PgSql(createTableInsertFunction));
        await connection.execute(PgSql(createTableInsertsTrigger));
      },
    ).then((value) async {
      final connection = await v3PgConnection;
      return connection.channels[notifierChannel].asyncMap((id) async {
        final result = await select(id: id);
        return result;
      });
    });
  }

  Future<Stream<T>> selectQuerySingleKeyStream({
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

    return connectionPool.v3Pool.withConnection((connection) async {
      await connection.execute(
        PgSql('DROP TRIGGER IF EXISTS $triggerName  ON $schema.$tableName;'),
      );
      await connection.execute(PgSql(createTableUpdateFunction));
      await connection.execute(PgSql(createTableUpdatesTrigger));
    }).then(
      (value) async {
        final connection = await v3PgConnection;
        return connection.channels[notifierChannel].asyncMap((id) async {
          final result = await select(id: id);
          return result;
        });
      },
    );
  }

  Future<Stream<String>> deletesStream() async {
    final notifierFunctionName = '${schema}_${tableName}_deletes_function';
    final notifierChannel = '${schema}_${tableName}_deletes_channel';
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
    return await connectionPool.v3Pool.withConnection((connection) async {
      await connection.execute(PgSql(createTableDeleteFunction));
      await connection.execute(PgSql(createTableDeletesTrigger));
    }).then(
      (value) async {
        final connection = await v3PgConnection;
        return connection.channels[notifierChannel];
      },
    );
  }

  Future<Stream<List<T>>> selectByQueryStream({
    required String filterColumn,
    required dynamic filterValue,
    required String orderByColumn,
  }) async {
    late String filterFunctionName;
    if (filterValue is String) {
      filterFunctionName = _shortenId(filterValue);
    } else if (filterValue is int) {
      filterFunctionName = filterValue.toString();
    } else {
      throw Exception('filterValue must be either int or String');
    }

    late String filterComparisonString;
    if (filterValue is int) {
      filterComparisonString = 'NEW.$filterColumn = $filterValue';
    } else if (filterValue is String) {
      filterComparisonString = 'NEW.$filterColumn = \'$filterValue\'';
    } else {
      throw Exception('id must be either int or String');
    }

    final notifierFunctionName =
        '${schema}_${tableName}_${filterColumn}_${filterFunctionName}_query_function';
    final notifierChannel =
        '${schema}_${tableName}_${filterColumn}_${filterFunctionName}_query_channel';
    final triggerName =
        '${schema}_${tableName}_${filterColumn}_${filterFunctionName}_query_trigger';

    final selectByValueQueryFunction = '''
CREATE OR REPLACE FUNCTION $notifierFunctionName()
  RETURNS TRIGGER
  LANGUAGE plpgsql
  AS \$\$
  BEGIN
    IF $filterComparisonString THEN
      PERFORM pg_notify('$notifierChannel', NEW.$primaryKeyColumn::text);
    END IF;
    RETURN NULL;
  END;
\$\$;
''';
    print(selectByValueQueryFunction);
    final selectByValueQueryTrigger = '''
CREATE TRIGGER $triggerName
AFTER INSERT
ON $schema.$tableName
FOR EACH ROW
EXECUTE FUNCTION $notifierFunctionName();
''';
    print(selectByValueQueryTrigger);
    return await connectionPool.v3Pool.withConnection((connection) async {
      await connection.execute(
        PgSql('DROP TRIGGER IF EXISTS $triggerName ON $schema.$tableName;'),
      );
      await connection.execute(PgSql(selectByValueQueryFunction));
      await connection.execute(PgSql(selectByValueQueryTrigger));
    }).then(
      (value) async {
        final connection = await v3PgConnection;
        return connection.channels[notifierChannel].asyncMap((_) async {
          final result = await selectByQuery(
            filterColumn: filterColumn,
            filterValue: filterValue,
            orderByColumn: orderByColumn,
          );
          return Future.wait(result.map((e) => mapToModel(row: e)));
        });
      },
    );
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
