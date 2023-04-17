import 'package:inno_database/inno_database.dart';

class InnoLinkDao extends InnoSingleKeyDaoBase<InnoLink> {
  static String columnId = 'id';
  static String columnTitle = 'title';
  static String columnUrl = 'url';

  @override
  final String primaryKeyColumn = columnId;

  @override
  final String schema = 'inno';

  @override
  final String tableName = 'inno_link';

  @override
  final List<String> columns = [
    columnId,
    columnTitle,
    columnUrl,
  ];

  InnoLinkDao({required super.connectionPool});

  @override
  Future<List<InnoLink>> selectAll() async {
    PostgreSQLResult results = await selectAllQuery(orderByColumn: columnTitle);

    List<InnoLink> innoLinks = List.empty(growable: true);

    for (final PostgreSQLResultRow row in results) {
      final innoLink = await mapToModel(row: row);
      innoLinks.add(innoLink);
    }

    return innoLinks;
  }

  @override
  Future<List<InnoLink>> selectBy({required String id}) async {
    // TODO: implement selectBy
    throw UnimplementedError();
  }

  @override
  Future<InnoLink> mapToModel({required PostgreSQLResultRow row}) async {
    if (row.length != columns.length) {
      throw PostgreSQLException(
          'Failed to select row, updated number of columns is ${row.length} != ${columns.length}');
    }

    final columnMap = row.toColumnMap();

    InnoLink innoLink = InnoLink(
      id: columnMap[columnId],
      title: columnMap[columnTitle],
      url: columnMap[columnUrl],
    );

    return innoLink;
  }
}
