// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inno_conference.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InnoConference {
  String get id => throw _privateConstructorUsedError; //inno_conf_id
  String get title => throw _privateConstructorUsedError; // Room 1
  InnoConferenceProvider get provider =>
      throw _privateConstructorUsedError; // Zoom
  List<InnoConferenceField> get fields => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InnoConferenceCopyWith<InnoConference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnoConferenceCopyWith<$Res> {
  factory $InnoConferenceCopyWith(
          InnoConference value, $Res Function(InnoConference) then) =
      _$InnoConferenceCopyWithImpl<$Res, InnoConference>;
  @useResult
  $Res call(
      {String id,
      String title,
      InnoConferenceProvider provider,
      List<InnoConferenceField> fields});

  $InnoConferenceProviderCopyWith<$Res> get provider;
}

/// @nodoc
class _$InnoConferenceCopyWithImpl<$Res, $Val extends InnoConference>
    implements $InnoConferenceCopyWith<$Res> {
  _$InnoConferenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? provider = null,
    Object? fields = null,
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
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as InnoConferenceProvider,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<InnoConferenceField>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InnoConferenceProviderCopyWith<$Res> get provider {
    return $InnoConferenceProviderCopyWith<$Res>(_value.provider, (value) {
      return _then(_value.copyWith(provider: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InnoConferenceCopyWith<$Res>
    implements $InnoConferenceCopyWith<$Res> {
  factory _$$_InnoConferenceCopyWith(
          _$_InnoConference value, $Res Function(_$_InnoConference) then) =
      __$$_InnoConferenceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      InnoConferenceProvider provider,
      List<InnoConferenceField> fields});

  @override
  $InnoConferenceProviderCopyWith<$Res> get provider;
}

/// @nodoc
class __$$_InnoConferenceCopyWithImpl<$Res>
    extends _$InnoConferenceCopyWithImpl<$Res, _$_InnoConference>
    implements _$$_InnoConferenceCopyWith<$Res> {
  __$$_InnoConferenceCopyWithImpl(
      _$_InnoConference _value, $Res Function(_$_InnoConference) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? provider = null,
    Object? fields = null,
  }) {
    return _then(_$_InnoConference(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as InnoConferenceProvider,
      fields: null == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<InnoConferenceField>,
    ));
  }
}

/// @nodoc

class _$_InnoConference implements _InnoConference {
  const _$_InnoConference(
      {required this.id,
      required this.title,
      required this.provider,
      required final List<InnoConferenceField> fields})
      : _fields = fields;

  @override
  final String id;
//inno_conf_id
  @override
  final String title;
// Room 1
  @override
  final InnoConferenceProvider provider;
// Zoom
  final List<InnoConferenceField> _fields;
// Zoom
  @override
  List<InnoConferenceField> get fields {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fields);
  }

  @override
  String toString() {
    return 'InnoConference(id: $id, title: $title, provider: $provider, fields: $fields)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InnoConference &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            const DeepCollectionEquality().equals(other._fields, _fields));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, provider,
      const DeepCollectionEquality().hash(_fields));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InnoConferenceCopyWith<_$_InnoConference> get copyWith =>
      __$$_InnoConferenceCopyWithImpl<_$_InnoConference>(this, _$identity);
}

abstract class _InnoConference implements InnoConference {
  const factory _InnoConference(
      {required final String id,
      required final String title,
      required final InnoConferenceProvider provider,
      required final List<InnoConferenceField> fields}) = _$_InnoConference;

  @override
  String get id;
  @override //inno_conf_id
  String get title;
  @override // Room 1
  InnoConferenceProvider get provider;
  @override // Zoom
  List<InnoConferenceField> get fields;
  @override
  @JsonKey(ignore: true)
  _$$_InnoConferenceCopyWith<_$_InnoConference> get copyWith =>
      throw _privateConstructorUsedError;
}
