import 'package:dotenv/dotenv.dart';
import 'package:faker_dart/faker_dart.dart';

import 'package:inno_database/inno_database.dart';
import 'package:postgres/postgres_v3_experimental.dart';

final faker = Faker.instance;

InnoConnectionPool testConnectionPool() {
  var env = DotEnv(includePlatformEnvironment: true)..load(['.env', '.env']);
  final host = env.getOrElse(
    'POSTGRES_HOST',
    () => throw Exception(
      'Host is not defined in env',
    ),
  );
  final port = int.parse(
    env.getOrElse(
      'POSTGRES_PORT',
      () => throw Exception('Port variable is not defined'),
    ),
  );

  final database = env.getOrElse(
    'POSTGRES_DB',
    () => throw Exception(
      'POSTGRES_DB is not defined',
    ),
  );

  final username = env.getOrElse(
    'POSTGRES_USER',
    () => throw Exception(
      'POSTGRES_USER is not defined',
    ),
  );

  final password = env.getOrElse(
    'POSTGRES_PASSWORD',
    () => throw Exception(
      'POSTGRES_PASSWORD is not defined',
    ),
  );

  return InnoConnectionPool(
    host: host,
    port: port,
    database: database,
    username: username,
    password: password,
  );
}

PgEndpoint testPgEndpoint({
  String? withDatabase,
}) {
  var env = DotEnv(includePlatformEnvironment: true)..load(['.env', '.env']);
  final host = env.getOrElse(
    'POSTGRES_HOST',
    () => throw Exception(
      'Host is not defined in env',
    ),
  );
  final port = int.parse(
    env.getOrElse(
      'POSTGRES_PORT',
      () => throw Exception('Port variable is not defined'),
    ),
  );

  final database = env.getOrElse(
    'POSTGRES_DB',
    () => throw Exception(
      'POSTGRES_DB is not defined',
    ),
  );

  final username = env.getOrElse(
    'POSTGRES_USER',
    () => throw Exception(
      'POSTGRES_USER is not defined',
    ),
  );

  final password = env.getOrElse(
    'POSTGRES_PASSWORD',
    () => throw Exception(
      'POSTGRES_PASSWORD is not defined',
    ),
  );
  return PgEndpoint(
    host: host,
    database: withDatabase ?? database,
    isUnixSocket: false,
    password: password,
    port: port,
    requireSsl: false,
    username: username,
  );
}

extension QuickUuid on Faker {
  String uuid() {
    return datatype.uuid();
  }

  String string() {
    return lorem.sentence();
  }
}

extension AsInnoConnectionPoolExtension on PgEndpoint {
  InnoConnectionPool get asInnoConnectionPool {
    return InnoConnectionPool(
      database: database,
      host: host,
      password: password!,
      port: port,
      username: username!,
    );
  }
}

class TempUserDatabase
    extends InnoSingleKeyDaoBaseWithStreaming<Map<String, dynamic>> {
  TempUserDatabase({required super.connectionPool});

  static String get columnId => 'id';
  static String get columnFirstName => 'first_name';
  static String get columnLastName => 'last_name';
  static String get columnEmail => 'email';
  static String get columnPhone => 'phone';
  static String get columnMainRoleId => 'main_role_id';
  static String get columnCreatedAt => 'created_at';
  static String get columnUpdatedAt => 'updated_at';

  @override
  List<String> get columns => [
        columnId,
        columnFirstName,
        columnLastName,
        columnEmail,
        columnPhone,
        columnMainRoleId,
        columnCreatedAt,
        columnUpdatedAt,
      ];

  @override
  String get schema => 'public';

  @override
  String get tableName => 'users';

  Future setup() {
    return connectionPool.execute(
      'CREATE TABLE IF NOT EXISTS $tableName ('
      '$columnId VARCHAR PRIMARY KEY,'
      '$columnFirstName VARCHAR(255),'
      '$columnLastName VARCHAR(255),'
      '$columnEmail VARCHAR(255),'
      '$columnPhone VARCHAR(255),'
      '$columnMainRoleId INT,'
      '$columnCreatedAt TIMESTAMP DEFAULT NOW(),'
      '$columnUpdatedAt TIMESTAMP NULL'
      ');',
    );
  }

  Future tearDown() {
    return connectionPool.execute('DROP TABLE IF EXISTS $tableName;');
  }

  @override
  Future<Map<String, dynamic>> mapToModel({
    required PostgreSQLResultRow row,
  }) async {
    return row.toColumnMap();
  }

  @override
  String get primaryKeyColumn => columnId;

  @override
  Future<List<Map<String, dynamic>>> selectAll() async {
    final results = await selectAllQuery(orderByColumn: columnId);
    return Future.wait(results.map((e) => mapToModel(row: e)));
  }

  @override
  Future<List<Map<String, dynamic>>> selectBy({required String id}) async {
    final results = await selectByQuery(
      filterColumn: columnMainRoleId,
      filterValue: id,
      orderByColumn: columnId,
    );
    return Future.wait(results.map((e) => mapToModel(row: e)));
  }
}

class TempEventsDatabase extends InnoSingleKeyDaoBase<Map<String, dynamic>> {
  TempEventsDatabase({required super.connectionPool});

  static String get columnId => 'id';
  static String get columnUserId => 'user_id';
  static String get columnTitle => 'title';

  @override
  List<String> get columns => [
        columnId,
        columnUserId,
        columnTitle,
      ];

  @override
  String get schema => 'public';

  @override
  String get tableName => 'user_events';

  Future setup() {
    return connectionPool.execute(
      'CREATE TABLE IF NOT EXISTS $tableName ('
      '$columnId SERIAL PRIMARY KEY,'
      '$columnUserId INT,'
      '$columnTitle VARCHAR(255)'
      ');',
    );
  }

  Future tearDown() {
    return connectionPool.execute('DROP TABLE IF EXISTS $tableName;');
  }

  @override
  Future<Map<String, dynamic>> mapToModel({
    required PostgreSQLResultRow row,
  }) async {
    return row.toColumnMap();
  }

  @override
  String get primaryKeyColumn => columnId;

  @override
  Future<List<Map<String, dynamic>>> selectAll() async {
    final results = await selectAllQuery(orderByColumn: columnId);
    return Future.wait(results.map((e) => mapToModel(row: e)));
  }

  @override
  Future<List<Map<String, dynamic>>> selectBy({required String id}) async {
    final results = await selectByQuery(
      filterColumn: columnTitle,
      filterValue: id,
      orderByColumn: columnId,
    );
    return Future.wait(results.map((e) => mapToModel(row: e)));
  }
}
