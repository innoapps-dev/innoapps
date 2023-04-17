import 'package:freezed_annotation/freezed_annotation.dart';

part 'inno_role.freezed.dart';

@freezed
class InnoRole with _$InnoRole {
  const factory InnoRole({
    required String id,
    required String title,
  }) = _InnoRole;
}
