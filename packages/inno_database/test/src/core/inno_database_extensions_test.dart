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

import 'dart:typed_data';

import 'package:inno_database/inno_database.dart';
import 'package:test/test.dart';

import '../../test_utils.dart';

void main() {
  late InnoConnectionPool pool;

  setUpAll(() {
    pool = testConnectionPool();
  });
  group('TimeAsDateExtension', () {
    test('reads as Date', () async {
      final result = await pool.query(
        'SELECT @1::time as t,now() as dt',
        substitutionValues: {"1": "12:00:33"},
      );
      final data = result.first.toColumnMap();
      final bytes = data['t'] as Uint8List;
      final time = bytes.asDateTime;
      expect(time.hour, equals(12));
      expect(time.minute, 0);
      expect(time.second, equals(33));
    });

    test('can be merged with a custom Date', () async {
      final result = await pool.query(
        'SELECT @1::time as t,now() as dt',
        substitutionValues: {"1": "12:00:33"},
      );
      final data = result.first.toColumnMap();
      final bytes = data['t'] as Uint8List;
      final time = bytes.withDate(DateTime(2021, 1, 1));
      expect(time.hour, equals(12));
      expect(time.minute, 0);
      expect(time.second, equals(33));

      expect(time.year, equals(2021));
      expect(time.month, equals(1));
      expect(time.day, equals(1));
    });
  });

  group('DateTimeAsTime', () {
    test('padLeft pads correctly', () {
      expect(1.padLeft(), equals('01'));
      expect(12.padLeft(), equals('12'));
      expect(0.padLeft(), equals('00'));
    });

    test('converts to time representation', () {
      final date = DateTime(2023, 1, 10, 19, 5, 4);
      expect(date.asTime, equals('19:05:04'));
    });

    test('can be cast to time value in the database', () async {
      final date = DateTime(2023, 1, 10, 19, 5, 4);
      final result = await pool.query(
        'SELECT @1::time as t,now() as dt',
        substitutionValues: {"1": date.asTime},
      );
      final data = result.first.toColumnMap();
    });
    test('can extract datetime from time-formatted string', () {
      final string = "12:00:33".split(':');
      expect(string.length, equals(3));
    });
  });
}
