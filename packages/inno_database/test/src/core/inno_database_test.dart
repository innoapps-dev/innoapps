import 'package:inno_database/inno_database.dart';
import 'package:logging/logging.dart';
import 'package:test/test.dart';

void main() {
  late InnoConnectionPool connectionPool;

  setUpAll(() async {
    connectionPool = InnoConnectionPool.fromEnvironmentVariables(
      envFilePath: '.env',
    );
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((record) {
      print(record.message);
    });
  });

  test('can connect to database', () async {
    final response = await connectionPool.query('SELECT 1');
    expect(response[0], equals([1]));
  });

  group('InnoDatabase', () {
    late TempUserDatabase innoDatabase;

    setUpAll(
      () => innoDatabase = TempUserDatabase(connectionPool: connectionPool),
    );

    setUp(() async {
      final response = await connectionPool.execute(
        '''
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  email TEXT NOT NULL,
  phone TEXT NULL,
  main_role_id TEXT NULL,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NULL
);''',
      );
      expect(response, equals(0));
    });

    tearDown(() async {
      await connectionPool.execute('''DROP TABLE users;''');
    });

    test('can insert', () async {
      final values = {
        TempUserDatabase.columnFirstName: 'First Name',
        TempUserDatabase.columnLastName: 'Last Name',
        TempUserDatabase.columnEmail: 'u@gmail.com',
      };
      final result = await innoDatabase.insertQuerySingleKey(
        values: values,
        primaryKeyColumn: TempUserDatabase.columnId,
      );
      expect(result, isA<int>());
    });

    test('can select greatorThan', () async {
      var result = await innoDatabase.selectGreaterThanQuery(
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
      await innoDatabase.insertQuerySingleKey(
        values: values,
        primaryKeyColumn: TempUserDatabase.columnId,
      );
      result = await innoDatabase.selectGreaterThanQuery(
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
        final result = await innoDatabase.selectGreaterThanQuery(
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
        await innoDatabase.insertQuerySingleKey(
          values: values,
          primaryKeyColumn: TempUserDatabase.columnId,
        );
        final result2 = await innoDatabase.selectGreaterThanQuery(
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
        final result = await innoDatabase.selectGreaterThanQuery(
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
        await innoDatabase.insertQuerySingleKey(
          values: values,
          primaryKeyColumn: TempUserDatabase.columnId,
        );
        final result2 = await innoDatabase.selectGreaterThanQuery(
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
        await innoDatabase.insertQuerySingleKey(
          values: values,
          primaryKeyColumn: TempUserDatabase.columnId,
        );

        final result2 = await innoDatabase.selectLessThanQuery(
          filterColumn: TempUserDatabase.columnCreatedAt,
          filterValue: now.subtract(Duration(days: 1)),
          orderByColumn: TempUserDatabase.columnId,
        );
        expect(result2, hasLength(0));

        final lessThanNow = await innoDatabase.selectLessThanQuery(
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

        await innoDatabase.insertQuerySingleKey(
          values: values,
          primaryKeyColumn: TempUserDatabase.columnId,
        );
        await innoDatabase.insertQuerySingleKey(
          values: {
            TempUserDatabase.columnFirstName: 'FN3',
            TempUserDatabase.columnLastName: 'LN3',
            TempUserDatabase.columnEmail: 'u3@gmail.com',
            TempUserDatabase.columnCreatedAt: now,
          },
          primaryKeyColumn: TempUserDatabase.columnId,
        );
        await innoDatabase.insertQuerySingleKey(
          values: {
            TempUserDatabase.columnFirstName: 'FN3',
            TempUserDatabase.columnLastName: 'LN3',
            TempUserDatabase.columnEmail: 'u3@gmail.com',
            TempUserDatabase.columnCreatedAt: now,
          },
          primaryKeyColumn: TempUserDatabase.columnId,
        );

        final result2 = await innoDatabase.selectLessThanQuery(
          filterColumn: TempUserDatabase.columnId,
          filterValue: 0,
          orderByColumn: TempUserDatabase.columnId,
        );
        expect(result2, hasLength(0));
        final lessThan3 = await innoDatabase.selectLessThanQuery(
          filterColumn: TempUserDatabase.columnId,
          filterValue: 3,
          orderByColumn: TempUserDatabase.columnId,
        );
        expect(lessThan3, hasLength(2));

        final lessThan2 = await innoDatabase.selectLessThanQuery(
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
      final result = await innoDatabase.selectAllQuery(
        orderByColumn: TempUserDatabase.columnId,
      );
      expect(result, isNotNull);
      expect(result, hasLength(0));
    });
  });
}

class TempUserDatabase extends InnoDatabase {
  TempUserDatabase({required super.connectionPool});

  static String get columnId => 'id';
  static String get columnFirstName => 'first_name';
  static String get columnLastName => 'last_name';
  static String get columnEmail => 'email';
  static String get columnPhone => 'phone';
  static String get columnMainRoleId => 'main_role_id';
  static String get columnCreatedAt => 'created_at';
  static String get columnUpdatedAt => 'updated_at';

  @override
  List<String> get columns => [
        'id',
        'first_name',
        'last_name',
        'email',
        'phone',
        'main_role_id',
        'created_at',
        'updated_at',
      ];

  @override
  String get schema => 'public';

  @override
  String get tableName => 'users';
}
