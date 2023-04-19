import 'package:dotenv/dotenv.dart';
import 'package:faker_dart/faker_dart.dart';

import 'package:inno_database/inno_database.dart';

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

extension QuickUuid on Faker {
  String uuid() {
    return datatype.uuid();
  }

  String string() {
    return lorem.sentence();
  }
}
