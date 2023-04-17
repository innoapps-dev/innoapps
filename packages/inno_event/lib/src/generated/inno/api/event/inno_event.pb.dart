///
//  Generated code. Do not modify.
//  source: inno/api/event/inno_event.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../model/inno_model.pb.dart' as $1;
import '../../../google/protobuf/field_mask.pb.dart' as $3;

class ListInnoEventsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInnoEventsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.event'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListInnoEventsRequest._() : super();
  factory ListInnoEventsRequest() => create();
  factory ListInnoEventsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInnoEventsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInnoEventsRequest clone() => ListInnoEventsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInnoEventsRequest copyWith(void Function(ListInnoEventsRequest) updates) => super.copyWith((message) => updates(message as ListInnoEventsRequest)) as ListInnoEventsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInnoEventsRequest create() => ListInnoEventsRequest._();
  ListInnoEventsRequest createEmptyInstance() => create();
  static $pb.PbList<ListInnoEventsRequest> createRepeated() => $pb.PbList<ListInnoEventsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListInnoEventsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInnoEventsRequest>(create);
  static ListInnoEventsRequest? _defaultInstance;
}

class ListInnoEventsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInnoEventsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.event'), createEmptyInstance: create)
    ..pc<$1.InnoEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoEvents', $pb.PbFieldType.PM, subBuilder: $1.InnoEvent.create)
    ..hasRequiredFields = false
  ;

  ListInnoEventsResponse._() : super();
  factory ListInnoEventsResponse({
    $core.Iterable<$1.InnoEvent>? innoEvents,
  }) {
    final _result = create();
    if (innoEvents != null) {
      _result.innoEvents.addAll(innoEvents);
    }
    return _result;
  }
  factory ListInnoEventsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInnoEventsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInnoEventsResponse clone() => ListInnoEventsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInnoEventsResponse copyWith(void Function(ListInnoEventsResponse) updates) => super.copyWith((message) => updates(message as ListInnoEventsResponse)) as ListInnoEventsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInnoEventsResponse create() => ListInnoEventsResponse._();
  ListInnoEventsResponse createEmptyInstance() => create();
  static $pb.PbList<ListInnoEventsResponse> createRepeated() => $pb.PbList<ListInnoEventsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListInnoEventsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInnoEventsResponse>(create);
  static ListInnoEventsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.InnoEvent> get innoEvents => $_getList(0);
}

class GetInnoEventRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetInnoEventRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.event'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetInnoEventRequest._() : super();
  factory GetInnoEventRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetInnoEventRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInnoEventRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInnoEventRequest clone() => GetInnoEventRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInnoEventRequest copyWith(void Function(GetInnoEventRequest) updates) => super.copyWith((message) => updates(message as GetInnoEventRequest)) as GetInnoEventRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetInnoEventRequest create() => GetInnoEventRequest._();
  GetInnoEventRequest createEmptyInstance() => create();
  static $pb.PbList<GetInnoEventRequest> createRepeated() => $pb.PbList<GetInnoEventRequest>();
  @$core.pragma('dart2js:noInline')
  static GetInnoEventRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInnoEventRequest>(create);
  static GetInnoEventRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CreateInnoEventRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateInnoEventRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.event'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..hasRequiredFields = false
  ;

  CreateInnoEventRequest._() : super();
  factory CreateInnoEventRequest({
    $core.String? title,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    return _result;
  }
  factory CreateInnoEventRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateInnoEventRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateInnoEventRequest clone() => CreateInnoEventRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateInnoEventRequest copyWith(void Function(CreateInnoEventRequest) updates) => super.copyWith((message) => updates(message as CreateInnoEventRequest)) as CreateInnoEventRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateInnoEventRequest create() => CreateInnoEventRequest._();
  CreateInnoEventRequest createEmptyInstance() => create();
  static $pb.PbList<CreateInnoEventRequest> createRepeated() => $pb.PbList<CreateInnoEventRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateInnoEventRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateInnoEventRequest>(create);
  static CreateInnoEventRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);
}

class UpdateInnoEventRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateInnoEventRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.event'), createEmptyInstance: create)
    ..aOM<$1.InnoEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoEvent', subBuilder: $1.InnoEvent.create)
    ..aOM<$3.FieldMask>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateMask', subBuilder: $3.FieldMask.create)
    ..hasRequiredFields = false
  ;

  UpdateInnoEventRequest._() : super();
  factory UpdateInnoEventRequest({
    $1.InnoEvent? innoEvent,
    $3.FieldMask? updateMask,
  }) {
    final _result = create();
    if (innoEvent != null) {
      _result.innoEvent = innoEvent;
    }
    if (updateMask != null) {
      _result.updateMask = updateMask;
    }
    return _result;
  }
  factory UpdateInnoEventRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateInnoEventRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateInnoEventRequest clone() => UpdateInnoEventRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateInnoEventRequest copyWith(void Function(UpdateInnoEventRequest) updates) => super.copyWith((message) => updates(message as UpdateInnoEventRequest)) as UpdateInnoEventRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateInnoEventRequest create() => UpdateInnoEventRequest._();
  UpdateInnoEventRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateInnoEventRequest> createRepeated() => $pb.PbList<UpdateInnoEventRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateInnoEventRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateInnoEventRequest>(create);
  static UpdateInnoEventRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.InnoEvent get innoEvent => $_getN(0);
  @$pb.TagNumber(1)
  set innoEvent($1.InnoEvent v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInnoEvent() => $_has(0);
  @$pb.TagNumber(1)
  void clearInnoEvent() => clearField(1);
  @$pb.TagNumber(1)
  $1.InnoEvent ensureInnoEvent() => $_ensure(0);

  @$pb.TagNumber(2)
  $3.FieldMask get updateMask => $_getN(1);
  @$pb.TagNumber(2)
  set updateMask($3.FieldMask v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpdateMask() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateMask() => clearField(2);
  @$pb.TagNumber(2)
  $3.FieldMask ensureUpdateMask() => $_ensure(1);
}

class DeleteInnoEventRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteInnoEventRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.event'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  DeleteInnoEventRequest._() : super();
  factory DeleteInnoEventRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeleteInnoEventRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteInnoEventRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteInnoEventRequest clone() => DeleteInnoEventRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteInnoEventRequest copyWith(void Function(DeleteInnoEventRequest) updates) => super.copyWith((message) => updates(message as DeleteInnoEventRequest)) as DeleteInnoEventRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteInnoEventRequest create() => DeleteInnoEventRequest._();
  DeleteInnoEventRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteInnoEventRequest> createRepeated() => $pb.PbList<DeleteInnoEventRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteInnoEventRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteInnoEventRequest>(create);
  static DeleteInnoEventRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

