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
  late TempUserDatabase innoUserDatabase;

  late InnoConnectionPool connectionPool;

  setUpAll(() async {
    connectionPool = InnoConnectionPool.fromEnvironmentVariables(
      envFilePath: '.env.local',
    );
    innoUserDatabase = TempUserDatabase(connectionPool: connectionPool);
    // Logger.root.level = Level.ALL;
    // Logger.root.onRecord.listen((record) {
    //   print(record.message);
    // });
  });

  setUp(() async {
    await innoUserDatabase.setup();
    addTearDown(() => innoUserDatabase.tearDown());
  });

  test('can get insertsStream', () async {
    final insertsStream = (await innoUserDatabase.insertsStream());
    final user1 = (faker.uuid(), 'User 1', 'Last Name', 'user1@gmail.com');
    final user2 = (faker.uuid(), 'User 2', 'Last Name', 'user2@gmail.com');
    final user3 = (faker.uuid(), 'User 3', 'Last Name', 'user3@gmail.com');
    final users = [user1, user2, user3];

    final firstNameInserts = insertsStream
        .map((event) => event[TempUserDatabase.columnFirstName])
        .cast<String>();

    expect(firstNameInserts.isBroadcast, equals(true));

    expect(
      firstNameInserts,
      emitsInOrder([user1.$2, user2.$2, user3.$2]),
    );

    for (var user in users) {
      await innoUserDatabase.insertQuerySingleKey(
        values: {
          TempUserDatabase.columnId: user.$1,
          TempUserDatabase.columnFirstName: user.$2,
          TempUserDatabase.columnLastName: user.$3,
          TempUserDatabase.columnEmail: user.$4,
        },
        primaryKeyColumn: TempUserDatabase.columnId,
      );
    }
  });

  test('can get rowUpdatesStream', () async {
    final user1 = (faker.uuid(), 'User 1', 'Last Name', 'user1@gmail.com');
    final user2 = (faker.uuid(), 'User 2', 'Last Name', 'user2@gmail.com');
    final user1Id = await innoUserDatabase.insertQuerySingleKey(
      values: {
        TempUserDatabase.columnFirstName: user1.$1,
        TempUserDatabase.columnId: user1.$1,
        TempUserDatabase.columnLastName: user1.$2,
        TempUserDatabase.columnEmail: user1.$3,
      },
      primaryKeyColumn: TempUserDatabase.columnId,
    );
    final user2Id = await innoUserDatabase.insertQuerySingleKey(
      values: {
        TempUserDatabase.columnFirstName: user2.$1,
        TempUserDatabase.columnId: user2.$1,
        TempUserDatabase.columnLastName: user2.$2,
        TempUserDatabase.columnEmail: user2.$3,
      },
      primaryKeyColumn: TempUserDatabase.columnId,
    );
    final user1UpdateStream = await innoUserDatabase.selectQuerySingleKeyStream(
      id: user1Id,
    );
    final user2UpdateStream = await innoUserDatabase.selectQuerySingleKeyStream(
      id: user2Id,
    );
    final duplicateUser2Stream =
        await innoUserDatabase.selectQuerySingleKeyStream(id: user2Id);

    final user1FirstNameUpdateStream = user1UpdateStream
        .map((event) => event[TempUserDatabase.columnFirstName]);
    final user2FirstNameUpdateStream = user2UpdateStream
        .map((event) => event[TempUserDatabase.columnFirstName]);
    final user2ClondedFirstNameUpdateStream = duplicateUser2Stream
        .map((event) => event[TempUserDatabase.columnFirstName]);

    expect(user1FirstNameUpdateStream, emitsInOrder(['New Name']));
    expect(user2FirstNameUpdateStream, emitsInOrder(['New Name2']));
    expect(user2ClondedFirstNameUpdateStream, emitsInOrder(['New Name2']));
    await innoUserDatabase.update(
      values: {
        TempUserDatabase.columnFirstName: 'New Name',
      },
      id: '$user1Id',
    );
    await innoUserDatabase.update(
      values: {
        TempUserDatabase.columnFirstName: 'New Name2',
      },
      id: '$user2Id',
    );
  });

  test('can get rowDeletesStream', () async {
    final userDeletesStream = await innoUserDatabase.deletesStream();
    final user1 = (faker.uuid(), 'User 1', 'Last Name', 'user1@gmail.com');
    final user2 = (faker.uuid(), 'User 2', 'Last Name', 'user2@gmail.com');
    final user3 = (faker.uuid(), 'User 3', 'Last Name', 'user3@gmail.com');
    final users = [user1, user2, user3];

    final ids = [];

    for (var user in users) {
      ids.add(
        await innoUserDatabase.insertQuerySingleKey(
          values: {
            TempUserDatabase.columnId: user.$1,
            TempUserDatabase.columnFirstName: user.$1,
            TempUserDatabase.columnLastName: user.$2,
            TempUserDatabase.columnEmail: user.$3,
          },
          primaryKeyColumn: TempUserDatabase.columnId,
        ),
      );
    }
    final idsReversed = ids.reversed.toList();

    expect(
      userDeletesStream,
      emitsInOrder(idsReversed.map((e) => '$e')),
    );
    for (var id in idsReversed) {
      await innoUserDatabase.delete(id: '$id');
    }
  });

  test('can listen to selectByQueryStream', () async {
    final userDeletesStream = await innoUserDatabase.selectByQueryStream(
      filterColumn: TempUserDatabase.columnFirstName,
      filterValue: 'User 1',
      orderByColumn: TempUserDatabase.columnFirstName,
    );
    final mapped = userDeletesStream.map(
      (event) => event.map(
        (e) => e[TempUserDatabase.columnEmail],
      ),
    );
    mapped.listen((event) {
      print(event);
    });
    final user1 = (faker.uuid(), 'User 1', 'Last Name', 'user1@gmail.com');
    final user2 = (faker.uuid(), 'User 2', 'Last Name', 'user2@gmail.com');
    final user3 = (faker.uuid(), 'User 3', 'Last Name', 'user3@gmail.com');
    final user4 = (faker.uuid(), 'User 1', 'Last Name', 'user4@gmail.com');

    final users = [user1, user2, user3, user4];
    // expect(
    //   mapped,
    //   emitsInOrder([
    //     ['user1@gmail.com'],
    //     ['user1@gmail.com', 'user4@gmail.com']
    //   ]),
    // );
    for (var user in users) {
      final resp = await innoUserDatabase.insertQuerySingleKey(
        values: {
          TempUserDatabase.columnId: user.$1,
          TempUserDatabase.columnFirstName: user.$2,
          TempUserDatabase.columnLastName: user.$3,
          TempUserDatabase.columnEmail: user.$4,
        },
        primaryKeyColumn: TempUserDatabase.columnId,
      );
      await Future.delayed(Duration(seconds: 1));
      print(resp);
    }
  });
}
