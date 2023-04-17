import 'package:inno_database/inno_database.dart';

class InnoConferenceProviderDao
    extends InnoSingleKeyDaoBase<InnoConferenceProvider> {
  static String columnId = 'id';
  static String columnTitle = 'title';

  @override
  final String primaryKeyColumn = columnId;

  @override
  final String schema = 'inno';

  @override
  final String tableName = 'inno_conference_provider';

  @override
  final List<String> columns = [
    columnId,
    columnTitle,
  ];

  InnoConferenceProviderDao({required super.connectionPool});

  @override
  Future<List<InnoConferenceProvider>> selectAll() async {
    final result = await selectAllQuery(orderByColumn: columnId);
    return Future.wait(
      result.map((row) => mapToModel(row: row)).toList(),
    );
  }

  @override
  Future<List<InnoConferenceProvider>> selectBy({required String id}) async {
    // TODO: implement selectBy
    throw UnimplementedError();
  }

  @override
  Future<InnoConferenceProvider> mapToModel({
    required PostgreSQLResultRow row,
  }) async {
    if (row.length != columns.length) {
      throw PostgreSQLException(
          'Failed to select row, updated number of columns is ${row.length} != ${columns.length}');
    }

    final columnMap = row.toColumnMap();

    final innoConferenceProvider = InnoConferenceProvider(
      id: columnMap[columnId],
      title: columnMap[columnTitle],
    );

    return innoConferenceProvider;
  }
}

extension AsInnoConferenceDBMap on InnoConferenceProvider {
  Map<String, dynamic> asDBMap() {
    return {
      InnoConferenceProviderDao.columnId: id,
      InnoConferenceProviderDao.columnTitle: title,
    };
  }
}
