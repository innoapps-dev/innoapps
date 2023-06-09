// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inno_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InnoImage {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InnoImageCopyWith<InnoImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnoImageCopyWith<$Res> {
  factory $InnoImageCopyWith(InnoImage value, $Res Function(InnoImage) then) =
      _$InnoImageCopyWithImpl<$Res, InnoImage>;
  @useResult
  $Res call({String id, String title, String url});
}

/// @nodoc
class _$InnoImageCopyWithImpl<$Res, $Val extends InnoImage>
    implements $InnoImageCopyWith<$Res> {
  _$InnoImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? url = null,
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
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InnoImageCopyWith<$Res> implements $InnoImageCopyWith<$Res> {
  factory _$$_InnoImageCopyWith(
          _$_InnoImage value, $Res Function(_$_InnoImage) then) =
      __$$_InnoImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String url});
}

/// @nodoc
class __$$_InnoImageCopyWithImpl<$Res>
    extends _$InnoImageCopyWithImpl<$Res, _$_InnoImage>
    implements _$$_InnoImageCopyWith<$Res> {
  __$$_InnoImageCopyWithImpl(
      _$_InnoImage _value, $Res Function(_$_InnoImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? url = null,
  }) {
    return _then(_$_InnoImage(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InnoImage implements _InnoImage {
  const _$_InnoImage(
      {required this.id, required this.title, required this.url});

  @override
  final String id;
  @override
  final String title;
  @override
  final String url;

  @override
  String toString() {
    return 'InnoImage(id: $id, title: $title, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InnoImage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InnoImageCopyWith<_$_InnoImage> get copyWith =>
      __$$_InnoImageCopyWithImpl<_$_InnoImage>(this, _$identity);
}

abstract class _InnoImage implements InnoImage {
  const factory _InnoImage(
      {required final String id,
      required final String title,
      required final String url}) = _$_InnoImage;

  @override
  String get id;
  @override
  String get title;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_InnoImageCopyWith<_$_InnoImage> get copyWith =>
      throw _privateConstructorUsedError;
}
