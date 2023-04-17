///
//  Generated code. Do not modify.
//  source: inno/api/file/inno_file.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../model/inno_model.pb.dart' as $1;
import '../../../google/protobuf/field_mask.pb.dart' as $3;

class ListInnoFilesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInnoFilesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.file'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListInnoFilesRequest._() : super();
  factory ListInnoFilesRequest() => create();
  factory ListInnoFilesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInnoFilesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInnoFilesRequest clone() => ListInnoFilesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInnoFilesRequest copyWith(void Function(ListInnoFilesRequest) updates) => super.copyWith((message) => updates(message as ListInnoFilesRequest)) as ListInnoFilesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInnoFilesRequest create() => ListInnoFilesRequest._();
  ListInnoFilesRequest createEmptyInstance() => create();
  static $pb.PbList<ListInnoFilesRequest> createRepeated() => $pb.PbList<ListInnoFilesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListInnoFilesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInnoFilesRequest>(create);
  static ListInnoFilesRequest? _defaultInstance;
}

class ListInnoFilesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInnoFilesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.file'), createEmptyInstance: create)
    ..pc<$1.InnoFile>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoFiles', $pb.PbFieldType.PM, subBuilder: $1.InnoFile.create)
    ..hasRequiredFields = false
  ;

  ListInnoFilesResponse._() : super();
  factory ListInnoFilesResponse({
    $core.Iterable<$1.InnoFile>? innoFiles,
  }) {
    final _result = create();
    if (innoFiles != null) {
      _result.innoFiles.addAll(innoFiles);
    }
    return _result;
  }
  factory ListInnoFilesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInnoFilesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInnoFilesResponse clone() => ListInnoFilesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInnoFilesResponse copyWith(void Function(ListInnoFilesResponse) updates) => super.copyWith((message) => updates(message as ListInnoFilesResponse)) as ListInnoFilesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInnoFilesResponse create() => ListInnoFilesResponse._();
  ListInnoFilesResponse createEmptyInstance() => create();
  static $pb.PbList<ListInnoFilesResponse> createRepeated() => $pb.PbList<ListInnoFilesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListInnoFilesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInnoFilesResponse>(create);
  static ListInnoFilesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.InnoFile> get innoFiles => $_getList(0);
}

class GetInnoFileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetInnoFileRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.file'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetInnoFileRequest._() : super();
  factory GetInnoFileRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetInnoFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInnoFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInnoFileRequest clone() => GetInnoFileRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInnoFileRequest copyWith(void Function(GetInnoFileRequest) updates) => super.copyWith((message) => updates(message as GetInnoFileRequest)) as GetInnoFileRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetInnoFileRequest create() => GetInnoFileRequest._();
  GetInnoFileRequest createEmptyInstance() => create();
  static $pb.PbList<GetInnoFileRequest> createRepeated() => $pb.PbList<GetInnoFileRequest>();
  @$core.pragma('dart2js:noInline')
  static GetInnoFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInnoFileRequest>(create);
  static GetInnoFileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CreateInnoFileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateInnoFileRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.file'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..hasRequiredFields = false
  ;

  CreateInnoFileRequest._() : super();
  factory CreateInnoFileRequest({
    $core.String? title,
    $core.String? url,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    if (url != null) {
      _result.url = url;
    }
    return _result;
  }
  factory CreateInnoFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateInnoFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateInnoFileRequest clone() => CreateInnoFileRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateInnoFileRequest copyWith(void Function(CreateInnoFileRequest) updates) => super.copyWith((message) => updates(message as CreateInnoFileRequest)) as CreateInnoFileRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateInnoFileRequest create() => CreateInnoFileRequest._();
  CreateInnoFileRequest createEmptyInstance() => create();
  static $pb.PbList<CreateInnoFileRequest> createRepeated() => $pb.PbList<CreateInnoFileRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateInnoFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateInnoFileRequest>(create);
  static CreateInnoFileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => clearField(2);
}

class UpdateInnoFileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateInnoFileRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.file'), createEmptyInstance: create)
    ..aOM<$1.InnoFile>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoFile', subBuilder: $1.InnoFile.create)
    ..aOM<$3.FieldMask>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateMask', subBuilder: $3.FieldMask.create)
    ..hasRequiredFields = false
  ;

  UpdateInnoFileRequest._() : super();
  factory UpdateInnoFileRequest({
    $1.InnoFile? innoFile,
    $3.FieldMask? updateMask,
  }) {
    final _result = create();
    if (innoFile != null) {
      _result.innoFile = innoFile;
    }
    if (updateMask != null) {
      _result.updateMask = updateMask;
    }
    return _result;
  }
  factory UpdateInnoFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateInnoFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateInnoFileRequest clone() => UpdateInnoFileRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateInnoFileRequest copyWith(void Function(UpdateInnoFileRequest) updates) => super.copyWith((message) => updates(message as UpdateInnoFileRequest)) as UpdateInnoFileRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateInnoFileRequest create() => UpdateInnoFileRequest._();
  UpdateInnoFileRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateInnoFileRequest> createRepeated() => $pb.PbList<UpdateInnoFileRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateInnoFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateInnoFileRequest>(create);
  static UpdateInnoFileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.InnoFile get innoFile => $_getN(0);
  @$pb.TagNumber(1)
  set innoFile($1.InnoFile v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInnoFile() => $_has(0);
  @$pb.TagNumber(1)
  void clearInnoFile() => clearField(1);
  @$pb.TagNumber(1)
  $1.InnoFile ensureInnoFile() => $_ensure(0);

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

class DeleteInnoFileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteInnoFileRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.file'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  DeleteInnoFileRequest._() : super();
  factory DeleteInnoFileRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeleteInnoFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteInnoFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteInnoFileRequest clone() => DeleteInnoFileRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteInnoFileRequest copyWith(void Function(DeleteInnoFileRequest) updates) => super.copyWith((message) => updates(message as DeleteInnoFileRequest)) as DeleteInnoFileRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteInnoFileRequest create() => DeleteInnoFileRequest._();
  DeleteInnoFileRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteInnoFileRequest> createRepeated() => $pb.PbList<DeleteInnoFileRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteInnoFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteInnoFileRequest>(create);
  static DeleteInnoFileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

