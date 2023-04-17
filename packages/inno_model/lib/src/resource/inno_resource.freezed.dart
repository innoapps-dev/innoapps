// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inno_resource.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InnoResource {
  String get id => throw _privateConstructorUsedError;
  String get serviceId => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InnoResourceCopyWith<InnoResource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnoResourceCopyWith<$Res> {
  factory $InnoResourceCopyWith(
          InnoResource value, $Res Function(InnoResource) then) =
      _$InnoResourceCopyWithImpl<$Res, InnoResource>;
  @useResult
  $Res call({String id, String serviceId, String tag});
}

/// @nodoc
class _$InnoResourceCopyWithImpl<$Res, $Val extends InnoResource>
    implements $InnoResourceCopyWith<$Res> {
  _$InnoResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? serviceId = null,
    Object? tag = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InnoResourceCopyWith<$Res>
    implements $InnoResourceCopyWith<$Res> {
  factory _$$_InnoResourceCopyWith(
          _$_InnoResource value, $Res Function(_$_InnoResource) then) =
      __$$_InnoResourceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String serviceId, String tag});
}

/// @nodoc
class __$$_InnoResourceCopyWithImpl<$Res>
    extends _$InnoResourceCopyWithImpl<$Res, _$_InnoResource>
    implements _$$_InnoResourceCopyWith<$Res> {
  __$$_InnoResourceCopyWithImpl(
      _$_InnoResource _value, $Res Function(_$_InnoResource) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? serviceId = null,
    Object? tag = null,
  }) {
    return _then(_$_InnoResource(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InnoResource implements _InnoResource {
  const _$_InnoResource(
      {required this.id, required this.serviceId, required this.tag});

  @override
  final String id;
  @override
  final String serviceId;
  @override
  final String tag;

  @override
  String toString() {
    return 'InnoResource(id: $id, serviceId: $serviceId, tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InnoResource &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, serviceId, tag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InnoResourceCopyWith<_$_InnoResource> get copyWith =>
      __$$_InnoResourceCopyWithImpl<_$_InnoResource>(this, _$identity);
}

abstract class _InnoResource implements InnoResource {
  const factory _InnoResource(
      {required final String id,
      required final String serviceId,
      required final String tag}) = _$_InnoResource;

  @override
  String get id;
  @override
  String get serviceId;
  @override
  String get tag;
  @override
  @JsonKey(ignore: true)
  _$$_InnoResourceCopyWith<_$_InnoResource> get copyWith =>
      throw _privateConstructorUsedError;
}
