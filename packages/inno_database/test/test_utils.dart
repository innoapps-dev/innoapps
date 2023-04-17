import 'package:dotenv/dotenv.dart';
import 'package:faker_dart/faker_dart.dart';
import 'package:fpdart/fpdart.dart';

import 'package:inno_database/inno_database.dart';

final faker = Faker.instance;

InnoConnectionPool testConnectionPool() {
  var env = DotEnv(includePlatformEnvironment: true)..load(['.env', '.env']);
  final configs = env.map;
  final host = configs
      .lookup('POSTGRES_HOST')
      .getOrElse(() => throw Exception('Host is not defined in env'));
  final port = int.parse(configs
      .lookup('POSTGRES_PORT')
      .getOrElse(() => throw Exception('Port variable is not defined')));

  final database = configs
      .lookup('POSTGRES_DB')
      .getOrElse(() => throw Exception('POSTGRES_DB is not defined'));

  final username = configs
      .lookup('POSTGRES_USER')
      .getOrElse(() => throw Exception('POSTGRES_USER is not defined'));

  final password = configs
      .lookup('POSTGRES_PASSWORD')
      .getOrElse(() => throw Exception('POSTGRES_PASSWORD is not defined'));

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
