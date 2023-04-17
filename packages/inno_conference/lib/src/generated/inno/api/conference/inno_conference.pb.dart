///
//  Generated code. Do not modify.
//  source: inno/api/conference/inno_conference.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../model/inno_model.pb.dart' as $1;
import '../../../google/protobuf/field_mask.pb.dart' as $3;

class ListInnoConferencesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInnoConferencesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.conference'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListInnoConferencesRequest._() : super();
  factory ListInnoConferencesRequest() => create();
  factory ListInnoConferencesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInnoConferencesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInnoConferencesRequest clone() => ListInnoConferencesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInnoConferencesRequest copyWith(void Function(ListInnoConferencesRequest) updates) => super.copyWith((message) => updates(message as ListInnoConferencesRequest)) as ListInnoConferencesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInnoConferencesRequest create() => ListInnoConferencesRequest._();
  ListInnoConferencesRequest createEmptyInstance() => create();
  static $pb.PbList<ListInnoConferencesRequest> createRepeated() => $pb.PbList<ListInnoConferencesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListInnoConferencesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInnoConferencesRequest>(create);
  static ListInnoConferencesRequest? _defaultInstance;
}

class ListInnoConferencesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInnoConferencesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.conference'), createEmptyInstance: create)
    ..pc<$1.InnoConference>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoConferences', $pb.PbFieldType.PM, subBuilder: $1.InnoConference.create)
    ..hasRequiredFields = false
  ;

  ListInnoConferencesResponse._() : super();
  factory ListInnoConferencesResponse({
    $core.Iterable<$1.InnoConference>? innoConferences,
  }) {
    final _result = create();
    if (innoConferences != null) {
      _result.innoConferences.addAll(innoConferences);
    }
    return _result;
  }
  factory ListInnoConferencesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInnoConferencesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInnoConferencesResponse clone() => ListInnoConferencesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInnoConferencesResponse copyWith(void Function(ListInnoConferencesResponse) updates) => super.copyWith((message) => updates(message as ListInnoConferencesResponse)) as ListInnoConferencesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInnoConferencesResponse create() => ListInnoConferencesResponse._();
  ListInnoConferencesResponse createEmptyInstance() => create();
  static $pb.PbList<ListInnoConferencesResponse> createRepeated() => $pb.PbList<ListInnoConferencesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListInnoConferencesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInnoConferencesResponse>(create);
  static ListInnoConferencesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.InnoConference> get innoConferences => $_getList(0);
}

class GetInnoConferenceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetInnoConferenceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.conference'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetInnoConferenceRequest._() : super();
  factory GetInnoConferenceRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetInnoConferenceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInnoConferenceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInnoConferenceRequest clone() => GetInnoConferenceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInnoConferenceRequest copyWith(void Function(GetInnoConferenceRequest) updates) => super.copyWith((message) => updates(message as GetInnoConferenceRequest)) as GetInnoConferenceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetInnoConferenceRequest create() => GetInnoConferenceRequest._();
  GetInnoConferenceRequest createEmptyInstance() => create();
  static $pb.PbList<GetInnoConferenceRequest> createRepeated() => $pb.PbList<GetInnoConferenceRequest>();
  @$core.pragma('dart2js:noInline')
  static GetInnoConferenceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInnoConferenceRequest>(create);
  static GetInnoConferenceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CreateInnoConferenceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateInnoConferenceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.conference'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'providerId')
    ..hasRequiredFields = false
  ;

  CreateInnoConferenceRequest._() : super();
  factory CreateInnoConferenceRequest({
    $core.String? title,
    $core.String? providerId,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    if (providerId != null) {
      _result.providerId = providerId;
    }
    return _result;
  }
  factory CreateInnoConferenceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateInnoConferenceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateInnoConferenceRequest clone() => CreateInnoConferenceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateInnoConferenceRequest copyWith(void Function(CreateInnoConferenceRequest) updates) => super.copyWith((message) => updates(message as CreateInnoConferenceRequest)) as CreateInnoConferenceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateInnoConferenceRequest create() => CreateInnoConferenceRequest._();
  CreateInnoConferenceRequest createEmptyInstance() => create();
  static $pb.PbList<CreateInnoConferenceRequest> createRepeated() => $pb.PbList<CreateInnoConferenceRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateInnoConferenceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateInnoConferenceRequest>(create);
  static CreateInnoConferenceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get providerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set providerId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProviderId() => $_has(1);
  @$pb.TagNumber(2)
  void clearProviderId() => clearField(2);
}

class UpdateInnoConferenceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateInnoConferenceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.conference'), createEmptyInstance: create)
    ..aOM<$1.InnoConference>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoConference', subBuilder: $1.InnoConference.create)
    ..aOM<$3.FieldMask>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateMask', subBuilder: $3.FieldMask.create)
    ..hasRequiredFields = false
  ;

  UpdateInnoConferenceRequest._() : super();
  factory UpdateInnoConferenceRequest({
    $1.InnoConference? innoConference,
    $3.FieldMask? updateMask,
  }) {
    final _result = create();
    if (innoConference != null) {
      _result.innoConference = innoConference;
    }
    if (updateMask != null) {
      _result.updateMask = updateMask;
    }
    return _result;
  }
  factory UpdateInnoConferenceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateInnoConferenceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateInnoConferenceRequest clone() => UpdateInnoConferenceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateInnoConferenceRequest copyWith(void Function(UpdateInnoConferenceRequest) updates) => super.copyWith((message) => updates(message as UpdateInnoConferenceRequest)) as UpdateInnoConferenceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateInnoConferenceRequest create() => UpdateInnoConferenceRequest._();
  UpdateInnoConferenceRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateInnoConferenceRequest> createRepeated() => $pb.PbList<UpdateInnoConferenceRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateInnoConferenceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateInnoConferenceRequest>(create);
  static UpdateInnoConferenceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.InnoConference get innoConference => $_getN(0);
  @$pb.TagNumber(1)
  set innoConference($1.InnoConference v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInnoConference() => $_has(0);
  @$pb.TagNumber(1)
  void clearInnoConference() => clearField(1);
  @$pb.TagNumber(1)
  $1.InnoConference ensureInnoConference() => $_ensure(0);

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

class DeleteInnoConferenceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteInnoConferenceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.conference'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  DeleteInnoConferenceRequest._() : super();
  factory DeleteInnoConferenceRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeleteInnoConferenceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteInnoConferenceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteInnoConferenceRequest clone() => DeleteInnoConferenceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteInnoConferenceRequest copyWith(void Function(DeleteInnoConferenceRequest) updates) => super.copyWith((message) => updates(message as DeleteInnoConferenceRequest)) as DeleteInnoConferenceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteInnoConferenceRequest create() => DeleteInnoConferenceRequest._();
  DeleteInnoConferenceRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteInnoConferenceRequest> createRepeated() => $pb.PbList<DeleteInnoConferenceRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteInnoConferenceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteInnoConferenceRequest>(create);
  static DeleteInnoConferenceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

