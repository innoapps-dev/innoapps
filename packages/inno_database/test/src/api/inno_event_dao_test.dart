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
import 'package:inno_database/src/api/inno_event_dao.dart';
import 'package:test/test.dart';

import '../../test_utils.dart';

void main() {
  late InnoEventDao eventDao;
  late InnoEvent event;

  setUpAll(() {
    eventDao = InnoEventDao(
      connectionPool: testConnectionPool(),
    );
  });

  setUp(() async {
    event = InnoEvent(
      id: faker.uuid(),
      title: faker.uuid(),
    );
    event = await eventDao.insert(
      values: event.asDbMap(),
    );
  });

  tearDown(() async {
    await eventDao.delete(id: event.id);
  });

  test('can add ', () async {
    expect(event, isNotNull);
  });
  test('can delete ', () async {
    await eventDao.delete(id: event.id);
    expect(
      () async => await eventDao.select(
        id: event.id,
      ),
      throwsA(isA<PostgreSQLException>()),
    );
  });
  test('can update ', () async {
    final newTitle = faker.uuid();
    await eventDao.update(
      values: {
        InnoEventDao.columnTitle: newTitle,
      },
      id: event.id,
    );
    final updated = await eventDao.select(
      id: event.id,
    );
    expect(updated.title, equals(newTitle));
  });
  test('can select ', () async {
    final got = await eventDao.select(
      id: event.id,
    );
    expect(got, event);
  });
}
