///
//  Generated code. Do not modify.
//  source: inno/api/user/inno_user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../model/inno_model.pb.dart' as $1;
import '../../../google/protobuf/field_mask.pb.dart' as $3;

class ListInnoUsersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInnoUsersRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.user'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListInnoUsersRequest._() : super();
  factory ListInnoUsersRequest() => create();
  factory ListInnoUsersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInnoUsersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInnoUsersRequest clone() => ListInnoUsersRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInnoUsersRequest copyWith(void Function(ListInnoUsersRequest) updates) => super.copyWith((message) => updates(message as ListInnoUsersRequest)) as ListInnoUsersRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInnoUsersRequest create() => ListInnoUsersRequest._();
  ListInnoUsersRequest createEmptyInstance() => create();
  static $pb.PbList<ListInnoUsersRequest> createRepeated() => $pb.PbList<ListInnoUsersRequest>();
  @$core.pragma('dart2js:noInline')
  static ListInnoUsersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInnoUsersRequest>(create);
  static ListInnoUsersRequest? _defaultInstance;
}

class ListInnoUsersResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInnoUsersResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.user'), createEmptyInstance: create)
    ..pc<$1.InnoUser>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoUsers', $pb.PbFieldType.PM, subBuilder: $1.InnoUser.create)
    ..hasRequiredFields = false
  ;

  ListInnoUsersResponse._() : super();
  factory ListInnoUsersResponse({
    $core.Iterable<$1.InnoUser>? innoUsers,
  }) {
    final _result = create();
    if (innoUsers != null) {
      _result.innoUsers.addAll(innoUsers);
    }
    return _result;
  }
  factory ListInnoUsersResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInnoUsersResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInnoUsersResponse clone() => ListInnoUsersResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInnoUsersResponse copyWith(void Function(ListInnoUsersResponse) updates) => super.copyWith((message) => updates(message as ListInnoUsersResponse)) as ListInnoUsersResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInnoUsersResponse create() => ListInnoUsersResponse._();
  ListInnoUsersResponse createEmptyInstance() => create();
  static $pb.PbList<ListInnoUsersResponse> createRepeated() => $pb.PbList<ListInnoUsersResponse>();
  @$core.pragma('dart2js:noInline')
  static ListInnoUsersResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInnoUsersResponse>(create);
  static ListInnoUsersResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.InnoUser> get innoUsers => $_getList(0);
}

class GetInnoUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetInnoUserRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uid')
    ..hasRequiredFields = false
  ;

  GetInnoUserRequest._() : super();
  factory GetInnoUserRequest({
    $core.String? uid,
  }) {
    final _result = create();
    if (uid != null) {
      _result.uid = uid;
    }
    return _result;
  }
  factory GetInnoUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInnoUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInnoUserRequest clone() => GetInnoUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInnoUserRequest copyWith(void Function(GetInnoUserRequest) updates) => super.copyWith((message) => updates(message as GetInnoUserRequest)) as GetInnoUserRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetInnoUserRequest create() => GetInnoUserRequest._();
  GetInnoUserRequest createEmptyInstance() => create();
  static $pb.PbList<GetInnoUserRequest> createRepeated() => $pb.PbList<GetInnoUserRequest>();
  @$core.pragma('dart2js:noInline')
  static GetInnoUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInnoUserRequest>(create);
  static GetInnoUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);
}

class CreateInnoUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateInnoUserRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'email')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mainRoleId')
    ..hasRequiredFields = false
  ;

  CreateInnoUserRequest._() : super();
  factory CreateInnoUserRequest({
    $core.String? uid,
    $core.String? firstName,
    $core.String? lastName,
    $core.String? email,
    $core.String? mainRoleId,
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
    if (mainRoleId != null) {
      _result.mainRoleId = mainRoleId;
    }
    return _result;
  }
  factory CreateInnoUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateInnoUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateInnoUserRequest clone() => CreateInnoUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateInnoUserRequest copyWith(void Function(CreateInnoUserRequest) updates) => super.copyWith((message) => updates(message as CreateInnoUserRequest)) as CreateInnoUserRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateInnoUserRequest create() => CreateInnoUserRequest._();
  CreateInnoUserRequest createEmptyInstance() => create();
  static $pb.PbList<CreateInnoUserRequest> createRepeated() => $pb.PbList<CreateInnoUserRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateInnoUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateInnoUserRequest>(create);
  static CreateInnoUserRequest? _defaultInstance;

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
  $core.String get mainRoleId => $_getSZ(4);
  @$pb.TagNumber(5)
  set mainRoleId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMainRoleId() => $_has(4);
  @$pb.TagNumber(5)
  void clearMainRoleId() => clearField(5);
}

class UpdateInnoUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateInnoUserRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.user'), createEmptyInstance: create)
    ..aOM<$1.InnoUser>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoUser', subBuilder: $1.InnoUser.create)
    ..aOM<$3.FieldMask>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateMask', subBuilder: $3.FieldMask.create)
    ..hasRequiredFields = false
  ;

  UpdateInnoUserRequest._() : super();
  factory UpdateInnoUserRequest({
    $1.InnoUser? innoUser,
    $3.FieldMask? updateMask,
  }) {
    final _result = create();
    if (innoUser != null) {
      _result.innoUser = innoUser;
    }
    if (updateMask != null) {
      _result.updateMask = updateMask;
    }
    return _result;
  }
  factory UpdateInnoUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateInnoUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateInnoUserRequest clone() => UpdateInnoUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateInnoUserRequest copyWith(void Function(UpdateInnoUserRequest) updates) => super.copyWith((message) => updates(message as UpdateInnoUserRequest)) as UpdateInnoUserRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateInnoUserRequest create() => UpdateInnoUserRequest._();
  UpdateInnoUserRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateInnoUserRequest> createRepeated() => $pb.PbList<UpdateInnoUserRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateInnoUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateInnoUserRequest>(create);
  static UpdateInnoUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.InnoUser get innoUser => $_getN(0);
  @$pb.TagNumber(1)
  set innoUser($1.InnoUser v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInnoUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearInnoUser() => clearField(1);
  @$pb.TagNumber(1)
  $1.InnoUser ensureInnoUser() => $_ensure(0);

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

class DeleteInnoUserRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteInnoUserRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.user'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uid')
    ..hasRequiredFields = false
  ;

  DeleteInnoUserRequest._() : super();
  factory DeleteInnoUserRequest({
    $core.String? uid,
  }) {
    final _result = create();
    if (uid != null) {
      _result.uid = uid;
    }
    return _result;
  }
  factory DeleteInnoUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteInnoUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteInnoUserRequest clone() => DeleteInnoUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteInnoUserRequest copyWith(void Function(DeleteInnoUserRequest) updates) => super.copyWith((message) => updates(message as DeleteInnoUserRequest)) as DeleteInnoUserRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteInnoUserRequest create() => DeleteInnoUserRequest._();
  DeleteInnoUserRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteInnoUserRequest> createRepeated() => $pb.PbList<DeleteInnoUserRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteInnoUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteInnoUserRequest>(create);
  static DeleteInnoUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);
}

