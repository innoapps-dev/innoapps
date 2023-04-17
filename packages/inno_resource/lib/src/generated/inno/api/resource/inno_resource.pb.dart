///
//  Generated code. Do not modify.
//  source: inno/api/resource/inno_resource.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../model/inno_model.pb.dart' as $1;
import '../../../google/protobuf/field_mask.pb.dart' as $3;

class ListInnoResourcesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInnoResourcesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.resource'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListInnoResourcesRequest._() : super();
  factory ListInnoResourcesRequest() => create();
  factory ListInnoResourcesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInnoResourcesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInnoResourcesRequest clone() => ListInnoResourcesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInnoResourcesRequest copyWith(void Function(ListInnoResourcesRequest) updates) => super.copyWith((message) => updates(message as ListInnoResourcesRequest)) as ListInnoResourcesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInnoResourcesRequest create() => ListInnoResourcesRequest._();
  ListInnoResourcesRequest createEmptyInstance() => create();
  static $pb.PbList<ListInnoResourcesRequest> createRepeated() => $pb.PbList<ListInnoResourcesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListInnoResourcesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInnoResourcesRequest>(create);
  static ListInnoResourcesRequest? _defaultInstance;
}

class ListInnoResourcesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInnoResourcesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.resource'), createEmptyInstance: create)
    ..pc<$1.InnoResource>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoResources', $pb.PbFieldType.PM, subBuilder: $1.InnoResource.create)
    ..hasRequiredFields = false
  ;

  ListInnoResourcesResponse._() : super();
  factory ListInnoResourcesResponse({
    $core.Iterable<$1.InnoResource>? innoResources,
  }) {
    final _result = create();
    if (innoResources != null) {
      _result.innoResources.addAll(innoResources);
    }
    return _result;
  }
  factory ListInnoResourcesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInnoResourcesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInnoResourcesResponse clone() => ListInnoResourcesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInnoResourcesResponse copyWith(void Function(ListInnoResourcesResponse) updates) => super.copyWith((message) => updates(message as ListInnoResourcesResponse)) as ListInnoResourcesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInnoResourcesResponse create() => ListInnoResourcesResponse._();
  ListInnoResourcesResponse createEmptyInstance() => create();
  static $pb.PbList<ListInnoResourcesResponse> createRepeated() => $pb.PbList<ListInnoResourcesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListInnoResourcesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInnoResourcesResponse>(create);
  static ListInnoResourcesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.InnoResource> get innoResources => $_getList(0);
}

class GetInnoResourceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetInnoResourceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.resource'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetInnoResourceRequest._() : super();
  factory GetInnoResourceRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetInnoResourceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInnoResourceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInnoResourceRequest clone() => GetInnoResourceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInnoResourceRequest copyWith(void Function(GetInnoResourceRequest) updates) => super.copyWith((message) => updates(message as GetInnoResourceRequest)) as GetInnoResourceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetInnoResourceRequest create() => GetInnoResourceRequest._();
  GetInnoResourceRequest createEmptyInstance() => create();
  static $pb.PbList<GetInnoResourceRequest> createRepeated() => $pb.PbList<GetInnoResourceRequest>();
  @$core.pragma('dart2js:noInline')
  static GetInnoResourceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInnoResourceRequest>(create);
  static GetInnoResourceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CreateInnoResourceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateInnoResourceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.resource'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serviceId')
    ..hasRequiredFields = false
  ;

  CreateInnoResourceRequest._() : super();
  factory CreateInnoResourceRequest({
    $core.String? serviceId,
  }) {
    final _result = create();
    if (serviceId != null) {
      _result.serviceId = serviceId;
    }
    return _result;
  }
  factory CreateInnoResourceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateInnoResourceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateInnoResourceRequest clone() => CreateInnoResourceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateInnoResourceRequest copyWith(void Function(CreateInnoResourceRequest) updates) => super.copyWith((message) => updates(message as CreateInnoResourceRequest)) as CreateInnoResourceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateInnoResourceRequest create() => CreateInnoResourceRequest._();
  CreateInnoResourceRequest createEmptyInstance() => create();
  static $pb.PbList<CreateInnoResourceRequest> createRepeated() => $pb.PbList<CreateInnoResourceRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateInnoResourceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateInnoResourceRequest>(create);
  static CreateInnoResourceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get serviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set serviceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasServiceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearServiceId() => clearField(1);
}

class UpdateInnoResourceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateInnoResourceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.resource'), createEmptyInstance: create)
    ..aOM<$1.InnoResource>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoResource', subBuilder: $1.InnoResource.create)
    ..aOM<$3.FieldMask>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateMask', subBuilder: $3.FieldMask.create)
    ..hasRequiredFields = false
  ;

  UpdateInnoResourceRequest._() : super();
  factory UpdateInnoResourceRequest({
    $1.InnoResource? innoResource,
    $3.FieldMask? updateMask,
  }) {
    final _result = create();
    if (innoResource != null) {
      _result.innoResource = innoResource;
    }
    if (updateMask != null) {
      _result.updateMask = updateMask;
    }
    return _result;
  }
  factory UpdateInnoResourceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateInnoResourceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateInnoResourceRequest clone() => UpdateInnoResourceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateInnoResourceRequest copyWith(void Function(UpdateInnoResourceRequest) updates) => super.copyWith((message) => updates(message as UpdateInnoResourceRequest)) as UpdateInnoResourceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateInnoResourceRequest create() => UpdateInnoResourceRequest._();
  UpdateInnoResourceRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateInnoResourceRequest> createRepeated() => $pb.PbList<UpdateInnoResourceRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateInnoResourceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateInnoResourceRequest>(create);
  static UpdateInnoResourceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.InnoResource get innoResource => $_getN(0);
  @$pb.TagNumber(1)
  set innoResource($1.InnoResource v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInnoResource() => $_has(0);
  @$pb.TagNumber(1)
  void clearInnoResource() => clearField(1);
  @$pb.TagNumber(1)
  $1.InnoResource ensureInnoResource() => $_ensure(0);

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

class DeleteInnoResourceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteInnoResourceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.resource'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  DeleteInnoResourceRequest._() : super();
  factory DeleteInnoResourceRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeleteInnoResourceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteInnoResourceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteInnoResourceRequest clone() => DeleteInnoResourceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteInnoResourceRequest copyWith(void Function(DeleteInnoResourceRequest) updates) => super.copyWith((message) => updates(message as DeleteInnoResourceRequest)) as DeleteInnoResourceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteInnoResourceRequest create() => DeleteInnoResourceRequest._();
  DeleteInnoResourceRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteInnoResourceRequest> createRepeated() => $pb.PbList<DeleteInnoResourceRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteInnoResourceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteInnoResourceRequest>(create);
  static DeleteInnoResourceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

