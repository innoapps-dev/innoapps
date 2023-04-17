///
//  Generated code. Do not modify.
//  source: inno/api/conference/inno_conference_field.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../model/inno_model.pb.dart' as $1;
import '../../../google/protobuf/field_mask.pb.dart' as $3;

class ListInnoConferenceFieldsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInnoConferenceFieldsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.conference'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListInnoConferenceFieldsRequest._() : super();
  factory ListInnoConferenceFieldsRequest() => create();
  factory ListInnoConferenceFieldsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInnoConferenceFieldsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInnoConferenceFieldsRequest clone() => ListInnoConferenceFieldsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInnoConferenceFieldsRequest copyWith(void Function(ListInnoConferenceFieldsRequest) updates) => super.copyWith((message) => updates(message as ListInnoConferenceFieldsRequest)) as ListInnoConferenceFieldsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInnoConferenceFieldsRequest create() => ListInnoConferenceFieldsRequest._();
  ListInnoConferenceFieldsRequest createEmptyInstance() => create();
  static $pb.PbList<ListInnoConferenceFieldsRequest> createRepeated() => $pb.PbList<ListInnoConferenceFieldsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListInnoConferenceFieldsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInnoConferenceFieldsRequest>(create);
  static ListInnoConferenceFieldsRequest? _defaultInstance;
}

class ListInnoConferenceFieldsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInnoConferenceFieldsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.conference'), createEmptyInstance: create)
    ..pc<$1.InnoConferenceField>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoConferenceFields', $pb.PbFieldType.PM, subBuilder: $1.InnoConferenceField.create)
    ..hasRequiredFields = false
  ;

  ListInnoConferenceFieldsResponse._() : super();
  factory ListInnoConferenceFieldsResponse({
    $core.Iterable<$1.InnoConferenceField>? innoConferenceFields,
  }) {
    final _result = create();
    if (innoConferenceFields != null) {
      _result.innoConferenceFields.addAll(innoConferenceFields);
    }
    return _result;
  }
  factory ListInnoConferenceFieldsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInnoConferenceFieldsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInnoConferenceFieldsResponse clone() => ListInnoConferenceFieldsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInnoConferenceFieldsResponse copyWith(void Function(ListInnoConferenceFieldsResponse) updates) => super.copyWith((message) => updates(message as ListInnoConferenceFieldsResponse)) as ListInnoConferenceFieldsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInnoConferenceFieldsResponse create() => ListInnoConferenceFieldsResponse._();
  ListInnoConferenceFieldsResponse createEmptyInstance() => create();
  static $pb.PbList<ListInnoConferenceFieldsResponse> createRepeated() => $pb.PbList<ListInnoConferenceFieldsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListInnoConferenceFieldsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInnoConferenceFieldsResponse>(create);
  static ListInnoConferenceFieldsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.InnoConferenceField> get innoConferenceFields => $_getList(0);
}

class GetInnoConferenceFieldRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetInnoConferenceFieldRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.conference'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetInnoConferenceFieldRequest._() : super();
  factory GetInnoConferenceFieldRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetInnoConferenceFieldRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInnoConferenceFieldRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInnoConferenceFieldRequest clone() => GetInnoConferenceFieldRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInnoConferenceFieldRequest copyWith(void Function(GetInnoConferenceFieldRequest) updates) => super.copyWith((message) => updates(message as GetInnoConferenceFieldRequest)) as GetInnoConferenceFieldRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetInnoConferenceFieldRequest create() => GetInnoConferenceFieldRequest._();
  GetInnoConferenceFieldRequest createEmptyInstance() => create();
  static $pb.PbList<GetInnoConferenceFieldRequest> createRepeated() => $pb.PbList<GetInnoConferenceFieldRequest>();
  @$core.pragma('dart2js:noInline')
  static GetInnoConferenceFieldRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInnoConferenceFieldRequest>(create);
  static GetInnoConferenceFieldRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CreateInnoConferenceFieldRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateInnoConferenceFieldRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.conference'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'conferenceId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value')
    ..hasRequiredFields = false
  ;

  CreateInnoConferenceFieldRequest._() : super();
  factory CreateInnoConferenceFieldRequest({
    $core.String? conferenceId,
    $core.String? title,
    $core.String? value,
  }) {
    final _result = create();
    if (conferenceId != null) {
      _result.conferenceId = conferenceId;
    }
    if (title != null) {
      _result.title = title;
    }
    if (value != null) {
      _result.value = value;
    }
    return _result;
  }
  factory CreateInnoConferenceFieldRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateInnoConferenceFieldRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateInnoConferenceFieldRequest clone() => CreateInnoConferenceFieldRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateInnoConferenceFieldRequest copyWith(void Function(CreateInnoConferenceFieldRequest) updates) => super.copyWith((message) => updates(message as CreateInnoConferenceFieldRequest)) as CreateInnoConferenceFieldRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateInnoConferenceFieldRequest create() => CreateInnoConferenceFieldRequest._();
  CreateInnoConferenceFieldRequest createEmptyInstance() => create();
  static $pb.PbList<CreateInnoConferenceFieldRequest> createRepeated() => $pb.PbList<CreateInnoConferenceFieldRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateInnoConferenceFieldRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateInnoConferenceFieldRequest>(create);
  static CreateInnoConferenceFieldRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get conferenceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set conferenceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConferenceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearConferenceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get value => $_getSZ(2);
  @$pb.TagNumber(3)
  set value($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);
}

class UpdateInnoConferenceFieldRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateInnoConferenceFieldRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.conference'), createEmptyInstance: create)
    ..aOM<$1.InnoConferenceField>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoConferenceField', subBuilder: $1.InnoConferenceField.create)
    ..aOM<$3.FieldMask>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateMask', subBuilder: $3.FieldMask.create)
    ..hasRequiredFields = false
  ;

  UpdateInnoConferenceFieldRequest._() : super();
  factory UpdateInnoConferenceFieldRequest({
    $1.InnoConferenceField? innoConferenceField,
    $3.FieldMask? updateMask,
  }) {
    final _result = create();
    if (innoConferenceField != null) {
      _result.innoConferenceField = innoConferenceField;
    }
    if (updateMask != null) {
      _result.updateMask = updateMask;
    }
    return _result;
  }
  factory UpdateInnoConferenceFieldRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateInnoConferenceFieldRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateInnoConferenceFieldRequest clone() => UpdateInnoConferenceFieldRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateInnoConferenceFieldRequest copyWith(void Function(UpdateInnoConferenceFieldRequest) updates) => super.copyWith((message) => updates(message as UpdateInnoConferenceFieldRequest)) as UpdateInnoConferenceFieldRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateInnoConferenceFieldRequest create() => UpdateInnoConferenceFieldRequest._();
  UpdateInnoConferenceFieldRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateInnoConferenceFieldRequest> createRepeated() => $pb.PbList<UpdateInnoConferenceFieldRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateInnoConferenceFieldRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateInnoConferenceFieldRequest>(create);
  static UpdateInnoConferenceFieldRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.InnoConferenceField get innoConferenceField => $_getN(0);
  @$pb.TagNumber(1)
  set innoConferenceField($1.InnoConferenceField v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInnoConferenceField() => $_has(0);
  @$pb.TagNumber(1)
  void clearInnoConferenceField() => clearField(1);
  @$pb.TagNumber(1)
  $1.InnoConferenceField ensureInnoConferenceField() => $_ensure(0);

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

class DeleteInnoConferenceFieldRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteInnoConferenceFieldRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.conference'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  DeleteInnoConferenceFieldRequest._() : super();
  factory DeleteInnoConferenceFieldRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeleteInnoConferenceFieldRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteInnoConferenceFieldRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteInnoConferenceFieldRequest clone() => DeleteInnoConferenceFieldRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteInnoConferenceFieldRequest copyWith(void Function(DeleteInnoConferenceFieldRequest) updates) => super.copyWith((message) => updates(message as DeleteInnoConferenceFieldRequest)) as DeleteInnoConferenceFieldRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteInnoConferenceFieldRequest create() => DeleteInnoConferenceFieldRequest._();
  DeleteInnoConferenceFieldRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteInnoConferenceFieldRequest> createRepeated() => $pb.PbList<DeleteInnoConferenceFieldRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteInnoConferenceFieldRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteInnoConferenceFieldRequest>(create);
  static DeleteInnoConferenceFieldRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

