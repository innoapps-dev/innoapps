import 'package:inno_database/inno_database.dart';
import 'package:inno_database/src/api/inno_conference_provider_dao.dart';
import 'package:test/test.dart';

import '../../test_utils.dart';

void main() {
  late InnoConferenceFieldDao innoConferenceProviderDao;
  late InnoConferenceField innoConferenceField;

  setUpAll(() {
    innoConferenceProviderDao = InnoConferenceFieldDao(
      connectionPool: testConnectionPool(),
    );
  });

  setUp(() async {
    innoConferenceField = InnoConferenceField(
      id: faker.uuid(),
      title: faker.uuid(),
      conferenceId: faker.uuid(),
      value: faker.uuid(),
    );
    innoConferenceField = await innoConferenceProviderDao.insert(
      // values: innoConferenceField.asDBMap(),
      values: {},
    );
  });

  tearDown(() async {
    await innoConferenceProviderDao.delete(id: innoConferenceField.id);
  });

  test('can add ', () async {
    expect(innoConferenceField, isNotNull);
  });
  test('can delete ', () async {
    await innoConferenceProviderDao.delete(id: innoConferenceField.id);
    expect(
      () async => await innoConferenceProviderDao.select(
        id: innoConferenceField.id,
      ),
      throwsA(isA<PostgreSQLException>()),
    );
  });
  test('can update ', () async {
    final newTitle = faker.uuid();
    await innoConferenceProviderDao.update(
      values: {
        InnoConferenceFieldDao.columnTitle: newTitle,
      },
      id: innoConferenceField.id,
    );
    final updated = await innoConferenceProviderDao.select(
      id: innoConferenceField.id,
    );
    expect(updated.title, equals(newTitle));
  });
  test('can select ', () async {
    final got = await innoConferenceProviderDao.select(
      id: innoConferenceField.id,
    );
    expect(got, innoConferenceField);
  });
}
