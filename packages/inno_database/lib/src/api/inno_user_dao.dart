import 'package:inno_database/inno_database.dart';

class InnoUserDao extends InnoSingleKeyDaoBaseWithStreaming<InnoUser> {
  static String columnUid = 'uid';
  static String columnFirstName = 'first_name';
  static String columnLastName = 'last_name';
  static String columnEmail = 'email';
  static String columnPhone = 'phone';
  static String columnMainRoleId = 'main_role_id';

  @override
  final String primaryKeyColumn = columnUid;

  @override
  final String schema = 'inno';

  @override
  final String tableName = 'inno_user';

  @override
  final List<String> columns = [
    columnUid,
    columnFirstName,
    columnLastName,
    columnEmail,
    columnPhone,
    columnMainRoleId,
  ];

  InnoUserDao({required super.connectionPool});

  @override
  Future<List<InnoUser>> selectAll() async {
    PostgreSQLResult results =
        await selectAllQuery(orderByColumn: columnFirstName);

    List<InnoUser> innoUsers = List.empty(growable: true);

    for (final PostgreSQLResultRow row in results) {
      final innoUser = await mapToModel(row: row);
      innoUsers.add(innoUser);
    }

    return innoUsers;
  }

  @override
  Future<List<InnoUser>> selectBy({required String id}) {
    // TODO: implement selectBy
    throw UnimplementedError();
  }

  @override
  Future<InnoUser> mapToModel({required PostgreSQLResultRow row}) async {
    if (row.length != columns.length) {
      throw PostgreSQLException(
          'Failed to select row, updated number of columns is ${row.length} != ${columns.length}');
    }

    final columnMap = row.toColumnMap();

    InnoUser innoUser = InnoUser(
      uid: columnMap[columnUid],
      firstName: columnMap[columnFirstName],
      lastName: columnMap[columnLastName],
      email: columnMap[columnEmail],
      phone: columnMap[columnPhone],
      mainRoleId: columnMap[columnMainRoleId],
      roles: List.empty(),
    );

    return innoUser;
  }
}
