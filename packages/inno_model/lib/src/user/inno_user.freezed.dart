// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inno_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InnoUser {
  String get uid => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String get mainRoleId => throw _privateConstructorUsedError;
  List<InnoRole> get roles => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InnoUserCopyWith<InnoUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnoUserCopyWith<$Res> {
  factory $InnoUserCopyWith(InnoUser value, $Res Function(InnoUser) then) =
      _$InnoUserCopyWithImpl<$Res, InnoUser>;
  @useResult
  $Res call(
      {String uid,
      String firstName,
      String lastName,
      String email,
      String? phone,
      String mainRoleId,
      List<InnoRole> roles});
}

/// @nodoc
class _$InnoUserCopyWithImpl<$Res, $Val extends InnoUser>
    implements $InnoUserCopyWith<$Res> {
  _$InnoUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? phone = freezed,
    Object? mainRoleId = null,
    Object? roles = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      mainRoleId: null == mainRoleId
          ? _value.mainRoleId
          : mainRoleId // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<InnoRole>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InnoUserCopyWith<$Res> implements $InnoUserCopyWith<$Res> {
  factory _$$_InnoUserCopyWith(
          _$_InnoUser value, $Res Function(_$_InnoUser) then) =
      __$$_InnoUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String firstName,
      String lastName,
      String email,
      String? phone,
      String mainRoleId,
      List<InnoRole> roles});
}

/// @nodoc
class __$$_InnoUserCopyWithImpl<$Res>
    extends _$InnoUserCopyWithImpl<$Res, _$_InnoUser>
    implements _$$_InnoUserCopyWith<$Res> {
  __$$_InnoUserCopyWithImpl(
      _$_InnoUser _value, $Res Function(_$_InnoUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? email = null,
    Object? phone = freezed,
    Object? mainRoleId = null,
    Object? roles = null,
  }) {
    return _then(_$_InnoUser(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      mainRoleId: null == mainRoleId
          ? _value.mainRoleId
          : mainRoleId // ignore: cast_nullable_to_non_nullable
              as String,
      roles: null == roles
          ? _value._roles
          : roles // ignore: cast_nullable_to_non_nullable
              as List<InnoRole>,
    ));
  }
}

/// @nodoc

class _$_InnoUser implements _InnoUser {
  const _$_InnoUser(
      {required this.uid,
      required this.firstName,
      required this.lastName,
      required this.email,
      this.phone,
      required this.mainRoleId,
      required final List<InnoRole> roles})
      : _roles = roles;

  @override
  final String uid;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String? phone;
  @override
  final String mainRoleId;
  final List<InnoRole> _roles;
  @override
  List<InnoRole> get roles {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_roles);
  }

  @override
  String toString() {
    return 'InnoUser(uid: $uid, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, mainRoleId: $mainRoleId, roles: $roles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InnoUser &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.mainRoleId, mainRoleId) ||
                other.mainRoleId == mainRoleId) &&
            const DeepCollectionEquality().equals(other._roles, _roles));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid, firstName, lastName, email,
      phone, mainRoleId, const DeepCollectionEquality().hash(_roles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InnoUserCopyWith<_$_InnoUser> get copyWith =>
      __$$_InnoUserCopyWithImpl<_$_InnoUser>(this, _$identity);
}

abstract class _InnoUser implements InnoUser {
  const factory _InnoUser(
      {required final String uid,
      required final String firstName,
      required final String lastName,
      required final String email,
      final String? phone,
      required final String mainRoleId,
      required final List<InnoRole> roles}) = _$_InnoUser;

  @override
  String get uid;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  String? get phone;
  @override
  String get mainRoleId;
  @override
  List<InnoRole> get roles;
  @override
  @JsonKey(ignore: true)
  _$$_InnoUserCopyWith<_$_InnoUser> get copyWith =>
      throw _privateConstructorUsedError;
}
