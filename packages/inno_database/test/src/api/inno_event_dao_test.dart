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
