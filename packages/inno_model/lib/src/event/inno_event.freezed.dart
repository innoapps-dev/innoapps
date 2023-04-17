// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inno_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InnoEvent {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InnoEventCopyWith<InnoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnoEventCopyWith<$Res> {
  factory $InnoEventCopyWith(InnoEvent value, $Res Function(InnoEvent) then) =
      _$InnoEventCopyWithImpl<$Res, InnoEvent>;
  @useResult
  $Res call({String id, String title});
}

/// @nodoc
class _$InnoEventCopyWithImpl<$Res, $Val extends InnoEvent>
    implements $InnoEventCopyWith<$Res> {
  _$InnoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InnoEventCopyWith<$Res> implements $InnoEventCopyWith<$Res> {
  factory _$$_InnoEventCopyWith(
          _$_InnoEvent value, $Res Function(_$_InnoEvent) then) =
      __$$_InnoEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title});
}

/// @nodoc
class __$$_InnoEventCopyWithImpl<$Res>
    extends _$InnoEventCopyWithImpl<$Res, _$_InnoEvent>
    implements _$$_InnoEventCopyWith<$Res> {
  __$$_InnoEventCopyWithImpl(
      _$_InnoEvent _value, $Res Function(_$_InnoEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$_InnoEvent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InnoEvent implements _InnoEvent {
  const _$_InnoEvent({required this.id, required this.title});

  @override
  final String id;
  @override
  final String title;

  @override
  String toString() {
    return 'InnoEvent(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InnoEvent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InnoEventCopyWith<_$_InnoEvent> get copyWith =>
      __$$_InnoEventCopyWithImpl<_$_InnoEvent>(this, _$identity);
}

abstract class _InnoEvent implements InnoEvent {
  const factory _InnoEvent(
      {required final String id, required final String title}) = _$_InnoEvent;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_InnoEventCopyWith<_$_InnoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
