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
}
