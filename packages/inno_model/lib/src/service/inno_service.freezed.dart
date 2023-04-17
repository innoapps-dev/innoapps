// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inno_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InnoService {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;
  String get organisation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InnoServiceCopyWith<InnoService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnoServiceCopyWith<$Res> {
  factory $InnoServiceCopyWith(
          InnoService value, $Res Function(InnoService) then) =
      _$InnoServiceCopyWithImpl<$Res, InnoService>;
  @useResult
  $Res call({String id, String title, String version, String organisation});
}

/// @nodoc
class _$InnoServiceCopyWithImpl<$Res, $Val extends InnoService>
    implements $InnoServiceCopyWith<$Res> {
  _$InnoServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? version = null,
    Object? organisation = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      organisation: null == organisation
          ? _value.organisation
          : organisation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InnoServiceCopyWith<$Res>
    implements $InnoServiceCopyWith<$Res> {
  factory _$$_InnoServiceCopyWith(
          _$_InnoService value, $Res Function(_$_InnoService) then) =
      __$$_InnoServiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String version, String organisation});
}

/// @nodoc
class __$$_InnoServiceCopyWithImpl<$Res>
    extends _$InnoServiceCopyWithImpl<$Res, _$_InnoService>
    implements _$$_InnoServiceCopyWith<$Res> {
  __$$_InnoServiceCopyWithImpl(
      _$_InnoService _value, $Res Function(_$_InnoService) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? version = null,
    Object? organisation = null,
  }) {
    return _then(_$_InnoService(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      organisation: null == organisation
          ? _value.organisation
          : organisation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InnoService implements _InnoService {
  const _$_InnoService(
      {required this.id,
      required this.title,
      required this.version,
      required this.organisation});

  @override
  final String id;
  @override
  final String title;
  @override
  final String version;
  @override
  final String organisation;

  @override
  String toString() {
    return 'InnoService(id: $id, title: $title, version: $version, organisation: $organisation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InnoService &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.organisation, organisation) ||
                other.organisation == organisation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, version, organisation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InnoServiceCopyWith<_$_InnoService> get copyWith =>
      __$$_InnoServiceCopyWithImpl<_$_InnoService>(this, _$identity);
}

abstract class _InnoService implements InnoService {
  const factory _InnoService(
      {required final String id,
      required final String title,
      required final String version,
      required final String organisation}) = _$_InnoService;

  @override
  String get id;
  @override
  String get title;
  @override
  String get version;
  @override
  String get organisation;
  @override
  @JsonKey(ignore: true)
  _$$_InnoServiceCopyWith<_$_InnoService> get copyWith =>
      throw _privateConstructorUsedError;
}
