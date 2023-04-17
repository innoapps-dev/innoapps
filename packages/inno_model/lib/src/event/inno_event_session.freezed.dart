// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'inno_event_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InnoEventSession {
  String get id => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime get startDateTime => throw _privateConstructorUsedError;
  DateTime get endDateTime => throw _privateConstructorUsedError;
  List<InnoConference> get conferences => throw _privateConstructorUsedError;
  List<InnoText> get texts => throw _privateConstructorUsedError;
  List<InnoLink> get links => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InnoEventSessionCopyWith<InnoEventSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnoEventSessionCopyWith<$Res> {
  factory $InnoEventSessionCopyWith(
          InnoEventSession value, $Res Function(InnoEventSession) then) =
      _$InnoEventSessionCopyWithImpl<$Res, InnoEventSession>;
  @useResult
  $Res call(
      {String id,
      String eventId,
      String title,
      String? description,
      DateTime startDateTime,
      DateTime endDateTime,
      List<InnoConference> conferences,
      List<InnoText> texts,
      List<InnoLink> links});
}

/// @nodoc
class _$InnoEventSessionCopyWithImpl<$Res, $Val extends InnoEventSession>
    implements $InnoEventSessionCopyWith<$Res> {
  _$InnoEventSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? title = null,
    Object? description = freezed,
    Object? startDateTime = null,
    Object? endDateTime = null,
    Object? conferences = null,
    Object? texts = null,
    Object? links = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startDateTime: null == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDateTime: null == endDateTime
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      conferences: null == conferences
          ? _value.conferences
          : conferences // ignore: cast_nullable_to_non_nullable
              as List<InnoConference>,
      texts: null == texts
          ? _value.texts
          : texts // ignore: cast_nullable_to_non_nullable
              as List<InnoText>,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<InnoLink>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InnoEventSessionCopyWith<$Res>
    implements $InnoEventSessionCopyWith<$Res> {
  factory _$$_InnoEventSessionCopyWith(
          _$_InnoEventSession value, $Res Function(_$_InnoEventSession) then) =
      __$$_InnoEventSessionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String eventId,
      String title,
      String? description,
      DateTime startDateTime,
      DateTime endDateTime,
      List<InnoConference> conferences,
      List<InnoText> texts,
      List<InnoLink> links});
}

/// @nodoc
class __$$_InnoEventSessionCopyWithImpl<$Res>
    extends _$InnoEventSessionCopyWithImpl<$Res, _$_InnoEventSession>
    implements _$$_InnoEventSessionCopyWith<$Res> {
  __$$_InnoEventSessionCopyWithImpl(
      _$_InnoEventSession _value, $Res Function(_$_InnoEventSession) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? title = null,
    Object? description = freezed,
    Object? startDateTime = null,
    Object? endDateTime = null,
    Object? conferences = null,
    Object? texts = null,
    Object? links = null,
  }) {
    return _then(_$_InnoEventSession(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      eventId: null == eventId
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      startDateTime: null == startDateTime
          ? _value.startDateTime
          : startDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDateTime: null == endDateTime
          ? _value.endDateTime
          : endDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      conferences: null == conferences
          ? _value._conferences
          : conferences // ignore: cast_nullable_to_non_nullable
              as List<InnoConference>,
      texts: null == texts
          ? _value._texts
          : texts // ignore: cast_nullable_to_non_nullable
              as List<InnoText>,
      links: null == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<InnoLink>,
    ));
  }
}

/// @nodoc

class _$_InnoEventSession implements _InnoEventSession {
  const _$_InnoEventSession(
      {required this.id,
      required this.eventId,
      required this.title,
      this.description,
      required this.startDateTime,
      required this.endDateTime,
      required final List<InnoConference> conferences,
      required final List<InnoText> texts,
      required final List<InnoLink> links})
      : _conferences = conferences,
        _texts = texts,
        _links = links;

  @override
  final String id;
  @override
  final String eventId;
  @override
  final String title;
  @override
  final String? description;
  @override
  final DateTime startDateTime;
  @override
  final DateTime endDateTime;
  final List<InnoConference> _conferences;
  @override
  List<InnoConference> get conferences {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_conferences);
  }

  final List<InnoText> _texts;
  @override
  List<InnoText> get texts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_texts);
  }

  final List<InnoLink> _links;
  @override
  List<InnoLink> get links {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_links);
  }

  @override
  String toString() {
    return 'InnoEventSession(id: $id, eventId: $eventId, title: $title, description: $description, startDateTime: $startDateTime, endDateTime: $endDateTime, conferences: $conferences, texts: $texts, links: $links)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InnoEventSession &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.startDateTime, startDateTime) ||
                other.startDateTime == startDateTime) &&
            (identical(other.endDateTime, endDateTime) ||
                other.endDateTime == endDateTime) &&
            const DeepCollectionEquality()
                .equals(other._conferences, _conferences) &&
            const DeepCollectionEquality().equals(other._texts, _texts) &&
            const DeepCollectionEquality().equals(other._links, _links));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      eventId,
      title,
      description,
      startDateTime,
      endDateTime,
      const DeepCollectionEquality().hash(_conferences),
      const DeepCollectionEquality().hash(_texts),
      const DeepCollectionEquality().hash(_links));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InnoEventSessionCopyWith<_$_InnoEventSession> get copyWith =>
      __$$_InnoEventSessionCopyWithImpl<_$_InnoEventSession>(this, _$identity);
}

abstract class _InnoEventSession implements InnoEventSession {
  const factory _InnoEventSession(
      {required final String id,
      required final String eventId,
      required final String title,
      final String? description,
      required final DateTime startDateTime,
      required final DateTime endDateTime,
      required final List<InnoConference> conferences,
      required final List<InnoText> texts,
      required final List<InnoLink> links}) = _$_InnoEventSession;

  @override
  String get id;
  @override
  String get eventId;
  @override
  String get title;
  @override
  String? get description;
  @override
  DateTime get startDateTime;
  @override
  DateTime get endDateTime;
  @override
  List<InnoConference> get conferences;
  @override
  List<InnoText> get texts;
  @override
  List<InnoLink> get links;
  @override
  @JsonKey(ignore: true)
  _$$_InnoEventSessionCopyWith<_$_InnoEventSession> get copyWith =>
      throw _privateConstructorUsedError;
}
