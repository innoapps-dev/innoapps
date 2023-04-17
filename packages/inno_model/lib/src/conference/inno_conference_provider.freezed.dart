// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inno_conference_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InnoConferenceProvider {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InnoConferenceProviderCopyWith<InnoConferenceProvider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnoConferenceProviderCopyWith<$Res> {
  factory $InnoConferenceProviderCopyWith(InnoConferenceProvider value,
          $Res Function(InnoConferenceProvider) then) =
      _$InnoConferenceProviderCopyWithImpl<$Res, InnoConferenceProvider>;
  @useResult
  $Res call({String id, String title});
}

/// @nodoc
class _$InnoConferenceProviderCopyWithImpl<$Res,
        $Val extends InnoConferenceProvider>
    implements $InnoConferenceProviderCopyWith<$Res> {
  _$InnoConferenceProviderCopyWithImpl(this._value, this._then);

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
abstract class _$$_InnoConferenceProviderCopyWith<$Res>
    implements $InnoConferenceProviderCopyWith<$Res> {
  factory _$$_InnoConferenceProviderCopyWith(_$_InnoConferenceProvider value,
          $Res Function(_$_InnoConferenceProvider) then) =
      __$$_InnoConferenceProviderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title});
}

/// @nodoc
class __$$_InnoConferenceProviderCopyWithImpl<$Res>
    extends _$InnoConferenceProviderCopyWithImpl<$Res,
        _$_InnoConferenceProvider>
    implements _$$_InnoConferenceProviderCopyWith<$Res> {
  __$$_InnoConferenceProviderCopyWithImpl(_$_InnoConferenceProvider _value,
      $Res Function(_$_InnoConferenceProvider) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$_InnoConferenceProvider(
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

class _$_InnoConferenceProvider implements _InnoConferenceProvider {
  const _$_InnoConferenceProvider({required this.id, required this.title});

  @override
  final String id;
  @override
  final String title;

  @override
  String toString() {
    return 'InnoConferenceProvider(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InnoConferenceProvider &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InnoConferenceProviderCopyWith<_$_InnoConferenceProvider> get copyWith =>
      __$$_InnoConferenceProviderCopyWithImpl<_$_InnoConferenceProvider>(
          this, _$identity);
}

abstract class _InnoConferenceProvider implements InnoConferenceProvider {
  const factory _InnoConferenceProvider(
      {required final String id,
      required final String title}) = _$_InnoConferenceProvider;

  @override
  String get id;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_InnoConferenceProviderCopyWith<_$_InnoConferenceProvider> get copyWith =>
      throw _privateConstructorUsedError;
}
