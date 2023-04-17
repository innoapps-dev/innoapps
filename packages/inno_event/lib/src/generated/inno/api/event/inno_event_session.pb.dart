///
//  Generated code. Do not modify.
//  source: inno/api/event/inno_event_session.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../model/inno_model.pb.dart' as $1;
import '../../../google/protobuf/timestamp.pb.dart' as $3;
import '../../../google/protobuf/field_mask.pb.dart' as $4;

class ListInnoEventSessionsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInnoEventSessionsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.event'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoEventId')
    ..hasRequiredFields = false
  ;

  ListInnoEventSessionsRequest._() : super();
  factory ListInnoEventSessionsRequest({
    $core.String? innoEventId,
  }) {
    final _result = create();
    if (innoEventId != null) {
      _result.innoEventId = innoEventId;
    }
    return _result;
  }
  factory ListInnoEventSessionsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInnoEventSessionsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInnoEventSessionsRequest clone() => ListInnoEventSessionsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInnoEventSessionsRequest copyWith(void Function(ListInnoEventSessionsRequest) updates) => super.copyWith((message) => updates(message as ListInnoEventSessionsRequest)) as ListInnoEventSessionsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInnoEventSessionsRequest create() => ListInnoEventSessionsRequest._();
  ListInnoEventSessionsRequest createEmptyInstance() => create();
  static $pb.PbList<ListInnoEventSessionsRequest> createRepeated() => $pb.PbList<ListInnoEventSessionsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListInnoEventSessionsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInnoEventSessionsRequest>(create);
  static ListInnoEventSessionsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get innoEventId => $_getSZ(0);
  @$pb.TagNumber(1)
  set innoEventId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInnoEventId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInnoEventId() => clearField(1);
}

class ListInnoEventSessionsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInnoEventSessionsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.event'), createEmptyInstance: create)
    ..pc<$1.InnoEventSession>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoEventSessions', $pb.PbFieldType.PM, subBuilder: $1.InnoEventSession.create)
    ..hasRequiredFields = false
  ;

  ListInnoEventSessionsResponse._() : super();
  factory ListInnoEventSessionsResponse({
    $core.Iterable<$1.InnoEventSession>? innoEventSessions,
  }) {
    final _result = create();
    if (innoEventSessions != null) {
      _result.innoEventSessions.addAll(innoEventSessions);
    }
    return _result;
  }
  factory ListInnoEventSessionsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInnoEventSessionsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInnoEventSessionsResponse clone() => ListInnoEventSessionsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInnoEventSessionsResponse copyWith(void Function(ListInnoEventSessionsResponse) updates) => super.copyWith((message) => updates(message as ListInnoEventSessionsResponse)) as ListInnoEventSessionsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInnoEventSessionsResponse create() => ListInnoEventSessionsResponse._();
  ListInnoEventSessionsResponse createEmptyInstance() => create();
  static $pb.PbList<ListInnoEventSessionsResponse> createRepeated() => $pb.PbList<ListInnoEventSessionsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListInnoEventSessionsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInnoEventSessionsResponse>(create);
  static ListInnoEventSessionsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.InnoEventSession> get innoEventSessions => $_getList(0);
}

class GetInnoEventSessionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetInnoEventSessionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.event'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetInnoEventSessionRequest._() : super();
  factory GetInnoEventSessionRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetInnoEventSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInnoEventSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInnoEventSessionRequest clone() => GetInnoEventSessionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInnoEventSessionRequest copyWith(void Function(GetInnoEventSessionRequest) updates) => super.copyWith((message) => updates(message as GetInnoEventSessionRequest)) as GetInnoEventSessionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetInnoEventSessionRequest create() => GetInnoEventSessionRequest._();
  GetInnoEventSessionRequest createEmptyInstance() => create();
  static $pb.PbList<GetInnoEventSessionRequest> createRepeated() => $pb.PbList<GetInnoEventSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static GetInnoEventSessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInnoEventSessionRequest>(create);
  static GetInnoEventSessionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CreateInnoEventSessionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateInnoEventSessionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.event'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoEventId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOM<$3.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startDateTime', subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endDateTime', subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false
  ;

  CreateInnoEventSessionRequest._() : super();
  factory CreateInnoEventSessionRequest({
    $core.String? innoEventId,
    $core.String? title,
    $core.String? description,
    $3.Timestamp? startDateTime,
    $3.Timestamp? endDateTime,
  }) {
    final _result = create();
    if (innoEventId != null) {
      _result.innoEventId = innoEventId;
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
    return _result;
  }
  factory CreateInnoEventSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateInnoEventSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateInnoEventSessionRequest clone() => CreateInnoEventSessionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateInnoEventSessionRequest copyWith(void Function(CreateInnoEventSessionRequest) updates) => super.copyWith((message) => updates(message as CreateInnoEventSessionRequest)) as CreateInnoEventSessionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateInnoEventSessionRequest create() => CreateInnoEventSessionRequest._();
  CreateInnoEventSessionRequest createEmptyInstance() => create();
  static $pb.PbList<CreateInnoEventSessionRequest> createRepeated() => $pb.PbList<CreateInnoEventSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateInnoEventSessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateInnoEventSessionRequest>(create);
  static CreateInnoEventSessionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get innoEventId => $_getSZ(0);
  @$pb.TagNumber(1)
  set innoEventId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInnoEventId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInnoEventId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $3.Timestamp get startDateTime => $_getN(3);
  @$pb.TagNumber(4)
  set startDateTime($3.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStartDateTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartDateTime() => clearField(4);
  @$pb.TagNumber(4)
  $3.Timestamp ensureStartDateTime() => $_ensure(3);

  @$pb.TagNumber(5)
  $3.Timestamp get endDateTime => $_getN(4);
  @$pb.TagNumber(5)
  set endDateTime($3.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasEndDateTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndDateTime() => clearField(5);
  @$pb.TagNumber(5)
  $3.Timestamp ensureEndDateTime() => $_ensure(4);
}

class UpdateInnoEventSessionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateInnoEventSessionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.event'), createEmptyInstance: create)
    ..aOM<$1.InnoEventSession>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoEventSession', subBuilder: $1.InnoEventSession.create)
    ..aOM<$4.FieldMask>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateMask', subBuilder: $4.FieldMask.create)
    ..hasRequiredFields = false
  ;

  UpdateInnoEventSessionRequest._() : super();
  factory UpdateInnoEventSessionRequest({
    $1.InnoEventSession? innoEventSession,
    $4.FieldMask? updateMask,
  }) {
    final _result = create();
    if (innoEventSession != null) {
      _result.innoEventSession = innoEventSession;
    }
    if (updateMask != null) {
      _result.updateMask = updateMask;
    }
    return _result;
  }
  factory UpdateInnoEventSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateInnoEventSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateInnoEventSessionRequest clone() => UpdateInnoEventSessionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateInnoEventSessionRequest copyWith(void Function(UpdateInnoEventSessionRequest) updates) => super.copyWith((message) => updates(message as UpdateInnoEventSessionRequest)) as UpdateInnoEventSessionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateInnoEventSessionRequest create() => UpdateInnoEventSessionRequest._();
  UpdateInnoEventSessionRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateInnoEventSessionRequest> createRepeated() => $pb.PbList<UpdateInnoEventSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateInnoEventSessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateInnoEventSessionRequest>(create);
  static UpdateInnoEventSessionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.InnoEventSession get innoEventSession => $_getN(0);
  @$pb.TagNumber(1)
  set innoEventSession($1.InnoEventSession v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInnoEventSession() => $_has(0);
  @$pb.TagNumber(1)
  void clearInnoEventSession() => clearField(1);
  @$pb.TagNumber(1)
  $1.InnoEventSession ensureInnoEventSession() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.FieldMask get updateMask => $_getN(1);
  @$pb.TagNumber(2)
  set updateMask($4.FieldMask v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpdateMask() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateMask() => clearField(2);
  @$pb.TagNumber(2)
  $4.FieldMask ensureUpdateMask() => $_ensure(1);
}

class DeleteInnoEventSessionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteInnoEventSessionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.event'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  DeleteInnoEventSessionRequest._() : super();
  factory DeleteInnoEventSessionRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeleteInnoEventSessionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteInnoEventSessionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteInnoEventSessionRequest clone() => DeleteInnoEventSessionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteInnoEventSessionRequest copyWith(void Function(DeleteInnoEventSessionRequest) updates) => super.copyWith((message) => updates(message as DeleteInnoEventSessionRequest)) as DeleteInnoEventSessionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteInnoEventSessionRequest create() => DeleteInnoEventSessionRequest._();
  DeleteInnoEventSessionRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteInnoEventSessionRequest> createRepeated() => $pb.PbList<DeleteInnoEventSessionRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteInnoEventSessionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteInnoEventSessionRequest>(create);
  static DeleteInnoEventSessionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

