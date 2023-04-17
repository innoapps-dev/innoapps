import 'package:inno_database/inno_database.dart';

class InnoResourceDao extends InnoSingleKeyDaoBase<InnoResource> {
  static String columnId = 'id';
  static String columnServiceId = 'service_id';
  static String columnTag = 'tag';

  @override
  final String primaryKeyColumn = columnId;

  @override
  final String schema = 'inno';

  @override
  final String tableName = 'inno_resource';

  @override
  final List<String> columns = [
    columnId,
    columnServiceId,
    columnTag,
  ];

  InnoResourceDao({required super.connectionPool});

  @override
  Future<List<InnoResource>> selectAll() async {
    PostgreSQLResult results = await selectAllQuery(orderByColumn: columnId);

    List<InnoResource> innoResources = List.empty(growable: true);

    for (final PostgreSQLResultRow row in results) {
      final innoResource = await mapToModel(row: row);
      innoResources.add(innoResource);
    }

    return innoResources;
  }

  @override
  Future<List<InnoResource>> selectBy({required String id}) async {
    // TODO: implement selectBy
    throw UnimplementedError();
  }

  @override
  Future<InnoResource> mapToModel({required PostgreSQLResultRow row}) async {
    if (row.length != columns.length) {
      throw PostgreSQLException(
          'Failed to select row, updated number of columns is ${row.length} != ${columns.length}');
    }

    final columnMap = row.toColumnMap();

    InnoResource innoResource = InnoResource(
      id: columnMap[columnId],
      serviceId: columnMap[columnServiceId],
      tag: columnMap[columnTag],
    );

    return innoResource;
  }
}
