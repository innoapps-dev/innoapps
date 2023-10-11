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

import '../../test_utils.dart';

void main() {
  late InnoUserDao userDao;
  late InnoUser innoUser;
  late String uid;

  setUpAll(() {
    userDao = InnoUserDao(connectionPool: testConnectionPool());
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

  test('insert', () async {
    expect(innoUser, isNotNull);
  });

  test('selectAll', () async {
    List<InnoUser> innoUsers = await userDao.selectAll();
    expect(innoUsers.isEmpty, false);
  });

  test('select', () async {
    InnoUser innoUser = await userDao.select(id: uid);
    expect(innoUser.email, 'email@domain.com');
  });

  test('update > first Name', () async {
    final values = {
      InnoUserDao.columnFirstName: 'fn2',
    };

    final updatedUser = await userDao.update(values: values, id: uid);
    expect(updatedUser.firstName, 'fn2');
  });

  test('update phone number', () async {
    final newPhone = '+9 4567890';
    final values = {
      InnoUserDao.columnPhone: newPhone,
    };
    final updatedUser = await userDao.update(values: values, id: uid);
    expect(updatedUser.phone, equals(newPhone));
  });

  test('delete', () async {
    await userDao.delete(id: uid);

    expectLater(
      () async => await userDao.select(id: uid),
      throwsA(isA<PostgreSQLException>()),
    );
  });
}
