// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inno_text.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InnoText {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InnoTextCopyWith<InnoText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnoTextCopyWith<$Res> {
  factory $InnoTextCopyWith(InnoText value, $Res Function(InnoText) then) =
      _$InnoTextCopyWithImpl<$Res, InnoText>;
  @useResult
  $Res call({String id, String title, String text});
}

/// @nodoc
class _$InnoTextCopyWithImpl<$Res, $Val extends InnoText>
    implements $InnoTextCopyWith<$Res> {
  _$InnoTextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? text = null,
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
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InnoTextCopyWith<$Res> implements $InnoTextCopyWith<$Res> {
  factory _$$_InnoTextCopyWith(
          _$_InnoText value, $Res Function(_$_InnoText) then) =
      __$$_InnoTextCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String text});
}

/// @nodoc
class __$$_InnoTextCopyWithImpl<$Res>
    extends _$InnoTextCopyWithImpl<$Res, _$_InnoText>
    implements _$$_InnoTextCopyWith<$Res> {
  __$$_InnoTextCopyWithImpl(
      _$_InnoText _value, $Res Function(_$_InnoText) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? text = null,
  }) {
    return _then(_$_InnoText(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InnoText implements _InnoText {
  const _$_InnoText(
      {required this.id, required this.title, required this.text});

  @override
  final String id;
  @override
  final String title;
  @override
  final String text;

  @override
  String toString() {
    return 'InnoText(id: $id, title: $title, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InnoText &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InnoTextCopyWith<_$_InnoText> get copyWith =>
      __$$_InnoTextCopyWithImpl<_$_InnoText>(this, _$identity);
}

abstract class _InnoText implements InnoText {
  const factory _InnoText(
      {required final String id,
      required final String title,
      required final String text}) = _$_InnoText;

  @override
  String get id;
  @override
  String get title;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_InnoTextCopyWith<_$_InnoText> get copyWith =>
      throw _privateConstructorUsedError;
}
