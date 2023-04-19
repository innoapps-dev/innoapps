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
    await innoConferenceProviderDao.delete(id: innoConferenceProvider.id);
    await innoConferenceDao.delete(id: innoConference.id);
  });

  test('can add ', () async {
    expect(innoConference, isNotNull);
  });
  test('can delete ', () async {
    await innoConferenceProviderDao.delete(id: innoConference.id);
    expect(
      () async => await innoConferenceProviderDao.select(
        id: innoConference.id,
      ),
      throwsA(isA<PostgreSQLException>()),
    );
  });
  test('can update ', () async {
    final newTitle = faker.uuid();
    await innoConferenceProviderDao.update(
      values: {
        InnoConferenceDao.columnTitle: newTitle,
      },
      id: innoConference.id,
    );
    final updated = await innoConferenceProviderDao.select(
      id: innoConference.id,
    );
    expect(updated.title, equals(newTitle));
  });
  test('can select ', () async {
    final got = await innoConferenceProviderDao.select(
      id: innoConference.id,
    );
    expect(got, innoConference);
  });
}
