///
//  Generated code. Do not modify.
//  source: inno/api/role/inno_role.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../model/inno_model.pb.dart' as $1;
import '../../../google/protobuf/field_mask.pb.dart' as $3;

class ListInnoRolesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInnoRolesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.role'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListInnoRolesRequest._() : super();
  factory ListInnoRolesRequest() => create();
  factory ListInnoRolesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInnoRolesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInnoRolesRequest clone() => ListInnoRolesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInnoRolesRequest copyWith(void Function(ListInnoRolesRequest) updates) => super.copyWith((message) => updates(message as ListInnoRolesRequest)) as ListInnoRolesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInnoRolesRequest create() => ListInnoRolesRequest._();
  ListInnoRolesRequest createEmptyInstance() => create();
  static $pb.PbList<ListInnoRolesRequest> createRepeated() => $pb.PbList<ListInnoRolesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListInnoRolesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInnoRolesRequest>(create);
  static ListInnoRolesRequest? _defaultInstance;
}

class ListInnoRolesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInnoRolesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.role'), createEmptyInstance: create)
    ..pc<$1.InnoRole>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoRoles', $pb.PbFieldType.PM, subBuilder: $1.InnoRole.create)
    ..hasRequiredFields = false
  ;

  ListInnoRolesResponse._() : super();
  factory ListInnoRolesResponse({
    $core.Iterable<$1.InnoRole>? innoRoles,
  }) {
    final _result = create();
    if (innoRoles != null) {
      _result.innoRoles.addAll(innoRoles);
    }
    return _result;
  }
  factory ListInnoRolesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInnoRolesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInnoRolesResponse clone() => ListInnoRolesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInnoRolesResponse copyWith(void Function(ListInnoRolesResponse) updates) => super.copyWith((message) => updates(message as ListInnoRolesResponse)) as ListInnoRolesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInnoRolesResponse create() => ListInnoRolesResponse._();
  ListInnoRolesResponse createEmptyInstance() => create();
  static $pb.PbList<ListInnoRolesResponse> createRepeated() => $pb.PbList<ListInnoRolesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListInnoRolesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInnoRolesResponse>(create);
  static ListInnoRolesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.InnoRole> get innoRoles => $_getList(0);
}

class GetInnoRoleRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetInnoRoleRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.role'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetInnoRoleRequest._() : super();
  factory GetInnoRoleRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetInnoRoleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInnoRoleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInnoRoleRequest clone() => GetInnoRoleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInnoRoleRequest copyWith(void Function(GetInnoRoleRequest) updates) => super.copyWith((message) => updates(message as GetInnoRoleRequest)) as GetInnoRoleRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetInnoRoleRequest create() => GetInnoRoleRequest._();
  GetInnoRoleRequest createEmptyInstance() => create();
  static $pb.PbList<GetInnoRoleRequest> createRepeated() => $pb.PbList<GetInnoRoleRequest>();
  @$core.pragma('dart2js:noInline')
  static GetInnoRoleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInnoRoleRequest>(create);
  static GetInnoRoleRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CreateInnoRoleRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateInnoRoleRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.role'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..hasRequiredFields = false
  ;

  CreateInnoRoleRequest._() : super();
  factory CreateInnoRoleRequest({
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
  factory CreateInnoRoleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateInnoRoleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateInnoRoleRequest clone() => CreateInnoRoleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateInnoRoleRequest copyWith(void Function(CreateInnoRoleRequest) updates) => super.copyWith((message) => updates(message as CreateInnoRoleRequest)) as CreateInnoRoleRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateInnoRoleRequest create() => CreateInnoRoleRequest._();
  CreateInnoRoleRequest createEmptyInstance() => create();
  static $pb.PbList<CreateInnoRoleRequest> createRepeated() => $pb.PbList<CreateInnoRoleRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateInnoRoleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateInnoRoleRequest>(create);
  static CreateInnoRoleRequest? _defaultInstance;

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

class UpdateInnoRoleRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateInnoRoleRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.role'), createEmptyInstance: create)
    ..aOM<$1.InnoRole>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoRole', subBuilder: $1.InnoRole.create)
    ..aOM<$3.FieldMask>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateMask', subBuilder: $3.FieldMask.create)
    ..hasRequiredFields = false
  ;

  UpdateInnoRoleRequest._() : super();
  factory UpdateInnoRoleRequest({
    $1.InnoRole? innoRole,
    $3.FieldMask? updateMask,
  }) {
    final _result = create();
    if (innoRole != null) {
      _result.innoRole = innoRole;
    }
    if (updateMask != null) {
      _result.updateMask = updateMask;
    }
    return _result;
  }
  factory UpdateInnoRoleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateInnoRoleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateInnoRoleRequest clone() => UpdateInnoRoleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateInnoRoleRequest copyWith(void Function(UpdateInnoRoleRequest) updates) => super.copyWith((message) => updates(message as UpdateInnoRoleRequest)) as UpdateInnoRoleRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateInnoRoleRequest create() => UpdateInnoRoleRequest._();
  UpdateInnoRoleRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateInnoRoleRequest> createRepeated() => $pb.PbList<UpdateInnoRoleRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateInnoRoleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateInnoRoleRequest>(create);
  static UpdateInnoRoleRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.InnoRole get innoRole => $_getN(0);
  @$pb.TagNumber(1)
  set innoRole($1.InnoRole v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInnoRole() => $_has(0);
  @$pb.TagNumber(1)
  void clearInnoRole() => clearField(1);
  @$pb.TagNumber(1)
  $1.InnoRole ensureInnoRole() => $_ensure(0);

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

class DeleteInnoRoleRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteInnoRoleRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.role'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  DeleteInnoRoleRequest._() : super();
  factory DeleteInnoRoleRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeleteInnoRoleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteInnoRoleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteInnoRoleRequest clone() => DeleteInnoRoleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteInnoRoleRequest copyWith(void Function(DeleteInnoRoleRequest) updates) => super.copyWith((message) => updates(message as DeleteInnoRoleRequest)) as DeleteInnoRoleRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteInnoRoleRequest create() => DeleteInnoRoleRequest._();
  DeleteInnoRoleRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteInnoRoleRequest> createRepeated() => $pb.PbList<DeleteInnoRoleRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteInnoRoleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteInnoRoleRequest>(create);
  static DeleteInnoRoleRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

