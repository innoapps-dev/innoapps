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

import 'dart:async';

import 'package:dotenv/dotenv.dart';
import 'package:postgres_pool/postgres_pool.dart';
import 'package:postgres/postgres_v3_experimental.dart' as v3;

class InnoConnectionPool extends PgPool {
  InnoConnectionPool({
    required this.host,
    required this.port,
    required this.database,
    required this.username,
    required this.password,
  }) : super(
          PgEndpoint(
            host: host,
            port: port,
            database: database,
            username: username,
            password: password,
          ),
          settings: PgPoolSettings()
            ..maxConnectionAge = Duration(hours: 1)
            ..concurrency = 4,
        );
  final String host;
  final int port;
  final String database;
  final String username;
  final String password;

  // static final conn = PostgreSQLConnection(ip, 5432, database,
  //     username: username, password: password);

  // static final connectionPool = PgPool(
  //   PgEndpoint(
  //     host: ip,
  //     port: port,
  //     database: database,
  //     username: username,
  //     password: password,
  //   ),
  //   settings: PgPoolSettings()
  //     ..maxConnectionAge = Duration(hours: 1)
  //     ..concurrency = 4,
  // );
  factory InnoConnectionPool.fromEnvironmentVariables({
    String? envFilePath,
  }) {
    var env = DotEnv(includePlatformEnvironment: true)
      ..load(envFilePath == null ? [] : [envFilePath]);
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

    return InnoConnectionPool(
      host: host,
      port: port,
      database: database,
      username: username,
      password: password,
    );
  }

  Future<v3.PgConnection> v3PgConnection({
    bool allowCleartextPassword = false,
    bool isUnixSocket = false,
    bool requireSsl = false,
    Duration timeout = const Duration(seconds: 30),
    Duration connectionTimeout = const Duration(seconds: 30),
  }) {
    return v3.PgConnection.open(
      v3.PgEndpoint(
        database: database,
        host: host,
        password: password,
        port: port,
        username: username,
        allowCleartextPassword: allowCleartextPassword,
        isUnixSocket: isUnixSocket,
        requireSsl: requireSsl,
      ),
      sessionSettings: v3.PgSessionSettings(
        onBadSslCertificate: (p0) {
          return true;
        },
        connectTimeout: Duration(hours: 1),
      ),
    );
  }

  v3.PgPool get v3Pool {
    return v3.PgPool(
      [
        v3.PgEndpoint(
          database: database,
          host: host,
          password: password,
          port: port,
          username: username,
        )
      ],
      sessionSettings: v3.PgSessionSettings(
        onBadSslCertificate: (p0) {
          return true;
        },
        connectTimeout: Duration(seconds: 5),
        // transformer: StreamChannelTransformer<BaseMessage, BaseMessage>(
        //   StreamTransformer.fromHandlers(
        //     handleData: (msg, sink) {
        //       print(msg);
        //       sink.add(msg);
        //     },
        //   ),
        //   StreamSinkTransformer.fromHandlers(handleData: (msg, sink) {
        //     print(msg);
        //     sink.add(msg);
        //   }),
        // ),
      ),
    );
  }
}

// class V3ConnectionPool extends v3.PgPool {
  
// }
