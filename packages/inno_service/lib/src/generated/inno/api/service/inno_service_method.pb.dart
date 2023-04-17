///
//  Generated code. Do not modify.
//  source: inno/api/service/inno_service_method.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../model/inno_model.pb.dart' as $1;
import '../../../google/protobuf/field_mask.pb.dart' as $3;

class ListInnoServiceMethodsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInnoServiceMethodsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.service'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListInnoServiceMethodsRequest._() : super();
  factory ListInnoServiceMethodsRequest() => create();
  factory ListInnoServiceMethodsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInnoServiceMethodsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInnoServiceMethodsRequest clone() => ListInnoServiceMethodsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInnoServiceMethodsRequest copyWith(void Function(ListInnoServiceMethodsRequest) updates) => super.copyWith((message) => updates(message as ListInnoServiceMethodsRequest)) as ListInnoServiceMethodsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInnoServiceMethodsRequest create() => ListInnoServiceMethodsRequest._();
  ListInnoServiceMethodsRequest createEmptyInstance() => create();
  static $pb.PbList<ListInnoServiceMethodsRequest> createRepeated() => $pb.PbList<ListInnoServiceMethodsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListInnoServiceMethodsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInnoServiceMethodsRequest>(create);
  static ListInnoServiceMethodsRequest? _defaultInstance;
}

class ListInnoServiceMethodsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInnoServiceMethodsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.service'), createEmptyInstance: create)
    ..pc<$1.InnoServiceMethod>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoServiceMethods', $pb.PbFieldType.PM, subBuilder: $1.InnoServiceMethod.create)
    ..hasRequiredFields = false
  ;

  ListInnoServiceMethodsResponse._() : super();
  factory ListInnoServiceMethodsResponse({
    $core.Iterable<$1.InnoServiceMethod>? innoServiceMethods,
  }) {
    final _result = create();
    if (innoServiceMethods != null) {
      _result.innoServiceMethods.addAll(innoServiceMethods);
    }
    return _result;
  }
  factory ListInnoServiceMethodsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInnoServiceMethodsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInnoServiceMethodsResponse clone() => ListInnoServiceMethodsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInnoServiceMethodsResponse copyWith(void Function(ListInnoServiceMethodsResponse) updates) => super.copyWith((message) => updates(message as ListInnoServiceMethodsResponse)) as ListInnoServiceMethodsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInnoServiceMethodsResponse create() => ListInnoServiceMethodsResponse._();
  ListInnoServiceMethodsResponse createEmptyInstance() => create();
  static $pb.PbList<ListInnoServiceMethodsResponse> createRepeated() => $pb.PbList<ListInnoServiceMethodsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListInnoServiceMethodsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInnoServiceMethodsResponse>(create);
  static ListInnoServiceMethodsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.InnoServiceMethod> get innoServiceMethods => $_getList(0);
}

class GetInnoServiceMethodRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetInnoServiceMethodRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.service'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetInnoServiceMethodRequest._() : super();
  factory GetInnoServiceMethodRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetInnoServiceMethodRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInnoServiceMethodRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInnoServiceMethodRequest clone() => GetInnoServiceMethodRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInnoServiceMethodRequest copyWith(void Function(GetInnoServiceMethodRequest) updates) => super.copyWith((message) => updates(message as GetInnoServiceMethodRequest)) as GetInnoServiceMethodRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetInnoServiceMethodRequest create() => GetInnoServiceMethodRequest._();
  GetInnoServiceMethodRequest createEmptyInstance() => create();
  static $pb.PbList<GetInnoServiceMethodRequest> createRepeated() => $pb.PbList<GetInnoServiceMethodRequest>();
  @$core.pragma('dart2js:noInline')
  static GetInnoServiceMethodRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInnoServiceMethodRequest>(create);
  static GetInnoServiceMethodRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CreateInnoServiceMethodRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateInnoServiceMethodRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.service'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serviceId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..hasRequiredFields = false
  ;

  CreateInnoServiceMethodRequest._() : super();
  factory CreateInnoServiceMethodRequest({
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
  factory CreateInnoServiceMethodRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateInnoServiceMethodRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateInnoServiceMethodRequest clone() => CreateInnoServiceMethodRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateInnoServiceMethodRequest copyWith(void Function(CreateInnoServiceMethodRequest) updates) => super.copyWith((message) => updates(message as CreateInnoServiceMethodRequest)) as CreateInnoServiceMethodRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateInnoServiceMethodRequest create() => CreateInnoServiceMethodRequest._();
  CreateInnoServiceMethodRequest createEmptyInstance() => create();
  static $pb.PbList<CreateInnoServiceMethodRequest> createRepeated() => $pb.PbList<CreateInnoServiceMethodRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateInnoServiceMethodRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateInnoServiceMethodRequest>(create);
  static CreateInnoServiceMethodRequest? _defaultInstance;

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

class UpdateInnoServiceMethodRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateInnoServiceMethodRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.service'), createEmptyInstance: create)
    ..aOM<$1.InnoServiceMethod>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoServiceMethod', subBuilder: $1.InnoServiceMethod.create)
    ..aOM<$3.FieldMask>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateMask', subBuilder: $3.FieldMask.create)
    ..hasRequiredFields = false
  ;

  UpdateInnoServiceMethodRequest._() : super();
  factory UpdateInnoServiceMethodRequest({
    $1.InnoServiceMethod? innoServiceMethod,
    $3.FieldMask? updateMask,
  }) {
    final _result = create();
    if (innoServiceMethod != null) {
      _result.innoServiceMethod = innoServiceMethod;
    }
    if (updateMask != null) {
      _result.updateMask = updateMask;
    }
    return _result;
  }
  factory UpdateInnoServiceMethodRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateInnoServiceMethodRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateInnoServiceMethodRequest clone() => UpdateInnoServiceMethodRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateInnoServiceMethodRequest copyWith(void Function(UpdateInnoServiceMethodRequest) updates) => super.copyWith((message) => updates(message as UpdateInnoServiceMethodRequest)) as UpdateInnoServiceMethodRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateInnoServiceMethodRequest create() => UpdateInnoServiceMethodRequest._();
  UpdateInnoServiceMethodRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateInnoServiceMethodRequest> createRepeated() => $pb.PbList<UpdateInnoServiceMethodRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateInnoServiceMethodRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateInnoServiceMethodRequest>(create);
  static UpdateInnoServiceMethodRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.InnoServiceMethod get innoServiceMethod => $_getN(0);
  @$pb.TagNumber(1)
  set innoServiceMethod($1.InnoServiceMethod v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInnoServiceMethod() => $_has(0);
  @$pb.TagNumber(1)
  void clearInnoServiceMethod() => clearField(1);
  @$pb.TagNumber(1)
  $1.InnoServiceMethod ensureInnoServiceMethod() => $_ensure(0);

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

class DeleteInnoServiceMethodRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteInnoServiceMethodRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.service'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  DeleteInnoServiceMethodRequest._() : super();
  factory DeleteInnoServiceMethodRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeleteInnoServiceMethodRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteInnoServiceMethodRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteInnoServiceMethodRequest clone() => DeleteInnoServiceMethodRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteInnoServiceMethodRequest copyWith(void Function(DeleteInnoServiceMethodRequest) updates) => super.copyWith((message) => updates(message as DeleteInnoServiceMethodRequest)) as DeleteInnoServiceMethodRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteInnoServiceMethodRequest create() => DeleteInnoServiceMethodRequest._();
  DeleteInnoServiceMethodRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteInnoServiceMethodRequest> createRepeated() => $pb.PbList<DeleteInnoServiceMethodRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteInnoServiceMethodRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteInnoServiceMethodRequest>(create);
  static DeleteInnoServiceMethodRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

