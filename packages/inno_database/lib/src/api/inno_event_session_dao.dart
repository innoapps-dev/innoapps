import 'dart:typed_data';

import 'package:inno_database/inno_database.dart';

class InnoEventSessionDao extends InnoSingleKeyDaoBase<InnoEventSession> {
  static String columnId = 'id';
  static String columnTitle = 'title';
  static String columnEventId = 'event_id';
  static String columnDescription = 'description';
  static String columnStartDate = 'start_date';
  static String columnStartTime = 'start_time';
  static String columnEndDate = 'end_date';
  static String columnEndTime = 'end_time';

  @override
  final String primaryKeyColumn = columnId;

  @override
  final String schema = 'inno';

  @override
  final String tableName = 'inno_event_session';

  @override
  final List<String> columns = [
    columnId,
    columnTitle,
    columnEventId,
    columnDescription,
    columnStartDate,
    columnStartTime,
    columnEndDate,
    columnEndTime,
  ];

  InnoEventSessionDao({required super.connectionPool});

  @override
  Future<List<InnoEventSession>> selectAll() async {
    final result = await selectAllQuery(orderByColumn: columnId);
    return Future.wait(result.map((row) => mapToModel(row: row)));
  }

  /// This selects sessions for an event
  @override
  Future<List<InnoEventSession>> selectBy({required String id}) async {
    final result = await selectByQuery(
      filterColumn: columnEventId,
      filterValue: id,
      orderByColumn: columnId,
    );
    return Future.wait(result.map((row) => mapToModel(row: row)));
  }

  @override
  Future<InnoEventSession> mapToModel({
    required PostgreSQLResultRow row,
  }) async {
    if (row.length != columns.length) {
      throw PostgreSQLException(
        'Failed to select row, updated number of columns is ${row.length} != ${columns.length}',
      );
    }

    final columnMap = row.toColumnMap();
    final innoConferenceDao = InnoConferenceDao(connectionPool: connectionPool);
    final conferences = await innoConferenceDao.selectBy(
      id: columnMap[columnEventId],
    );

    // TODO: Events & Links belonging to the event_session.

    var startDate = columnMap[columnStartDate] as DateTime;
    var endDate = columnMap[columnEndDate] as DateTime;

    final endTimeString = (columnMap[columnEndTime] as String);
    final startTimeString = (columnMap[columnStartTime] as String);

    final startTime = DateTime.utc(
      startDate.year,
      startDate.month,
      startDate.day,
      startTimeString.hour,
      startTimeString.minute,
      startTimeString.seconds,
    );
    final endTime = DateTime.utc(
      endDate.year,
      endDate.month,
      endDate.day,
      endTimeString.hour,
      endTimeString.minute,
      endTimeString.seconds,
    );

    final innoEventSession = InnoEventSession(
      id: columnMap[columnId],
      title: columnMap[columnTitle],
      eventId: columnMap[columnEventId],
      description: columnMap[columnDescription],
      startDateTime: startTime,
      endDateTime: endTime,
      conferences: conferences,
      texts: [],
      links: [],
    );

    return innoEventSession;
  }
}

/// Store timestamp in UTC
/// Process in UTC
/// Submit from client in UTC
/// Show on client - Convert to Local Time on Client

extension AsDBEventSession on InnoEventSession {
  Map<String, dynamic> asDbMap({
    required String eventId,
  }) {
    return {
      InnoEventSessionDao.columnId: id,
      InnoEventSessionDao.columnTitle: title,
      InnoEventSessionDao.columnEventId: eventId,
      InnoEventSessionDao.columnDescription: description,
      InnoEventSessionDao.columnStartTime: startDateTime.asTime,
      InnoEventSessionDao.columnEndTime: endDateTime.asTime,
      InnoEventSessionDao.columnStartDate: DateTime(
        endDateTime.year,
        endDateTime.month,
        endDateTime.day,
      ),
      InnoEventSessionDao.columnEndDate: DateTime(
        startDateTime.year,
        startDateTime.month,
        startDateTime.day,
      ),
    };
  }
}

extension DateTimeAsTime on DateTime {
  String get asTime {
    final time = '${hour.padLeft()}:${minute.padLeft()}:${second.padLeft()}';
    return time;
  }
}

extension SplitStringToTime on String {
  List<int> get _values {
    return split(':').map((e) => int.parse(e)).toList();
  }

  int get hour {
    return _values[0];
  }

  int get minute {
    return _values[1];
  }

  int get seconds {
    return _values[2];
  }
}

extension PadToTime on int {
  String padLeft() {
    return toString().padLeft(2, '0');
  }
}
