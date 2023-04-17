import 'package:inno_database/inno_database.dart';

class InnoEventDao extends InnoSingleKeyDaoBase<InnoEvent> {
  static String columnId = 'id';
  static String columnTitle = 'title';

  @override
  final String primaryKeyColumn = columnId;

  @override
  final String schema = 'inno';

  @override
  final String tableName = 'inno_event';

  @override
  final List<String> columns = [
    columnId,
    columnTitle,
  ];

  InnoEventDao({required super.connectionPool});

  @override
  Future<List<InnoEvent>> selectAll() async {
    final result = await selectAllQuery(orderByColumn: columnId);
    return Future.wait(result.map((row) => mapToModel(row: row)));
  }

  /// This isnt implemented
  @override
  Future<List<InnoEvent>> selectBy({required String id}) async {
    // final result = await selectByQuery(
    //   filterColumn: columnConferenceId,
    //   filterValue: id,
    //   orderByColumn: columnId,
    // );
    // return Future.wait(result.map((row) => mapToModel(row: row)));
    throw UnimplementedError();
  }

  @override
  Future<InnoEvent> mapToModel({
    required PostgreSQLResultRow row,
  }) async {
    if (row.length != columns.length) {
      throw PostgreSQLException(
        'Failed to select row, updated number of columns is ${row.length} != ${columns.length}',
      );
    }

    final columnMap = row.toColumnMap();

    final innoEvent = InnoEvent(
      id: columnMap[columnId],
      title: columnMap[columnTitle],
    );

    return innoEvent;
  }
}

extension AsDBEvent on InnoEvent {
  Map<String, dynamic> asDbMap() {
    return {
      InnoEventDao.columnId: id,
      InnoEventDao.columnTitle: title,
    };
  }
}
