// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inno_service_method.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InnoServiceMethod {
  String get id => throw _privateConstructorUsedError;
  String get serviceId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InnoServiceMethodCopyWith<InnoServiceMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnoServiceMethodCopyWith<$Res> {
  factory $InnoServiceMethodCopyWith(
          InnoServiceMethod value, $Res Function(InnoServiceMethod) then) =
      _$InnoServiceMethodCopyWithImpl<$Res, InnoServiceMethod>;
  @useResult
  $Res call({String id, String serviceId, String title});
}

/// @nodoc
class _$InnoServiceMethodCopyWithImpl<$Res, $Val extends InnoServiceMethod>
    implements $InnoServiceMethodCopyWith<$Res> {
  _$InnoServiceMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? serviceId = null,
    Object? title = null,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InnoServiceMethodCopyWith<$Res>
    implements $InnoServiceMethodCopyWith<$Res> {
  factory _$$_InnoServiceMethodCopyWith(_$_InnoServiceMethod value,
          $Res Function(_$_InnoServiceMethod) then) =
      __$$_InnoServiceMethodCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String serviceId, String title});
}

/// @nodoc
class __$$_InnoServiceMethodCopyWithImpl<$Res>
    extends _$InnoServiceMethodCopyWithImpl<$Res, _$_InnoServiceMethod>
    implements _$$_InnoServiceMethodCopyWith<$Res> {
  __$$_InnoServiceMethodCopyWithImpl(
      _$_InnoServiceMethod _value, $Res Function(_$_InnoServiceMethod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? serviceId = null,
    Object? title = null,
  }) {
    return _then(_$_InnoServiceMethod(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      serviceId: null == serviceId
          ? _value.serviceId
          : serviceId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InnoServiceMethod implements _InnoServiceMethod {
  const _$_InnoServiceMethod(
      {required this.id, required this.serviceId, required this.title});

  @override
  final String id;
  @override
  final String serviceId;
  @override
  final String title;

  @override
  String toString() {
    return 'InnoServiceMethod(id: $id, serviceId: $serviceId, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InnoServiceMethod &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.serviceId, serviceId) ||
                other.serviceId == serviceId) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, serviceId, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InnoServiceMethodCopyWith<_$_InnoServiceMethod> get copyWith =>
      __$$_InnoServiceMethodCopyWithImpl<_$_InnoServiceMethod>(
          this, _$identity);
}

abstract class _InnoServiceMethod implements InnoServiceMethod {
  const factory _InnoServiceMethod(
      {required final String id,
      required final String serviceId,
      required final String title}) = _$_InnoServiceMethod;

  @override
  String get id;
  @override
  String get serviceId;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_InnoServiceMethodCopyWith<_$_InnoServiceMethod> get copyWith =>
      throw _privateConstructorUsedError;
}
