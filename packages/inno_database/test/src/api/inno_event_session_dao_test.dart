import 'package:inno_database/inno_database.dart';
import 'package:test/test.dart';

import '../../test_utils.dart';

void main() {
  late InnoEventSession eventSession;
  late InnoEvent event;

  late InnoEventSessionDao eventSessionDao;
  late InnoEventDao eventDao;

  late DateTime startTime;
  late DateTime endTime;

  setUpAll(() {
    eventSessionDao = InnoEventSessionDao(
      connectionPool: testConnectionPool(),
    );
    eventDao = InnoEventDao(
      connectionPool: testConnectionPool(),
    );
    // Logger.root.onRecord.listen((e) => log(e.toString()));
  });

  setUp(() async {
    event = InnoEvent(
      id: faker.uuid(),
      title: faker.uuid(),
    );
    event = await eventDao.insert(
      values: event.asDbMap(),
    );
    startTime = DateTime.utc(2023, 1, 10, 19, 5, 4);
    // startTime = DateTime.now().toUtc();
    endTime = startTime.add(Duration(hours: 1));
    eventSession = InnoEventSession(
      id: faker.uuid(),
      title: faker.uuid(),
      description: faker.string(),
      eventId: event.id,
      startDateTime: startTime,
      endDateTime: endTime,
      conferences: [],
      links: [],
      texts: [],
    );
    eventSession = await eventSessionDao.insert(
      values: eventSession.asDbMap(eventId: event.id),
    );
  });

  tearDown(() async {
    await eventSessionDao.delete(id: eventSession.id);
    await eventDao.delete(id: event.id);
  });

  test('can add ', () async {
    expect(eventSession, isNotNull);
    expect(eventSession.startDateTime.isUtc, isTrue);
    expect(eventSession.endDateTime.isUtc, isTrue);

    expect(eventSession.endDateTime.hour, endTime.hour);
    expect(eventSession.endDateTime.second, endTime.second);
    expect(eventSession.endDateTime.minute, endTime.minute);

    print(startTime.asTime);
  });
  test('can delete ', () async {
    await eventSessionDao.delete(id: eventSession.id);
    expect(
      () async => await eventSessionDao.select(
        id: eventSession.id,
      ),
      throwsA(isA<PostgreSQLException>()),
    );
  });
  test('can update ', () async {
    final newTitle = faker.uuid();
    await eventSessionDao.update(
      values: {
        InnoEventSessionDao.columnTitle: newTitle,
      },
      id: eventSession.id,
    );
    final updated = await eventSessionDao.select(
      id: eventSession.id,
    );
    expect(updated.title, equals(newTitle));
  });
  test('can select ', () async {
    final got = await eventSessionDao.select(
      id: eventSession.id,
    );
    expect(got, isNotNull);
  });
}
