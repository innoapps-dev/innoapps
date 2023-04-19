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
    setUpAll(() async {
      fileDao = InnoFileDao(connectionPool: connectionPool);
      final values = {
        InnoFileDao.columnId: 'test_id',
        InnoFileDao.columnTitle: 'File Title',
        InnoFileDao.columnUrl: 'https://www.file.com/',
      };

      innoFile = await fileDao.insert(values: values);
    });
    test('InnoFile > insert', () async {
      addTearDown(() => fileDao.delete(id: innoFile.id));
      expect(innoFile.title, 'File Title');
    });
    test('InnoFile > select', () async {
      InnoFile innoFile = await fileDao.select(id: 'test_id');
      expect(innoFile.title, 'File Title');
    });

    test('InnoFile > update > title.', () async {
      final values = {
        InnoFileDao.columnTitle: 'File Title2',
      };

      InnoFile innoFile = await fileDao.update(values: values, id: 'test_id');
      expect(innoFile.title, 'File Title2');
    });

    test('InnoFile > update > url', () async {
      final values = {
        InnoFileDao.columnUrl: 'https://www.file2.com/',
      };

      InnoFile innoFile = await fileDao.update(values: values, id: 'test_id');
      expect(innoFile.url, 'https://www.file2.com/');
    });

    test('InnoFile > update > title and url', () async {
      final values = {
        InnoFileDao.columnTitle: 'File Title3',
        InnoFileDao.columnUrl: 'https://www.file3.com/',
      };

      InnoFile innoFile = await fileDao.update(values: values, id: 'test_id');
      expect(innoFile.title, 'File Title3');
      expect(innoFile.url, 'https://www.file3.com/');
    });

    test('InnoFile > delete', () async {
      await fileDao.delete(id: 'test_id');

      InnoFile innoFile = await fileDao.select(id: 'test_id');

      expect(innoFile,
          null); // TODO: How to test a delete function? > add an catch exception
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
      uid = 'test_uid';
      final values = {
        InnoUserDao.columnUid: uid,
        InnoUserDao.columnFirstName: 'fn',
        InnoUserDao.columnLastName: 'ln',
        InnoUserDao.columnEmail: 'email@domain.com',
      };

      innoUser = await userDao.insert(values: values);
      addTearDown(() async => await userDao.delete(id: uid));
    });

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
        () => userDao.select(id: uid),
        completion(throwsA(isA<Exception>)),
      );

      // expect(innoFile, null);// TODO: How to test a delete function?
    });
  });
}
