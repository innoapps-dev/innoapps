import 'package:inno_database/inno_database.dart';

abstract class InnoMultipleKeyDaoBase<T> extends InnoDatabase {
  abstract final List<String> primaryKeyColumns;

  InnoMultipleKeyDaoBase({required super.connectionPool});
}
