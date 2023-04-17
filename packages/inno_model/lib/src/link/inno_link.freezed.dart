// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inno_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InnoLink {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InnoLinkCopyWith<InnoLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnoLinkCopyWith<$Res> {
  factory $InnoLinkCopyWith(InnoLink value, $Res Function(InnoLink) then) =
      _$InnoLinkCopyWithImpl<$Res, InnoLink>;
  @useResult
  $Res call({String id, String title, String url});
}

/// @nodoc
class _$InnoLinkCopyWithImpl<$Res, $Val extends InnoLink>
    implements $InnoLinkCopyWith<$Res> {
  _$InnoLinkCopyWithImpl(this._value, this._then);

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
abstract class _$$_InnoLinkCopyWith<$Res> implements $InnoLinkCopyWith<$Res> {
  factory _$$_InnoLinkCopyWith(
          _$_InnoLink value, $Res Function(_$_InnoLink) then) =
      __$$_InnoLinkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, String url});
}

/// @nodoc
class __$$_InnoLinkCopyWithImpl<$Res>
    extends _$InnoLinkCopyWithImpl<$Res, _$_InnoLink>
    implements _$$_InnoLinkCopyWith<$Res> {
  __$$_InnoLinkCopyWithImpl(
      _$_InnoLink _value, $Res Function(_$_InnoLink) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? url = null,
  }) {
    return _then(_$_InnoLink(
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

class _$_InnoLink implements _InnoLink {
  const _$_InnoLink({required this.id, required this.title, required this.url});

  @override
  final String id;
  @override
  final String title;
  @override
  final String url;

  @override
  String toString() {
    return 'InnoLink(id: $id, title: $title, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InnoLink &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InnoLinkCopyWith<_$_InnoLink> get copyWith =>
      __$$_InnoLinkCopyWithImpl<_$_InnoLink>(this, _$identity);
}

abstract class _InnoLink implements InnoLink {
  const factory _InnoLink(
      {required final String id,
      required final String title,
      required final String url}) = _$_InnoLink;

  @override
  String get id;
  @override
  String get title;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_InnoLinkCopyWith<_$_InnoLink> get copyWith =>
      throw _privateConstructorUsedError;
}
