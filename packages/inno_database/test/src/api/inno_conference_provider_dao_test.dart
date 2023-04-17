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
