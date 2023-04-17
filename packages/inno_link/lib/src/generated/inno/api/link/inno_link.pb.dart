///
//  Generated code. Do not modify.
//  source: inno/api/link/inno_link.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../model/inno_model.pb.dart' as $1;
import '../../../google/protobuf/field_mask.pb.dart' as $3;

class ListInnoLinksRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInnoLinksRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.link'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListInnoLinksRequest._() : super();
  factory ListInnoLinksRequest() => create();
  factory ListInnoLinksRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInnoLinksRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInnoLinksRequest clone() => ListInnoLinksRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInnoLinksRequest copyWith(void Function(ListInnoLinksRequest) updates) => super.copyWith((message) => updates(message as ListInnoLinksRequest)) as ListInnoLinksRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInnoLinksRequest create() => ListInnoLinksRequest._();
  ListInnoLinksRequest createEmptyInstance() => create();
  static $pb.PbList<ListInnoLinksRequest> createRepeated() => $pb.PbList<ListInnoLinksRequest>();
  @$core.pragma('dart2js:noInline')
  static ListInnoLinksRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInnoLinksRequest>(create);
  static ListInnoLinksRequest? _defaultInstance;
}

class ListInnoLinksResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInnoLinksResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.link'), createEmptyInstance: create)
    ..pc<$1.InnoLink>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoLinks', $pb.PbFieldType.PM, subBuilder: $1.InnoLink.create)
    ..hasRequiredFields = false
  ;

  ListInnoLinksResponse._() : super();
  factory ListInnoLinksResponse({
    $core.Iterable<$1.InnoLink>? innoLinks,
  }) {
    final _result = create();
    if (innoLinks != null) {
      _result.innoLinks.addAll(innoLinks);
    }
    return _result;
  }
  factory ListInnoLinksResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInnoLinksResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInnoLinksResponse clone() => ListInnoLinksResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInnoLinksResponse copyWith(void Function(ListInnoLinksResponse) updates) => super.copyWith((message) => updates(message as ListInnoLinksResponse)) as ListInnoLinksResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInnoLinksResponse create() => ListInnoLinksResponse._();
  ListInnoLinksResponse createEmptyInstance() => create();
  static $pb.PbList<ListInnoLinksResponse> createRepeated() => $pb.PbList<ListInnoLinksResponse>();
  @$core.pragma('dart2js:noInline')
  static ListInnoLinksResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInnoLinksResponse>(create);
  static ListInnoLinksResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.InnoLink> get innoLinks => $_getList(0);
}

class GetInnoLinkRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetInnoLinkRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.link'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetInnoLinkRequest._() : super();
  factory GetInnoLinkRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetInnoLinkRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInnoLinkRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInnoLinkRequest clone() => GetInnoLinkRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInnoLinkRequest copyWith(void Function(GetInnoLinkRequest) updates) => super.copyWith((message) => updates(message as GetInnoLinkRequest)) as GetInnoLinkRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetInnoLinkRequest create() => GetInnoLinkRequest._();
  GetInnoLinkRequest createEmptyInstance() => create();
  static $pb.PbList<GetInnoLinkRequest> createRepeated() => $pb.PbList<GetInnoLinkRequest>();
  @$core.pragma('dart2js:noInline')
  static GetInnoLinkRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInnoLinkRequest>(create);
  static GetInnoLinkRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CreateInnoLinkRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateInnoLinkRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.link'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..hasRequiredFields = false
  ;

  CreateInnoLinkRequest._() : super();
  factory CreateInnoLinkRequest({
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
  factory CreateInnoLinkRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateInnoLinkRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateInnoLinkRequest clone() => CreateInnoLinkRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateInnoLinkRequest copyWith(void Function(CreateInnoLinkRequest) updates) => super.copyWith((message) => updates(message as CreateInnoLinkRequest)) as CreateInnoLinkRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateInnoLinkRequest create() => CreateInnoLinkRequest._();
  CreateInnoLinkRequest createEmptyInstance() => create();
  static $pb.PbList<CreateInnoLinkRequest> createRepeated() => $pb.PbList<CreateInnoLinkRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateInnoLinkRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateInnoLinkRequest>(create);
  static CreateInnoLinkRequest? _defaultInstance;

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

class UpdateInnoLinkRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateInnoLinkRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.link'), createEmptyInstance: create)
    ..aOM<$1.InnoLink>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoLink', subBuilder: $1.InnoLink.create)
    ..aOM<$3.FieldMask>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateMask', subBuilder: $3.FieldMask.create)
    ..hasRequiredFields = false
  ;

  UpdateInnoLinkRequest._() : super();
  factory UpdateInnoLinkRequest({
    $1.InnoLink? innoLink,
    $3.FieldMask? updateMask,
  }) {
    final _result = create();
    if (innoLink != null) {
      _result.innoLink = innoLink;
    }
    if (updateMask != null) {
      _result.updateMask = updateMask;
    }
    return _result;
  }
  factory UpdateInnoLinkRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateInnoLinkRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateInnoLinkRequest clone() => UpdateInnoLinkRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateInnoLinkRequest copyWith(void Function(UpdateInnoLinkRequest) updates) => super.copyWith((message) => updates(message as UpdateInnoLinkRequest)) as UpdateInnoLinkRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateInnoLinkRequest create() => UpdateInnoLinkRequest._();
  UpdateInnoLinkRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateInnoLinkRequest> createRepeated() => $pb.PbList<UpdateInnoLinkRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateInnoLinkRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateInnoLinkRequest>(create);
  static UpdateInnoLinkRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.InnoLink get innoLink => $_getN(0);
  @$pb.TagNumber(1)
  set innoLink($1.InnoLink v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInnoLink() => $_has(0);
  @$pb.TagNumber(1)
  void clearInnoLink() => clearField(1);
  @$pb.TagNumber(1)
  $1.InnoLink ensureInnoLink() => $_ensure(0);

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

class DeleteInnoLinkRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteInnoLinkRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.link'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  DeleteInnoLinkRequest._() : super();
  factory DeleteInnoLinkRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeleteInnoLinkRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteInnoLinkRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteInnoLinkRequest clone() => DeleteInnoLinkRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteInnoLinkRequest copyWith(void Function(DeleteInnoLinkRequest) updates) => super.copyWith((message) => updates(message as DeleteInnoLinkRequest)) as DeleteInnoLinkRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteInnoLinkRequest create() => DeleteInnoLinkRequest._();
  DeleteInnoLinkRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteInnoLinkRequest> createRepeated() => $pb.PbList<DeleteInnoLinkRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteInnoLinkRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteInnoLinkRequest>(create);
  static DeleteInnoLinkRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

