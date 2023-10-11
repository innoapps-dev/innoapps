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

import 'package:inno_database/inno_database.dart';
import 'package:test/test.dart';

void main() {
  test('can get v3ConnectionPool locally', () async {
    final result = InnoConnectionPool.fromEnvironmentVariables(
      envFilePath: '.env.local',
    );
    expect(result, isNotNull);
    final v3ConnectionPool = await result.v3PgConnection();
    expect(v3ConnectionPool, isNotNull);
  });

  test('can get v3ConnectionPool for cloud run', () async {
    final result = InnoConnectionPool.fromEnvironmentVariables(
      envFilePath: '.env.cloudrun',
    );
    expect(result, isNotNull);
    final v3ConnectionPool = await result.v3PgConnection();
    expect(v3ConnectionPool, isNotNull);
    result.close();
  });
}
