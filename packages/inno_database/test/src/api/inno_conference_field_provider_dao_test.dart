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
  late InnoConferenceFieldDao innoConferenceFieldDao;
  late InnoConferenceProviderDao innoConferenceProviderDao;
  late InnoConferenceProvider innoConferenceProvider;

  late InnoConferenceField innoConferenceField;

  late InnoConferenceDao innoConferenceDao;

  late InnoConference innoConference;

  setUpAll(() {
    final pool = testConnectionPool();
    innoConferenceDao = InnoConferenceDao(connectionPool: pool);
    innoConferenceProviderDao = InnoConferenceProviderDao(
      connectionPool: pool,
    );
    innoConferenceFieldDao = InnoConferenceFieldDao(
      connectionPool: pool,
    );
  });

  setUp(() async {
    innoConferenceProvider = InnoConferenceProvider(
      id: faker.uuid(), // zoom1
      title: faker.uuid(), // Zoom1
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

    innoConferenceField = InnoConferenceField(
      id: faker.uuid(),
      title: faker.uuid(),
      conferenceId: innoConference.id,
      value: faker.uuid(),
    );

    innoConferenceField = await innoConferenceFieldDao.insert(
      values: {
        InnoConferenceFieldDao.columnId: innoConferenceField.id,
        InnoConferenceFieldDao.columnTitle: innoConferenceField.title,
        InnoConferenceFieldDao.columnValue: innoConferenceField.value,
        InnoConferenceFieldDao.columnConferenceId:
            innoConferenceField.conferenceId,
      },
    );
  });

  tearDown(() async {
    await innoConferenceFieldDao.delete(id: innoConferenceField.id);
    await innoConferenceDao.delete(id: innoConference.id);
    await innoConferenceProviderDao.delete(id: innoConferenceProvider.id);
  });

  test('can add ', () async {
    expect(innoConferenceField, isNotNull);
  });
  test('can delete ', () async {
    await innoConferenceFieldDao.delete(id: innoConferenceField.id);
    expect(
      () async => await innoConferenceFieldDao.select(
        id: innoConferenceField.id,
      ),
      throwsA(isA<PostgreSQLException>()),
    );
  });
  test('can update ', () async {
    final newTitle = faker.uuid();
    await innoConferenceFieldDao.update(
      values: {
        InnoConferenceFieldDao.columnTitle: newTitle,
      },
      id: innoConferenceField.id,
    );
    final updated = await innoConferenceFieldDao.select(
      id: innoConferenceField.id,
    );
    expect(updated.title, equals(newTitle));
  });
  test('can select ', () async {
    final got = await innoConferenceFieldDao.select(
      id: innoConferenceField.id,
    );
    expect(got, innoConferenceField);
  });
}
