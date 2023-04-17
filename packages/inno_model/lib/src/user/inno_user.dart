import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inno_model/src/role/inno_role.dart';

part 'inno_user.freezed.dart';

@freezed
class InnoUser with _$InnoUser {
  const factory InnoUser({
    required String uid,
    required String firstName,
    required String lastName,
    required String email,
    String? phone,
    required String mainRoleId,
    required List<InnoRole> roles,
  }) = _InnoUser;
}
