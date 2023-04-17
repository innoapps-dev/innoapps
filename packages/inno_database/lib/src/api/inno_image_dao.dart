import 'package:inno_database/inno_database.dart';

class InnoImageDao extends InnoSingleKeyDaoBase<InnoImage> {
  static String columnId = 'id';
  static String columnTitle = 'title';
  static String columnUrl = 'url';

  @override
  final String primaryKeyColumn = columnId;

  @override
  final String schema = 'inno';

  @override
  final String tableName = 'inno_image';

  @override
  final List<String> columns = [
    columnId,
    columnTitle,
    columnUrl,
  ];

  InnoImageDao({required super.connectionPool});

  @override
  Future<List<InnoImage>> selectAll() async {
    // TODO: implement selectAll
    throw UnimplementedError();
  }

  @override
  Future<List<InnoImage>> selectBy({required String id}) async {
    // TODO: implement selectBy
    throw UnimplementedError();
  }

  @override
  Future<InnoImage> mapToModel({required PostgreSQLResultRow row}) async {
    if (row.length != columns.length) {
      throw PostgreSQLException(
          'Failed to select row, updated number of columns is ${row.length} != ${columns.length}');
    }

    final columnMap = row.toColumnMap();

    InnoImage innoImage = InnoImage(
      id: columnMap[columnId],
      title: columnMap[columnTitle],
      url: columnMap[columnUrl],
    );

    return innoImage;
  }
}
