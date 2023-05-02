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
