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
  late InnoConferenceDao innoConferenceDao;

  late InnoConferenceProvider innoConferenceProvider;
  late InnoConference innoConference;

  setUpAll(() {
    final pool = testConnectionPool();
    innoConferenceProviderDao = InnoConferenceProviderDao(connectionPool: pool);
    innoConferenceDao = InnoConferenceDao(connectionPool: pool);
  });

  setUp(() async {
    innoConferenceProvider = InnoConferenceProvider(
      id: faker.uuid(),
      title: faker.uuid(),
    );
    innoConferenceProvider = await innoConferenceProviderDao.insert(
      values: innoConferenceProvider.asDBMap(),
    );
    innoConference = InnoConference(
      id: faker.uuid(),
      title: faker.uuid(),
      provider: innoConferenceProvider,
      fields: [],
    );
    innoConference = await innoConferenceDao.insert(
      values: innoConference.asDBMap,
    );
  });

  tearDown(() async {
    await innoConferenceDao.delete(id: innoConference.id);
    await innoConferenceProviderDao.delete(id: innoConferenceProvider.id);
  });

  test('can add ', () async {
    expect(innoConference, isNotNull);
  });
  test('can delete ', () async {
    await innoConferenceDao.delete(id: innoConference.id);
    expect(
      () async => await innoConferenceDao.select(
        id: innoConference.id,
      ),
      throwsA(isA<PostgreSQLException>()),
    );
  });
  test('can update ', () async {
    final newTitle = faker.uuid();
    await innoConferenceDao.update(
      values: {
        InnoConferenceDao.columnTitle: newTitle,
      },
      id: innoConference.id,
    );
    final updated = await innoConferenceDao.select(
      id: innoConference.id,
    );
    expect(updated.title, equals(newTitle));
  });
  test('can select ', () async {
    final got = await innoConferenceDao.select(
      id: innoConference.id,
    );
    expect(got, innoConference);
  });
}
