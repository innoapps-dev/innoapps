import 'package:inno_database/inno_database.dart';
import 'package:test/test.dart';

import 'test_utils.dart';

void main() async {
  late InnoConnectionPool connectionPool;

  setUpAll(() {
    connectionPool = testConnectionPool();
  });

  group('InnoFileDao', () {
    late InnoFile innoFile;
    late InnoFileDao fileDao;

    setUp(() async {
      fileDao = InnoFileDao(connectionPool: connectionPool);
      final values = {
        InnoFileDao.columnId: faker.uuid(),
        InnoFileDao.columnTitle: 'File Title',
        InnoFileDao.columnUrl: 'https://www.file.com/',
      };
      innoFile = await fileDao.insert(values: values);
    });

    tearDown(() async {
      await fileDao.delete(id: innoFile.id);
    });

    test('InnoFile > insert', () async {
      expect(innoFile.title, 'File Title');
    });

    test('InnoFile > select', () async {
      final got = await fileDao.select(id: innoFile.id);
      expect(got.title, innoFile.title);
    });

    test('InnoFile > update > title.', () async {
      final values = {
        InnoFileDao.columnTitle: 'File Title2',
      };

      final updated = await fileDao.update(values: values, id: innoFile.id);
      expect(updated.title, 'File Title2');
    });

    test('InnoFile > update > url', () async {
      final values = {
        InnoFileDao.columnUrl: 'https://www.file2.com/',
      };

      final updated = await fileDao.update(values: values, id: innoFile.id);
      expect(updated.url, 'https://www.file2.com/');
    });

    test('InnoFile > update > title and url', () async {
      final values = {
        InnoFileDao.columnTitle: 'File Title3',
        InnoFileDao.columnUrl: 'https://www.file3.com/',
      };

      final updated = await fileDao.update(values: values, id: innoFile.id);
      expect(updated.title, 'File Title3');
      expect(updated.url, 'https://www.file3.com/');
    });

    test('InnoFile > delete', () async {
      await fileDao.delete(id: innoFile.id);

      expect(
        () async => await fileDao.select(id: innoFile.id),
        throwsA(isA<PostgreSQLException>()),
      );
    });
  });

  group('InnoUserDao', () {
    late InnoUserDao userDao;
    late InnoUser innoUser;
    late String uid;

    setUpAll(() {
      userDao = InnoUserDao(connectionPool: connectionPool);
    });

    setUp(() async {
      uid = faker.uuid();
      final values = {
        InnoUserDao.columnUid: uid,
        InnoUserDao.columnFirstName: 'fn',
        InnoUserDao.columnLastName: 'ln',
        InnoUserDao.columnEmail: 'email@domain.com',
        InnoUserDao.columnMainRoleId: 'applicant',
      };

      innoUser = await userDao.insert(values: values);
      addTearDown(() async => await userDao.delete(id: uid));
    });

    tearDown(() async => await userDao.delete(id: uid));

    test('InnoUser > insert', () async {
      expect(innoUser, isNotNull);
    });

    test('InnoUser > selectAll', () async {
      List<InnoUser> innoUsers = await userDao.selectAll();
      print(innoUsers.length);
      expect(innoUsers.isEmpty, false);
    });

    test('InnoUser > select', () async {
      InnoUser innoUser = await userDao.select(id: uid);
      expect(innoUser.email, 'email@domain.com');
    });

    test('InnoUser > update > first Name', () async {
      final values = {
        InnoUserDao.columnFirstName: 'fn2',
      };

      InnoUser innoUser = await userDao.update(values: values, id: uid);
      expect(innoUser.firstName, 'fn2');
    });

    test('InnoUser > delete', () async {
      await userDao.delete(id: uid);

      expectLater(
        () async => await userDao.select(id: uid),
        throwsA(isA<PostgreSQLException>()),
      );
    });
  });
}
