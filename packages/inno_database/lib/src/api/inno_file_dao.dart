import 'package:inno_database/inno_database.dart';

class InnoFileDao extends InnoSingleKeyDaoBase<InnoFile> {
  static String columnId = 'id';
  static String columnTitle = 'title';
  static String columnUrl = 'url';

  @override
  final String primaryKeyColumn = columnId;

  @override
  final String schema = 'inno';

  @override
  final String tableName = 'inno_file';

  @override
  final List<String> columns = [
    columnId,
    columnTitle,
    columnUrl,
  ];

  InnoFileDao({required super.connectionPool});

  @override
  Future<List<InnoFile>> selectAll() async {
    PostgreSQLResult results = await selectAllQuery(orderByColumn: columnTitle);

    List<InnoFile> innoFiles = List.empty(growable: true);

    for (final PostgreSQLResultRow row in results) {
      final innoFile = await mapToModel(row: row);
      innoFiles.add(innoFile);
    }

    return innoFiles;
  }

  @override
  Future<List<InnoFile>> selectBy({required String id}) async {
    // TODO: implement selectBy
    throw UnimplementedError();
  }

  @override
  Future<InnoFile> mapToModel({required PostgreSQLResultRow row}) async {
    if (row.length != columns.length) {
      throw PostgreSQLException(
          'Failed to select row, updated number of columns is ${row.length} != ${columns.length}');
    }

    final columnMap = row.toColumnMap();

    InnoFile innoFile = InnoFile(
      id: columnMap[columnId],
      title: columnMap[columnTitle],
      url: columnMap[columnUrl],
    );

    return innoFile;
  }
}
