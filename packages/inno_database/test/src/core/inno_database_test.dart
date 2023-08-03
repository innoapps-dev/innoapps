import 'package:inno_database/inno_database.dart';
import 'package:test/test.dart';

import '../../test_utils.dart';

void main() {
  late InnoConnectionPool connectionPool;

  setUpAll(() async {
    connectionPool = InnoConnectionPool.fromEnvironmentVariables(
      envFilePath: '.env',
    );
    // Logger.root.level = Level.ALL;
    // Logger.root.onRecord.listen((record) {
    //   print(record.message);
    // });
  });

  test('can connect to database', () async {
    final response = await connectionPool.query('SELECT 1');
    expect(response[0], equals([1]));
  });

  group('InnoDatabase', () {
    late TempUserDatabase innoUserDatabase;
    late TempEventsDatabase innoEventsDatabase;

    setUpAll(
      () {
        innoUserDatabase = TempUserDatabase(connectionPool: connectionPool);
        innoEventsDatabase = TempEventsDatabase(connectionPool: connectionPool);
      },
    );

    setUp(() async {
      await innoUserDatabase.setup();
      await innoEventsDatabase.setup();
    });

    tearDown(() async {
      await innoEventsDatabase.tearDown();
      await innoUserDatabase.tearDown();
    });

    test('can insert', () async {
      final values = {
        TempUserDatabase.columnFirstName: 'First Name',
        TempUserDatabase.columnLastName: 'Last Name',
        TempUserDatabase.columnEmail: 'u@gmail.com',
      };
      final result = await innoUserDatabase.insertQuerySingleKey(
        values: values,
        primaryKeyColumn: TempUserDatabase.columnId,
      );
      expect(result, isA<int>());
    });

    test('can run join query', () async {
      final result = await innoUserDatabase.joinAllQuery(
        otherTableSchema: 'public',
        otherTable: 'user_events',
        otherTableJoinColumn: 'user_id',
        otherTableColumns: innoEventsDatabase.columns,
        thisTableColumn: TempUserDatabase.columnId,
        orderByColumn: TempUserDatabase.columnId,
      );
      expect(result, isNotNull);
      final values = {
        TempUserDatabase.columnFirstName: 'First Name',
        TempUserDatabase.columnLastName: 'Last Name',
        TempUserDatabase.columnEmail: 'u@gmail.com',
      };
      final userId = await innoUserDatabase.insertQuerySingleKey(
        values: values,
        primaryKeyColumn: TempUserDatabase.columnId,
      );
      expect(userId, isA<int>());
      final eventValues = {
        TempEventsDatabase.columnUserId: userId,
        TempEventsDatabase.columnTitle: 'Title',
      };
      final eventId = await innoEventsDatabase.insertQuerySingleKey(
        values: eventValues,
        primaryKeyColumn: TempEventsDatabase.columnId,
      );
      expect(eventId, isA<int>());
      final result2 = await innoUserDatabase.joinAllQuery(
        otherTableSchema: 'public',
        otherTable: 'user_events',
        otherTableJoinColumn: 'user_id',
        otherTableColumns: innoEventsDatabase.columns,
        thisTableColumn: TempUserDatabase.columnId,
        orderByColumn: TempUserDatabase.columnId,
      );
      expect(result2, isNotEmpty);
      print(result2.first.toColumnMap());
    });

    test('can select greatorThan', () async {
      var result = await innoUserDatabase.selectGreaterThanQuery(
        filterColumn: TempUserDatabase.columnId,
        filterValue: 0,
        orderByColumn: TempUserDatabase.columnId,
      );
      expect(result, isEmpty);
      final values = {
        TempUserDatabase.columnFirstName: 'First Name',
        TempUserDatabase.columnLastName: 'Last Name',
        TempUserDatabase.columnEmail: 'u@gmail.com',
      };
      await innoUserDatabase.insertQuerySingleKey(
        values: values,
        primaryKeyColumn: TempUserDatabase.columnId,
      );
      result = await innoUserDatabase.selectGreaterThanQuery(
        filterColumn: TempUserDatabase.columnId,
        filterValue: 0,
        orderByColumn: TempUserDatabase.columnId,
      );
      expect(result, hasLength(1));
      final gotValues = result.first;
      final asMap = gotValues.toColumnMap();
      expect(asMap[TempUserDatabase.columnFirstName], 'First Name');
      expect(asMap[TempUserDatabase.columnLastName], 'Last Name');
      expect(asMap[TempUserDatabase.columnEmail], 'u@gmail.com');
    });

    test(
      'selectGreatorThanQuery returns values greator than DateTime',
      () async {
        final now = DateTime.now();
        final result = await innoUserDatabase.selectGreaterThanQuery(
          filterColumn: TempUserDatabase.columnCreatedAt,
          filterValue: now,
          orderByColumn: TempUserDatabase.columnId,
        );
        expect(result, isEmpty);
        final values = {
          TempUserDatabase.columnFirstName: 'First Name',
          TempUserDatabase.columnLastName: 'Last Name',
          TempUserDatabase.columnEmail: 'u@gmail.com',
        };
        await innoUserDatabase.insertQuerySingleKey(
          values: values,
          primaryKeyColumn: TempUserDatabase.columnId,
        );
        final result2 = await innoUserDatabase.selectGreaterThanQuery(
          filterColumn: TempUserDatabase.columnCreatedAt,
          filterValue: now.subtract(Duration(days: 1)),
          orderByColumn: TempUserDatabase.columnId,
        );
        expect(result2, hasLength(1));
        final gotValues = result2.first;
        final asMap = gotValues.toColumnMap();
        final secondInsertedAt = asMap[TempUserDatabase.columnCreatedAt];
        expect(secondInsertedAt, isA<DateTime>());
        expect(secondInsertedAt.isAfter(now), isTrue);
      },
    );

    test(
      'selectGreatorThanQuery returns values greator than int',
      () async {
        final result = await innoUserDatabase.selectGreaterThanQuery(
          filterColumn: TempUserDatabase.columnId,
          filterValue: 0,
          orderByColumn: TempUserDatabase.columnId,
        );
        expect(result, isEmpty);
        final values = {
          TempUserDatabase.columnFirstName: 'First Name',
          TempUserDatabase.columnLastName: 'Last Name',
          TempUserDatabase.columnEmail: 'u@gmail.com',
        };
        await innoUserDatabase.insertQuerySingleKey(
          values: values,
          primaryKeyColumn: TempUserDatabase.columnId,
        );
        final result2 = await innoUserDatabase.selectGreaterThanQuery(
          filterColumn: TempUserDatabase.columnId,
          filterValue: 0,
          orderByColumn: TempUserDatabase.columnId,
        );
        expect(result2, hasLength(1));
        final gotValues = result2.first;
        final asMap = gotValues.toColumnMap();
        final secondInsertedAt = asMap[TempUserDatabase.columnCreatedAt];
        expect(secondInsertedAt, isA<DateTime>());
      },
    );

    test(
      'selectLessThanQuery returns values greator than DateTime',
      () async {
        final now = DateTime(2023, 01, 01, 12, 12, 00).toUtc();
        final values = {
          TempUserDatabase.columnFirstName: 'First Name',
          TempUserDatabase.columnLastName: 'Last Name',
          TempUserDatabase.columnEmail: 'u@gmail.com',
          TempUserDatabase.columnCreatedAt: now,
        };
        await innoUserDatabase.insertQuerySingleKey(
          values: values,
          primaryKeyColumn: TempUserDatabase.columnId,
        );

        final result2 = await innoUserDatabase.selectLessThanQuery(
          filterColumn: TempUserDatabase.columnCreatedAt,
          filterValue: now.subtract(Duration(days: 1)),
          orderByColumn: TempUserDatabase.columnId,
        );
        expect(result2, hasLength(0));

        final lessThanNow = await innoUserDatabase.selectLessThanQuery(
          filterColumn: TempUserDatabase.columnCreatedAt,
          filterValue: now.add(Duration(days: 1)),
          orderByColumn: TempUserDatabase.columnId,
        );
        expect(lessThanNow, hasLength(1));
        final gotValues = lessThanNow.first;
        final asMap = gotValues.toColumnMap();
        final secondInsertedAt = asMap[TempUserDatabase.columnCreatedAt];
        expect(secondInsertedAt, isA<DateTime>());
        expect(secondInsertedAt, equals(now));
      },
    );

    test(
      'selectLessThanQuery returns values greator than specified int',
      () async {
        final now = DateTime(2023, 01, 01, 12, 12, 00).toUtc();
        final values = {
          TempUserDatabase.columnFirstName: 'FN1',
          TempUserDatabase.columnLastName: 'LN1',
          TempUserDatabase.columnEmail: 'u1@gmail.com',
          TempUserDatabase.columnCreatedAt: now,
        };

        await innoUserDatabase.insertQuerySingleKey(
          values: values,
          primaryKeyColumn: TempUserDatabase.columnId,
        );
        await innoUserDatabase.insertQuerySingleKey(
          values: {
            TempUserDatabase.columnFirstName: 'FN3',
            TempUserDatabase.columnLastName: 'LN3',
            TempUserDatabase.columnEmail: 'u3@gmail.com',
            TempUserDatabase.columnCreatedAt: now,
          },
          primaryKeyColumn: TempUserDatabase.columnId,
        );
        await innoUserDatabase.insertQuerySingleKey(
          values: {
            TempUserDatabase.columnFirstName: 'FN3',
            TempUserDatabase.columnLastName: 'LN3',
            TempUserDatabase.columnEmail: 'u3@gmail.com',
            TempUserDatabase.columnCreatedAt: now,
          },
          primaryKeyColumn: TempUserDatabase.columnId,
        );

        final result2 = await innoUserDatabase.selectLessThanQuery(
          filterColumn: TempUserDatabase.columnId,
          filterValue: 0,
          orderByColumn: TempUserDatabase.columnId,
        );
        expect(result2, hasLength(0));
        final lessThan3 = await innoUserDatabase.selectLessThanQuery(
          filterColumn: TempUserDatabase.columnId,
          filterValue: 3,
          orderByColumn: TempUserDatabase.columnId,
        );
        expect(lessThan3, hasLength(2));

        final lessThan2 = await innoUserDatabase.selectLessThanQuery(
          filterColumn: TempUserDatabase.columnId,
          filterValue: 2,
          orderByColumn: TempUserDatabase.columnId,
        );
        expect(lessThan2, hasLength(1));
        final ids = lessThan2
            .map((e) => e.toColumnMap())
            .map((e) => e[TempUserDatabase.columnId]);
        expect(ids, [1]);
      },
    );

    test('selectAllQuery', () async {
      final result = await innoUserDatabase.selectAllQuery(
        orderByColumn: TempUserDatabase.columnId,
      );
      expect(result, isNotNull);
      expect(result, hasLength(0));
    });

    (test('can get insertsStream', () async {
      final insertsStream =
          (await innoUserDatabase.insertsStream()).asBroadcastStream();
      final user1 = ('User 1', 'Last Name', 'user1@gmail.com');
      final user2 = ('User 2', 'Last Name', 'user2@gmail.com');
      final user3 = ('User 3', 'Last Name', 'user3@gmail.com');
      final users = [user1, user2, user3];

      final firstNameInserts = insertsStream
          .map((event) => event[TempUserDatabase.columnFirstName])
          .cast<String>()
          .asBroadcastStream();

      expect(
        firstNameInserts,
        emitsInOrder([user1.$1, user2.$1, user3.$1]),
      );

      for (var user in users) {
        await innoUserDatabase.insertQuerySingleKey(
          values: {
            TempUserDatabase.columnFirstName: user.$1,
            TempUserDatabase.columnLastName: user.$2,
            TempUserDatabase.columnEmail: user.$3,
          },
          primaryKeyColumn: TempUserDatabase.columnId,
        );
      }
    }));

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
      final user1UpdateStream = (await innoUserDatabase.rowUpdatesStream(
        id: user1Id,
      ))
          .map((event) => event[TempUserDatabase.columnFirstName])
          .cast<String>();
      final user2UpdateStream = (await innoUserDatabase.rowUpdatesStream(
        id: user2Id,
      ))
          .map((event) => event[TempUserDatabase.columnFirstName])
          .cast<String>();
      final user2ClondedUpdateStream = (await innoUserDatabase.rowUpdatesStream(
        id: user2Id,
      ))
          .map((event) => event[TempUserDatabase.columnFirstName])
          .cast<String>();
      expect(user1UpdateStream, emitsInOrder(['New Name']));
      expect(user2UpdateStream, emitsInOrder(['New Name2']));
      expect(user2ClondedUpdateStream, emitsInOrder(['New Name2']));
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
      final user1 = ('User 1', 'Last Name', 'user1@gmail.com');
      final user2 = ('User 2', 'Last Name', 'user2@gmail.com');
      final user3 = ('User 3', 'Last Name', 'user3@gmail.com');
      final users = [user1, user2, user3];

      final ids = [];

      for (var user in users) {
        ids.add(
          await innoUserDatabase.insertQuerySingleKey(
            values: {
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
  });
}
