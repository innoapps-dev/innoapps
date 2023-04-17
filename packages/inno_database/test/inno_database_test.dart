import 'package:inno_database/inno_database.dart';
import 'package:test/test.dart';

import 'test_utils.dart';

void main() async {
  late InnoConnectionPool connectionPool;
  setUpAll(() async {
    connectionPool = testConnectionPool();
  });

  // Inno File
  test('InnoFile > insert', () async {
    InnoFileDao fileDao = InnoFileDao(connectionPool: connectionPool);
    final values = {
      InnoFileDao.columnId: 'test_id',
      InnoFileDao.columnTitle: 'File Title',
      InnoFileDao.columnUrl: 'https://www.file.com/',
    };

    InnoFile innoFile = await fileDao.insert(values: values);
    expect(innoFile.title, 'File Title');
  });
  test('InnoFile > select', () async {
    InnoFileDao fileDao = InnoFileDao(connectionPool: connectionPool);
    InnoFile innoFile = await fileDao.select(id: 'test_id');
    expect(innoFile.title, 'File Title');
  });

  test('InnoFile > update > title.', () async {
    InnoFileDao fileDao = InnoFileDao(connectionPool: connectionPool);
    final values = {
      InnoFileDao.columnTitle: 'File Title2',
    };

    InnoFile innoFile = await fileDao.update(values: values, id: 'test_id');
    expect(innoFile.title, 'File Title2');
  });

  test('InnoFile > update > url', () async {
    InnoFileDao fileDao = InnoFileDao(connectionPool: connectionPool);
    final values = {
      InnoFileDao.columnUrl: 'https://www.file2.com/',
    };

    InnoFile innoFile = await fileDao.update(values: values, id: 'test_id');
    expect(innoFile.url, 'https://www.file2.com/');
  });

  test('InnoFile > update > title and url', () async {
    InnoFileDao fileDao = InnoFileDao(connectionPool: connectionPool);
    final values = {
      InnoFileDao.columnTitle: 'File Title3',
      InnoFileDao.columnUrl: 'https://www.file3.com/',
    };

    InnoFile innoFile = await fileDao.update(values: values, id: 'test_id');
    expect(innoFile.title, 'File Title3');
    expect(innoFile.url, 'https://www.file3.com/');
  });

  test('InnoFile > delete', () async {
    InnoFileDao fileDao = InnoFileDao(connectionPool: connectionPool);

    await fileDao.delete(id: 'test_id');

    InnoFile innoFile = await fileDao.select(id: 'test_id');

    expect(innoFile,
        null); // TODO: How to test a delete function? > add an catch exception
  });

  // Inno User
  test('InnoUser > insert', () async {
    InnoUserDao userDao = InnoUserDao(connectionPool: connectionPool);
    final values = {
      InnoUserDao.columnUid: 'test_uid',
      InnoUserDao.columnFirstName: 'fn',
      InnoUserDao.columnLastName: 'ln',
      InnoUserDao.columnEmail: 'email@domain.com',
    };

    String returnId = await userDao.insertQuerySingleKey(
        values: values, primaryKeyColumn: InnoUserDao.columnUid);
    expect(returnId, 'test_uid');
  });

  test('InnoUser > selectAll', () async {
    InnoUserDao userDao = InnoUserDao(connectionPool: connectionPool);
    List<InnoUser> innoUsers = await userDao.selectAll();
    print(innoUsers.length);
    expect(innoUsers.isEmpty, false);
  });

  test('InnoUser > select', () async {
    InnoUserDao userDao = InnoUserDao(connectionPool: connectionPool);
    InnoUser innoUser = await userDao.select(id: 'test_uid');
    expect(innoUser.email, 'email@domain.com');
  });

  test('InnoUser > update > first Name', () async {
    InnoUserDao userDao = InnoUserDao(connectionPool: connectionPool);
    final values = {
      InnoUserDao.columnFirstName: 'fn2',
    };

    InnoUser innoUser = await userDao.update(values: values, id: 'test_uid');
    expect(innoUser.firstName, 'fn2');
  });

  test('InnoUser > delete', () async {
    InnoUserDao userDao = InnoUserDao(connectionPool: connectionPool);

    await userDao.delete(id: 'test_uid');

    // expect(innoFile, null);// TODO: How to test a delete function?
  });
}
