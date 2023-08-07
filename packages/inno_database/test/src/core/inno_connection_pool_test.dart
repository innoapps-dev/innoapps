import 'package:inno_database/inno_database.dart';
import 'package:test/test.dart';

void main() {
  test('can get v3ConnectionPool locally', () async {
    final result = InnoConnectionPool.fromEnvironmentVariables(
      envFilePath: '.env.local',
    );
    expect(result, isNotNull);
    final v3ConnectionPool = await result.v3ConnectionPool();
    expect(v3ConnectionPool, isNotNull);
  });

  test('can get v3ConnectionPool for cloud run', () async {
    final result = InnoConnectionPool.fromEnvironmentVariables(
      envFilePath: '.env.cloudrun',
    );
    expect(result, isNotNull);
    final v3ConnectionPool = await result.v3ConnectionPool();
    expect(v3ConnectionPool, isNotNull);
    result.close();
  });
}
