///
//  Generated code. Do not modify.
//  source: inno/api/image/inno_image.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../model/inno_model.pb.dart' as $1;
import '../../../google/protobuf/field_mask.pb.dart' as $3;

class ListInnoImagesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInnoImagesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.image'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListInnoImagesRequest._() : super();
  factory ListInnoImagesRequest() => create();
  factory ListInnoImagesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInnoImagesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInnoImagesRequest clone() => ListInnoImagesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInnoImagesRequest copyWith(void Function(ListInnoImagesRequest) updates) => super.copyWith((message) => updates(message as ListInnoImagesRequest)) as ListInnoImagesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInnoImagesRequest create() => ListInnoImagesRequest._();
  ListInnoImagesRequest createEmptyInstance() => create();
  static $pb.PbList<ListInnoImagesRequest> createRepeated() => $pb.PbList<ListInnoImagesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListInnoImagesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInnoImagesRequest>(create);
  static ListInnoImagesRequest? _defaultInstance;
}

class ListInnoImagesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInnoImagesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.image'), createEmptyInstance: create)
    ..pc<$1.InnoImage>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoImages', $pb.PbFieldType.PM, subBuilder: $1.InnoImage.create)
    ..hasRequiredFields = false
  ;

  ListInnoImagesResponse._() : super();
  factory ListInnoImagesResponse({
    $core.Iterable<$1.InnoImage>? innoImages,
  }) {
    final _result = create();
    if (innoImages != null) {
      _result.innoImages.addAll(innoImages);
    }
    return _result;
  }
  factory ListInnoImagesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInnoImagesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInnoImagesResponse clone() => ListInnoImagesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInnoImagesResponse copyWith(void Function(ListInnoImagesResponse) updates) => super.copyWith((message) => updates(message as ListInnoImagesResponse)) as ListInnoImagesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInnoImagesResponse create() => ListInnoImagesResponse._();
  ListInnoImagesResponse createEmptyInstance() => create();
  static $pb.PbList<ListInnoImagesResponse> createRepeated() => $pb.PbList<ListInnoImagesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListInnoImagesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInnoImagesResponse>(create);
  static ListInnoImagesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.InnoImage> get innoImages => $_getList(0);
}

class GetInnoImageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetInnoImageRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.image'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetInnoImageRequest._() : super();
  factory GetInnoImageRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetInnoImageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInnoImageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInnoImageRequest clone() => GetInnoImageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInnoImageRequest copyWith(void Function(GetInnoImageRequest) updates) => super.copyWith((message) => updates(message as GetInnoImageRequest)) as GetInnoImageRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetInnoImageRequest create() => GetInnoImageRequest._();
  GetInnoImageRequest createEmptyInstance() => create();
  static $pb.PbList<GetInnoImageRequest> createRepeated() => $pb.PbList<GetInnoImageRequest>();
  @$core.pragma('dart2js:noInline')
  static GetInnoImageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInnoImageRequest>(create);
  static GetInnoImageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CreateInnoImageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateInnoImageRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.image'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'url')
    ..hasRequiredFields = false
  ;

  CreateInnoImageRequest._() : super();
  factory CreateInnoImageRequest({
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
  factory CreateInnoImageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateInnoImageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateInnoImageRequest clone() => CreateInnoImageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateInnoImageRequest copyWith(void Function(CreateInnoImageRequest) updates) => super.copyWith((message) => updates(message as CreateInnoImageRequest)) as CreateInnoImageRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateInnoImageRequest create() => CreateInnoImageRequest._();
  CreateInnoImageRequest createEmptyInstance() => create();
  static $pb.PbList<CreateInnoImageRequest> createRepeated() => $pb.PbList<CreateInnoImageRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateInnoImageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateInnoImageRequest>(create);
  static CreateInnoImageRequest? _defaultInstance;

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

class UpdateInnoImageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateInnoImageRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.image'), createEmptyInstance: create)
    ..aOM<$1.InnoImage>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoImage', subBuilder: $1.InnoImage.create)
    ..aOM<$3.FieldMask>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateMask', subBuilder: $3.FieldMask.create)
    ..hasRequiredFields = false
  ;

  UpdateInnoImageRequest._() : super();
  factory UpdateInnoImageRequest({
    $1.InnoImage? innoImage,
    $3.FieldMask? updateMask,
  }) {
    final _result = create();
    if (innoImage != null) {
      _result.innoImage = innoImage;
    }
    if (updateMask != null) {
      _result.updateMask = updateMask;
    }
    return _result;
  }
  factory UpdateInnoImageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateInnoImageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateInnoImageRequest clone() => UpdateInnoImageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateInnoImageRequest copyWith(void Function(UpdateInnoImageRequest) updates) => super.copyWith((message) => updates(message as UpdateInnoImageRequest)) as UpdateInnoImageRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateInnoImageRequest create() => UpdateInnoImageRequest._();
  UpdateInnoImageRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateInnoImageRequest> createRepeated() => $pb.PbList<UpdateInnoImageRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateInnoImageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateInnoImageRequest>(create);
  static UpdateInnoImageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.InnoImage get innoImage => $_getN(0);
  @$pb.TagNumber(1)
  set innoImage($1.InnoImage v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInnoImage() => $_has(0);
  @$pb.TagNumber(1)
  void clearInnoImage() => clearField(1);
  @$pb.TagNumber(1)
  $1.InnoImage ensureInnoImage() => $_ensure(0);

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

class DeleteInnoImageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteInnoImageRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.image'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  DeleteInnoImageRequest._() : super();
  factory DeleteInnoImageRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeleteInnoImageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteInnoImageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteInnoImageRequest clone() => DeleteInnoImageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteInnoImageRequest copyWith(void Function(DeleteInnoImageRequest) updates) => super.copyWith((message) => updates(message as DeleteInnoImageRequest)) as DeleteInnoImageRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteInnoImageRequest create() => DeleteInnoImageRequest._();
  DeleteInnoImageRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteInnoImageRequest> createRepeated() => $pb.PbList<DeleteInnoImageRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteInnoImageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteInnoImageRequest>(create);
  static DeleteInnoImageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

