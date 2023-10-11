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

import '../../test_utils.dart';

void main() {
  late InnoConferenceProviderDao innoConferenceProviderDao;
  late InnoConferenceProvider innoConferenceProvider;

  setUpAll(() {
    innoConferenceProviderDao = InnoConferenceProviderDao(
      connectionPool: testConnectionPool(),
    );
  });

  setUp(() async {
    innoConferenceProvider = InnoConferenceProvider(
      id: faker.uuid(),
      title: faker.uuid(),
    );
    innoConferenceProvider = await innoConferenceProviderDao.insert(
      values: innoConferenceProvider.asDBMap(),
    );
  });

  tearDown(() async {
    await innoConferenceProviderDao.delete(id: innoConferenceProvider.id);
  });

  test('can add ', () async {
    expect(innoConferenceProvider, isNotNull);
  });
  test('can delete ', () async {
    await innoConferenceProviderDao.delete(id: innoConferenceProvider.id);
    expect(
      () async => await innoConferenceProviderDao.select(
        id: innoConferenceProvider.id,
      ),
      throwsA(isA<PostgreSQLException>()),
    );
  });
  test('can update ', () async {
    final newTitle = faker.uuid();
    await innoConferenceProviderDao.update(
      values: {
        InnoConferenceProviderDao.columnTitle: newTitle,
      },
      id: innoConferenceProvider.id,
    );
    final updated = await innoConferenceProviderDao.select(
      id: innoConferenceProvider.id,
    );
    expect(updated.title, equals(newTitle));
  });
  test('can select ', () async {
    final got = await innoConferenceProviderDao.select(
      id: innoConferenceProvider.id,
    );
    expect(got, innoConferenceProvider);
  });
}
