// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inno_conference_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InnoConferenceField {
  String get id => throw _privateConstructorUsedError; //inno_conf_value_id
  String get conferenceId => throw _privateConstructorUsedError; //inno_conf_id
  String get title => throw _privateConstructorUsedError; //call_id
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InnoConferenceFieldCopyWith<InnoConferenceField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnoConferenceFieldCopyWith<$Res> {
  factory $InnoConferenceFieldCopyWith(
          InnoConferenceField value, $Res Function(InnoConferenceField) then) =
      _$InnoConferenceFieldCopyWithImpl<$Res, InnoConferenceField>;
  @useResult
  $Res call({String id, String conferenceId, String title, String value});
}

/// @nodoc
class _$InnoConferenceFieldCopyWithImpl<$Res, $Val extends InnoConferenceField>
    implements $InnoConferenceFieldCopyWith<$Res> {
  _$InnoConferenceFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? conferenceId = null,
    Object? title = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      conferenceId: null == conferenceId
          ? _value.conferenceId
          : conferenceId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InnoConferenceFieldCopyWith<$Res>
    implements $InnoConferenceFieldCopyWith<$Res> {
  factory _$$_InnoConferenceFieldCopyWith(_$_InnoConferenceField value,
          $Res Function(_$_InnoConferenceField) then) =
      __$$_InnoConferenceFieldCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String conferenceId, String title, String value});
}

/// @nodoc
class __$$_InnoConferenceFieldCopyWithImpl<$Res>
    extends _$InnoConferenceFieldCopyWithImpl<$Res, _$_InnoConferenceField>
    implements _$$_InnoConferenceFieldCopyWith<$Res> {
  __$$_InnoConferenceFieldCopyWithImpl(_$_InnoConferenceField _value,
      $Res Function(_$_InnoConferenceField) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? conferenceId = null,
    Object? title = null,
    Object? value = null,
  }) {
    return _then(_$_InnoConferenceField(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      conferenceId: null == conferenceId
          ? _value.conferenceId
          : conferenceId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InnoConferenceField implements _InnoConferenceField {
  const _$_InnoConferenceField(
      {required this.id,
      required this.conferenceId,
      required this.title,
      required this.value});

  @override
  final String id;
//inno_conf_value_id
  @override
  final String conferenceId;
//inno_conf_id
  @override
  final String title;
//call_id
  @override
  final String value;

  @override
  String toString() {
    return 'InnoConferenceField(id: $id, conferenceId: $conferenceId, title: $title, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InnoConferenceField &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.conferenceId, conferenceId) ||
                other.conferenceId == conferenceId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, conferenceId, title, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InnoConferenceFieldCopyWith<_$_InnoConferenceField> get copyWith =>
      __$$_InnoConferenceFieldCopyWithImpl<_$_InnoConferenceField>(
          this, _$identity);
}

abstract class _InnoConferenceField implements InnoConferenceField {
  const factory _InnoConferenceField(
      {required final String id,
      required final String conferenceId,
      required final String title,
      required final String value}) = _$_InnoConferenceField;

  @override
  String get id;
  @override //inno_conf_value_id
  String get conferenceId;
  @override //inno_conf_id
  String get title;
  @override //call_id
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_InnoConferenceFieldCopyWith<_$_InnoConferenceField> get copyWith =>
      throw _privateConstructorUsedError;
}
