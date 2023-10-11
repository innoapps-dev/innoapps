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

// ignore_for_file: prefer_const_constructors
import 'package:dotenv/dotenv.dart';
import 'package:inno_database/inno_database.dart';
import 'package:postgres_audit_trail_creator/postgres_audit_trail_creator.dart';
import 'package:test/test.dart';

void main() {
  late InnoConnectionPool connectionPool;
  late PostgresAuditTrailCreator creator;

  setUp(() async {
    final env = DotEnv(includePlatformEnvironment: true)..load(['.env.test']);
    final host = env.getOrElse(
      'POSTGRES_HOST',
      () => throw Exception('Host is not defined in env'),
    );
    final port = int.parse(
      env.getOrElse(
        'POSTGRES_PORT',
        () => throw Exception('Port variable is not defined'),
      ),
    );

    final database = env.getOrElse(
      'POSTGRES_DB',
      () => throw Exception('POSTGRES_DB is not defined'),
    );

    final username = env.getOrElse(
      'POSTGRES_USER',
      () => throw Exception('POSTGRES_USER is not defined'),
    );

    final password = env.getOrElse(
      'POSTGRES_PASSWORD',
      () => throw Exception('POSTGRES_PASSWORD is not defined'),
    );
    final openingPool = InnoConnectionPool(
      host: host,
      port: port,
      database: database,
      username: username,
      password: password,
    );
    addTearDown(openingPool.close);
    const testDatabaseName = 'postgres_audit_trail_creator_test';

    // create database called events with user events
    // create table called users with columns id, name, email
    // create table called events with columns id, name, title,DateTime

    await openingPool.execute('''
DROP DATABASE if exists $testDatabaseName;
''');
    await openingPool.execute('''
CREATE DATABASE $testDatabaseName;
''');
    connectionPool = InnoConnectionPool(
      host: host,
      port: port,
      database: testDatabaseName,
      username: username,
      password: password,
    );
    addTearDown(connectionPool.close);
    await connectionPool.runTx(
      (c) async {
        await c.execute('''
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50)
);
''');
        await c.execute('''
CREATE TABLE events (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    title VARCHAR(50),
    date TIMESTAMP
);
''');
      },
    );
    creator = PostgresAuditTrailCreator(connection: connectionPool);
  });

  group('PostgresAuditTrailCreator', () {
    test('should be able to send a query to the database', () async {
      final result = await creator.query(
        'SELECT @1::INT',
        substitutionValues: {'1': 1},
      );
      result.fold((l) => throw l, (r) {
        expect(r, hasLength(1));
        expect(r.first[0], equals(1));
      });
    });

    test('should be able to scan tables', () async {
      final result = await creator.scanTables('public');
      result.fold((l) => throw l, (r) {
        final tables = r.groupByTableName();
        expect(tables, hasLength(2));
      });
    });

    test('can group tables by name', () async {
      final result = await creator.scanTables('public');
      result.fold((l) => throw l, (r) {
        final tables = r.groupByTableName();
        expect(tables, hasLength(2));
        final usersTable = tables.firstWhere((t) => t.name == 'users');
        expect(usersTable.columns, hasLength(3));
      });
    });
  });
}
