import 'package:dotenv/dotenv.dart';
import 'package:postgres_pool/postgres_pool.dart';

class InnoConnectionPool extends PgPool {
  InnoConnectionPool({
    required String host,
    required int port,
    required String database,
    required String username,
    required String password,
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
}
