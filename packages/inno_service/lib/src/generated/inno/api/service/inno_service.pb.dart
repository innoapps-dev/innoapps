///
//  Generated code. Do not modify.
//  source: inno/api/service/inno_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../model/inno_model.pb.dart' as $1;
import '../../../google/protobuf/field_mask.pb.dart' as $3;

class ListInnoServicesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInnoServicesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.service'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListInnoServicesRequest._() : super();
  factory ListInnoServicesRequest() => create();
  factory ListInnoServicesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInnoServicesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInnoServicesRequest clone() => ListInnoServicesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInnoServicesRequest copyWith(void Function(ListInnoServicesRequest) updates) => super.copyWith((message) => updates(message as ListInnoServicesRequest)) as ListInnoServicesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInnoServicesRequest create() => ListInnoServicesRequest._();
  ListInnoServicesRequest createEmptyInstance() => create();
  static $pb.PbList<ListInnoServicesRequest> createRepeated() => $pb.PbList<ListInnoServicesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListInnoServicesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInnoServicesRequest>(create);
  static ListInnoServicesRequest? _defaultInstance;
}

class ListInnoServicesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInnoServicesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.service'), createEmptyInstance: create)
    ..pc<$1.InnoService>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoServices', $pb.PbFieldType.PM, subBuilder: $1.InnoService.create)
    ..hasRequiredFields = false
  ;

  ListInnoServicesResponse._() : super();
  factory ListInnoServicesResponse({
    $core.Iterable<$1.InnoService>? innoServices,
  }) {
    final _result = create();
    if (innoServices != null) {
      _result.innoServices.addAll(innoServices);
    }
    return _result;
  }
  factory ListInnoServicesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInnoServicesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInnoServicesResponse clone() => ListInnoServicesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInnoServicesResponse copyWith(void Function(ListInnoServicesResponse) updates) => super.copyWith((message) => updates(message as ListInnoServicesResponse)) as ListInnoServicesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInnoServicesResponse create() => ListInnoServicesResponse._();
  ListInnoServicesResponse createEmptyInstance() => create();
  static $pb.PbList<ListInnoServicesResponse> createRepeated() => $pb.PbList<ListInnoServicesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListInnoServicesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInnoServicesResponse>(create);
  static ListInnoServicesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.InnoService> get innoServices => $_getList(0);
}

class GetInnoServiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetInnoServiceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.service'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetInnoServiceRequest._() : super();
  factory GetInnoServiceRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetInnoServiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInnoServiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInnoServiceRequest clone() => GetInnoServiceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInnoServiceRequest copyWith(void Function(GetInnoServiceRequest) updates) => super.copyWith((message) => updates(message as GetInnoServiceRequest)) as GetInnoServiceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetInnoServiceRequest create() => GetInnoServiceRequest._();
  GetInnoServiceRequest createEmptyInstance() => create();
  static $pb.PbList<GetInnoServiceRequest> createRepeated() => $pb.PbList<GetInnoServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static GetInnoServiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInnoServiceRequest>(create);
  static GetInnoServiceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CreateInnoServiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateInnoServiceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.service'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organisation')
    ..hasRequiredFields = false
  ;

  CreateInnoServiceRequest._() : super();
  factory CreateInnoServiceRequest({
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
  factory CreateInnoServiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateInnoServiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateInnoServiceRequest clone() => CreateInnoServiceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateInnoServiceRequest copyWith(void Function(CreateInnoServiceRequest) updates) => super.copyWith((message) => updates(message as CreateInnoServiceRequest)) as CreateInnoServiceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateInnoServiceRequest create() => CreateInnoServiceRequest._();
  CreateInnoServiceRequest createEmptyInstance() => create();
  static $pb.PbList<CreateInnoServiceRequest> createRepeated() => $pb.PbList<CreateInnoServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateInnoServiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateInnoServiceRequest>(create);
  static CreateInnoServiceRequest? _defaultInstance;

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

class UpdateInnoServiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateInnoServiceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.service'), createEmptyInstance: create)
    ..aOM<$1.InnoService>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoService', subBuilder: $1.InnoService.create)
    ..aOM<$3.FieldMask>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateMask', subBuilder: $3.FieldMask.create)
    ..hasRequiredFields = false
  ;

  UpdateInnoServiceRequest._() : super();
  factory UpdateInnoServiceRequest({
    $1.InnoService? innoService,
    $3.FieldMask? updateMask,
  }) {
    final _result = create();
    if (innoService != null) {
      _result.innoService = innoService;
    }
    if (updateMask != null) {
      _result.updateMask = updateMask;
    }
    return _result;
  }
  factory UpdateInnoServiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateInnoServiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateInnoServiceRequest clone() => UpdateInnoServiceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateInnoServiceRequest copyWith(void Function(UpdateInnoServiceRequest) updates) => super.copyWith((message) => updates(message as UpdateInnoServiceRequest)) as UpdateInnoServiceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateInnoServiceRequest create() => UpdateInnoServiceRequest._();
  UpdateInnoServiceRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateInnoServiceRequest> createRepeated() => $pb.PbList<UpdateInnoServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateInnoServiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateInnoServiceRequest>(create);
  static UpdateInnoServiceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.InnoService get innoService => $_getN(0);
  @$pb.TagNumber(1)
  set innoService($1.InnoService v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInnoService() => $_has(0);
  @$pb.TagNumber(1)
  void clearInnoService() => clearField(1);
  @$pb.TagNumber(1)
  $1.InnoService ensureInnoService() => $_ensure(0);

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

class DeleteInnoServiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteInnoServiceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.service'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  DeleteInnoServiceRequest._() : super();
  factory DeleteInnoServiceRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeleteInnoServiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteInnoServiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteInnoServiceRequest clone() => DeleteInnoServiceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteInnoServiceRequest copyWith(void Function(DeleteInnoServiceRequest) updates) => super.copyWith((message) => updates(message as DeleteInnoServiceRequest)) as DeleteInnoServiceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteInnoServiceRequest create() => DeleteInnoServiceRequest._();
  DeleteInnoServiceRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteInnoServiceRequest> createRepeated() => $pb.PbList<DeleteInnoServiceRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteInnoServiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteInnoServiceRequest>(create);
  static DeleteInnoServiceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

