///
//  Generated code. Do not modify.
//  source: inno/model/inno_model.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $0;

class InnoConference extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InnoConference', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOM<InnoConferenceProvider>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'provider', subBuilder: InnoConferenceProvider.create)
    ..pc<InnoConferenceField>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fields', $pb.PbFieldType.PM, subBuilder: InnoConferenceField.create)
    ..hasRequiredFields = false
  ;

  InnoConference._() : super();
  factory InnoConference({
    $core.String? id,
    $core.String? title,
    InnoConferenceProvider? provider,
    $core.Iterable<InnoConferenceField>? fields,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (title != null) {
      _result.title = title;
    }
    if (provider != null) {
      _result.provider = provider;
    }
    if (fields != null) {
      _result.fields.addAll(fields);
    }
    return _result;
  }
  factory InnoConference.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InnoConference.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InnoConference clone() => InnoConference()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InnoConference copyWith(void Function(InnoConference) updates) => super.copyWith((message) => updates(message as InnoConference)) as InnoConference; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InnoConference create() => InnoConference._();
  InnoConference createEmptyInstance() => create();
  static $pb.PbList<InnoConference> createRepeated() => $pb.PbList<InnoConference>();
  @$core.pragma('dart2js:noInline')
  static InnoConference getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InnoConference>(create);
  static InnoConference? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  InnoConferenceProvider get provider => $_getN(2);
  @$pb.TagNumber(3)
  set provider(InnoConferenceProvider v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasProvider() => $_has(2);
  @$pb.TagNumber(3)
  void clearProvider() => clearField(3);
  @$pb.TagNumber(3)
  InnoConferenceProvider ensureProvider() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<InnoConferenceField> get fields => $_getList(3);
}

class InnoConferenceField extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InnoConferenceField', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value')
    ..hasRequiredFields = false
  ;

  InnoConferenceField._() : super();
  factory InnoConferenceField({
    $core.String? id,
    $core.String? name,
    $core.String? value,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory InnoConferenceField.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InnoConferenceField.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InnoConferenceField clone() => InnoConferenceField()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InnoConferenceField copyWith(void Function(InnoConferenceField) updates) => super.copyWith((message) => updates(message as InnoConferenceField)) as InnoConferenceField; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InnoConferenceField create() => InnoConferenceField._();
  InnoConferenceField createEmptyInstance() => create();
  static $pb.PbList<InnoConferenceField> createRepeated() => $pb.PbList<InnoConferenceField>();
  @$core.pragma('dart2js:noInline')
  static InnoConferenceField getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InnoConferenceField>(create);
  static InnoConferenceField? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get value => $_getSZ(2);
  @$pb.TagNumber(3)
  set value($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);
}

class InnoConferenceProvider extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InnoConferenceProvider', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..hasRequiredFields = false
  ;

  InnoConferenceProvider._() : super();
  factory InnoConferenceProvider({
    $core.String? id,
    $core.String? title,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (title != null) {
      _result.title = title;
    }
    return _result;
  }
  factory InnoConferenceProvider.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InnoConferenceProvider.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InnoConferenceProvider clone() => InnoConferenceProvider()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InnoConferenceProvider copyWith(void Function(InnoConferenceProvider) updates) => super.copyWith((message) => updates(message as InnoConferenceProvider)) as InnoConferenceProvider; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InnoConferenceProvider create() => InnoConferenceProvider._();
  InnoConferenceProvider createEmptyInstance() => create();
  static $pb.PbList<InnoConferenceProvider> createRepeated() => $pb.PbList<InnoConferenceProvider>();
  @$core.pragma('dart2js:noInline')
  static InnoConferenceProvider getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InnoConferenceProvider>(create);
  static InnoConferenceProvider? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);
}

class InnoEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InnoEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..pc<InnoEventSession>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessions', $pb.PbFieldType.PM, subBuilder: InnoEventSession.create)
    ..hasRequiredFields = false
  ;

  InnoEvent._() : super();
  factory InnoEvent({
    $core.String? id,
    $core.String? title,
    $core.Iterable<InnoEventSession>? sessions,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (title != null) {
      _result.title = title;
    }
    if (sessions != null) {
      _result.sessions.addAll(sessions);
    }
    return _result;
  }
  factory InnoEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InnoEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InnoEvent clone() => InnoEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InnoEvent copyWith(void Function(InnoEvent) updates) => super.copyWith((message) => updates(message as InnoEvent)) as InnoEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InnoEvent create() => InnoEvent._();
  InnoEvent createEmptyInstance() => create();
  static $pb.PbList<InnoEvent> createRepeated() => $pb.PbList<InnoEvent>();
  @$core.pragma('dart2js:noInline')
  static InnoEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InnoEvent>(create);
  static InnoEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<InnoEventSession> get sessions => $_getList(2);
}

class InnoEventSession extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InnoEventSession', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOM<$0.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startDateTime', subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endDateTime', subBuilder: $0.Timestamp.create)
    ..pc<InnoConference>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'conferences', $pb.PbFieldType.PM, subBuilder: InnoConference.create)
    ..pc<InnoLink>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'links', $pb.PbFieldType.PM, subBuilder: InnoLink.create)
    ..pc<InnoText>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'texts', $pb.PbFieldType.PM, subBuilder: InnoText.create)
    ..hasRequiredFields = false
  ;

  InnoEventSession._() : super();
  factory InnoEventSession({
    $core.String? id,
    $core.String? eventId,
    $core.String? title,
    $core.String? description,
    $0.Timestamp? startDateTime,
    $0.Timestamp? endDateTime,
    $core.Iterable<InnoConference>? conferences,
    $core.Iterable<InnoLink>? links,
    $core.Iterable<InnoText>? texts,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (eventId != null) {
      _result.eventId = eventId;
    }
    if (title != null) {
      _result.title = title;
    }
    if (description != null) {
      _result.description = description;
    }
    if (startDateTime != null) {
      _result.startDateTime = startDateTime;
    }
    if (endDateTime != null) {
      _result.endDateTime = endDateTime;
    }
    if (conferences != null) {
      _result.conferences.addAll(conferences);
    }
    if (links != null) {
      _result.links.addAll(links);
    }
    if (texts != null) {
      _result.texts.addAll(texts);
    }
    return _result;
  }
  factory InnoEventSession.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InnoEventSession.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InnoEventSession clone() => InnoEventSession()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InnoEventSession copyWith(void Function(InnoEventSession) updates) => super.copyWith((message) => updates(message as InnoEventSession)) as InnoEventSession; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InnoEventSession create() => InnoEventSession._();
  InnoEventSession createEmptyInstance() => create();
  static $pb.PbList<InnoEventSession> createRepeated() => $pb.PbList<InnoEventSession>();
  @$core.pragma('dart2js:noInline')
  static InnoEventSession getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InnoEventSession>(create);
  static InnoEventSession? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get eventId => $_getSZ(1);
  @$pb.TagNumber(2)
  set eventId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEventId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEventId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  $0.Timestamp get startDateTime => $_getN(4);
  @$pb.TagNumber(5)
  set startDateTime($0.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStartDateTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearStartDateTime() => clearField(5);
  @$pb.TagNumber(5)
  $0.Timestamp ensureStartDateTime() => $_ensure(4);

  @$pb.TagNumber(6)
  $0.Timestamp get endDateTime => $_getN(5);
  @$pb.TagNumber(6)
  set endDateTime($0.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasEndDateTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearEndDateTime() => clearField(6);
  @$pb.TagNumber(6)
  $0.Timestamp ensureEndDateTime() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.List<InnoConference> get conferences => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<InnoLink> get links => $_getList(7);

  @$pb.TagNumber(9)
  $core.List<InnoText> get texts => $_getList(8);
}

class InnoFile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InnoFile', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..hasRequiredFields = false
  ;

  InnoFile._() : super();
  factory InnoFile({
    $core.String? id,
    $core.String? title,
    $core.String? url,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (title != null) {
      _result.title = title;
    }
    if (url != null) {
      _result.url = url;
    }
    return _result;
  }
  factory InnoFile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InnoFile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InnoFile clone() => InnoFile()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InnoFile copyWith(void Function(InnoFile) updates) => super.copyWith((message) => updates(message as InnoFile)) as InnoFile; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InnoFile create() => InnoFile._();
  InnoFile createEmptyInstance() => create();
  static $pb.PbList<InnoFile> createRepeated() => $pb.PbList<InnoFile>();
  @$core.pragma('dart2js:noInline')
  static InnoFile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InnoFile>(create);
  static InnoFile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get url => $_getSZ(2);
  @$pb.TagNumber(3)
  set url($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrl() => clearField(3);
}

class InnoImage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InnoImage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..hasRequiredFields = false
  ;

  InnoImage._() : super();
  factory InnoImage({
    $core.String? id,
    $core.String? title,
    $core.String? url,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (title != null) {
      _result.title = title;
    }
    if (url != null) {
      _result.url = url;
    }
    return _result;
  }
  factory InnoImage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InnoImage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InnoImage clone() => InnoImage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InnoImage copyWith(void Function(InnoImage) updates) => super.copyWith((message) => updates(message as InnoImage)) as InnoImage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InnoImage create() => InnoImage._();
  InnoImage createEmptyInstance() => create();
  static $pb.PbList<InnoImage> createRepeated() => $pb.PbList<InnoImage>();
  @$core.pragma('dart2js:noInline')
  static InnoImage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InnoImage>(create);
  static InnoImage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get url => $_getSZ(2);
  @$pb.TagNumber(3)
  set url($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrl() => clearField(3);
}

class InnoLink extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InnoLink', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..hasRequiredFields = false
  ;

  InnoLink._() : super();
  factory InnoLink({
    $core.String? id,
    $core.String? title,
    $core.String? url,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (title != null) {
      _result.title = title;
    }
    if (url != null) {
      _result.url = url;
    }
    return _result;
  }
  factory InnoLink.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InnoLink.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InnoLink clone() => InnoLink()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InnoLink copyWith(void Function(InnoLink) updates) => super.copyWith((message) => updates(message as InnoLink)) as InnoLink; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InnoLink create() => InnoLink._();
  InnoLink createEmptyInstance() => create();
  static $pb.PbList<InnoLink> createRepeated() => $pb.PbList<InnoLink>();
  @$core.pragma('dart2js:noInline')
  static InnoLink getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InnoLink>(create);
  static InnoLink? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get url => $_getSZ(2);
  @$pb.TagNumber(3)
  set url($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrl() => clearField(3);
}

class InnoResource extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InnoResource', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serviceEntityId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tag')
    ..hasRequiredFields = false
  ;

  InnoResource._() : super();
  factory InnoResource({
    $core.String? id,
    $core.String? serviceEntityId,
    $core.String? tag,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (serviceEntityId != null) {
      _result.serviceEntityId = serviceEntityId;
    }
    if (tag != null) {
      _result.tag = tag;
    }
    return _result;
  }
  factory InnoResource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InnoResource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InnoResource clone() => InnoResource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InnoResource copyWith(void Function(InnoResource) updates) => super.copyWith((message) => updates(message as InnoResource)) as InnoResource; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InnoResource create() => InnoResource._();
  InnoResource createEmptyInstance() => create();
  static $pb.PbList<InnoResource> createRepeated() => $pb.PbList<InnoResource>();
  @$core.pragma('dart2js:noInline')
  static InnoResource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InnoResource>(create);
  static InnoResource? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get serviceEntityId => $_getSZ(1);
  @$pb.TagNumber(2)
  set serviceEntityId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasServiceEntityId() => $_has(1);
  @$pb.TagNumber(2)
  void clearServiceEntityId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get tag => $_getSZ(2);
  @$pb.TagNumber(3)
  set tag($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTag() => $_has(2);
  @$pb.TagNumber(3)
  void clearTag() => clearField(3);
}

class InnoRole extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InnoRole', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..hasRequiredFields = false
  ;

  InnoRole._() : super();
  factory InnoRole({
    $core.String? id,
    $core.String? title,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (title != null) {
      _result.title = title;
    }
    return _result;
  }
  factory InnoRole.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InnoRole.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InnoRole clone() => InnoRole()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InnoRole copyWith(void Function(InnoRole) updates) => super.copyWith((message) => updates(message as InnoRole)) as InnoRole; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InnoRole create() => InnoRole._();
  InnoRole createEmptyInstance() => create();
  static $pb.PbList<InnoRole> createRepeated() => $pb.PbList<InnoRole>();
  @$core.pragma('dart2js:noInline')
  static InnoRole getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InnoRole>(create);
  static InnoRole? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);
}

class InnoService extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InnoService', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organisation')
    ..hasRequiredFields = false
  ;

  InnoService._() : super();
  factory InnoService({
    $core.String? id,
    $core.String? title,
    $core.String? version,
    $core.String? organisation,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (title != null) {
      _result.title = title;
    }
    if (version != null) {
      _result.version = version;
    }
    if (organisation != null) {
      _result.organisation = organisation;
    }
    return _result;
  }
  factory InnoService.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InnoService.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InnoService clone() => InnoService()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InnoService copyWith(void Function(InnoService) updates) => super.copyWith((message) => updates(message as InnoService)) as InnoService; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InnoService create() => InnoService._();
  InnoService createEmptyInstance() => create();
  static $pb.PbList<InnoService> createRepeated() => $pb.PbList<InnoService>();
  @$core.pragma('dart2js:noInline')
  static InnoService getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InnoService>(create);
  static InnoService? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get version => $_getSZ(2);
  @$pb.TagNumber(3)
  set version($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get organisation => $_getSZ(3);
  @$pb.TagNumber(4)
  set organisation($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOrganisation() => $_has(3);
  @$pb.TagNumber(4)
  void clearOrganisation() => clearField(4);
}

class InnoServiceMethod extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InnoServiceMethod', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serviceId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..hasRequiredFields = false
  ;

  InnoServiceMethod._() : super();
  factory InnoServiceMethod({
    $core.String? id,
    $core.String? serviceId,
    $core.String? title,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (serviceId != null) {
      _result.serviceId = serviceId;
    }
    if (title != null) {
      _result.title = title;
    }
    return _result;
  }
  factory InnoServiceMethod.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InnoServiceMethod.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InnoServiceMethod clone() => InnoServiceMethod()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InnoServiceMethod copyWith(void Function(InnoServiceMethod) updates) => super.copyWith((message) => updates(message as InnoServiceMethod)) as InnoServiceMethod; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InnoServiceMethod create() => InnoServiceMethod._();
  InnoServiceMethod createEmptyInstance() => create();
  static $pb.PbList<InnoServiceMethod> createRepeated() => $pb.PbList<InnoServiceMethod>();
  @$core.pragma('dart2js:noInline')
  static InnoServiceMethod getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InnoServiceMethod>(create);
  static InnoServiceMethod? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get serviceId => $_getSZ(1);
  @$pb.TagNumber(2)
  set serviceId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasServiceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearServiceId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => clearField(3);
}

class InnoText extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InnoText', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'text')
    ..hasRequiredFields = false
  ;

  InnoText._() : super();
  factory InnoText({
    $core.String? id,
    $core.String? title,
    $core.String? text,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (title != null) {
      _result.title = title;
    }
    if (text != null) {
      _result.text = text;
    }
    return _result;
  }
  factory InnoText.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InnoText.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InnoText clone() => InnoText()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InnoText copyWith(void Function(InnoText) updates) => super.copyWith((message) => updates(message as InnoText)) as InnoText; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InnoText create() => InnoText._();
  InnoText createEmptyInstance() => create();
  static $pb.PbList<InnoText> createRepeated() => $pb.PbList<InnoText>();
  @$core.pragma('dart2js:noInline')
  static InnoText getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InnoText>(create);
  static InnoText? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get text => $_getSZ(2);
  @$pb.TagNumber(3)
  set text($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasText() => $_has(2);
  @$pb.TagNumber(3)
  void clearText() => clearField(3);
}

class InnoUser extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InnoUser', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.model'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phone')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mainRoleId')
    ..pc<InnoRole>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roles', $pb.PbFieldType.PM, subBuilder: InnoRole.create)
    ..hasRequiredFields = false
  ;

  InnoUser._() : super();
  factory InnoUser({
    $core.String? uid,
    $core.String? firstName,
    $core.String? lastName,
    $core.String? email,
    $core.String? phone,
    $core.String? mainRoleId,
    $core.Iterable<InnoRole>? roles,
  }) {
    final _result = create();
    if (uid != null) {
      _result.uid = uid;
    }
    if (firstName != null) {
      _result.firstName = firstName;
    }
    if (lastName != null) {
      _result.lastName = lastName;
    }
    if (email != null) {
      _result.email = email;
    }
    if (phone != null) {
      _result.phone = phone;
    }
    if (mainRoleId != null) {
      _result.mainRoleId = mainRoleId;
    }
    if (roles != null) {
      _result.roles.addAll(roles);
    }
    return _result;
  }
  factory InnoUser.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InnoUser.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InnoUser clone() => InnoUser()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InnoUser copyWith(void Function(InnoUser) updates) => super.copyWith((message) => updates(message as InnoUser)) as InnoUser; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InnoUser create() => InnoUser._();
  InnoUser createEmptyInstance() => create();
  static $pb.PbList<InnoUser> createRepeated() => $pb.PbList<InnoUser>();
  @$core.pragma('dart2js:noInline')
  static InnoUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InnoUser>(create);
  static InnoUser? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get firstName => $_getSZ(1);
  @$pb.TagNumber(2)
  set firstName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFirstName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirstName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get lastName => $_getSZ(2);
  @$pb.TagNumber(3)
  set lastName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastName() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get email => $_getSZ(3);
  @$pb.TagNumber(4)
  set email($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEmail() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmail() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get phone => $_getSZ(4);
  @$pb.TagNumber(5)
  set phone($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPhone() => $_has(4);
  @$pb.TagNumber(5)
  void clearPhone() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get mainRoleId => $_getSZ(5);
  @$pb.TagNumber(6)
  set mainRoleId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMainRoleId() => $_has(5);
  @$pb.TagNumber(6)
  void clearMainRoleId() => clearField(6);

  @$pb.TagNumber(7)
  $core.List<InnoRole> get roles => $_getList(6);
}

