///
//  Generated code. Do not modify.
//  source: inno/api/text/inno_text.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../model/inno_model.pb.dart' as $1;
import '../../../google/protobuf/field_mask.pb.dart' as $3;

class ListInnoTextsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInnoTextsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.text'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListInnoTextsRequest._() : super();
  factory ListInnoTextsRequest() => create();
  factory ListInnoTextsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInnoTextsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInnoTextsRequest clone() => ListInnoTextsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInnoTextsRequest copyWith(void Function(ListInnoTextsRequest) updates) => super.copyWith((message) => updates(message as ListInnoTextsRequest)) as ListInnoTextsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInnoTextsRequest create() => ListInnoTextsRequest._();
  ListInnoTextsRequest createEmptyInstance() => create();
  static $pb.PbList<ListInnoTextsRequest> createRepeated() => $pb.PbList<ListInnoTextsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListInnoTextsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInnoTextsRequest>(create);
  static ListInnoTextsRequest? _defaultInstance;
}

class ListInnoTextsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInnoTextsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.text'), createEmptyInstance: create)
    ..pc<$1.InnoText>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoTexts', $pb.PbFieldType.PM, subBuilder: $1.InnoText.create)
    ..hasRequiredFields = false
  ;

  ListInnoTextsResponse._() : super();
  factory ListInnoTextsResponse({
    $core.Iterable<$1.InnoText>? innoTexts,
  }) {
    final _result = create();
    if (innoTexts != null) {
      _result.innoTexts.addAll(innoTexts);
    }
    return _result;
  }
  factory ListInnoTextsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInnoTextsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInnoTextsResponse clone() => ListInnoTextsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInnoTextsResponse copyWith(void Function(ListInnoTextsResponse) updates) => super.copyWith((message) => updates(message as ListInnoTextsResponse)) as ListInnoTextsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInnoTextsResponse create() => ListInnoTextsResponse._();
  ListInnoTextsResponse createEmptyInstance() => create();
  static $pb.PbList<ListInnoTextsResponse> createRepeated() => $pb.PbList<ListInnoTextsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListInnoTextsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInnoTextsResponse>(create);
  static ListInnoTextsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.InnoText> get innoTexts => $_getList(0);
}

class GetInnoTextRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetInnoTextRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.text'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetInnoTextRequest._() : super();
  factory GetInnoTextRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetInnoTextRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInnoTextRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInnoTextRequest clone() => GetInnoTextRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInnoTextRequest copyWith(void Function(GetInnoTextRequest) updates) => super.copyWith((message) => updates(message as GetInnoTextRequest)) as GetInnoTextRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetInnoTextRequest create() => GetInnoTextRequest._();
  GetInnoTextRequest createEmptyInstance() => create();
  static $pb.PbList<GetInnoTextRequest> createRepeated() => $pb.PbList<GetInnoTextRequest>();
  @$core.pragma('dart2js:noInline')
  static GetInnoTextRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInnoTextRequest>(create);
  static GetInnoTextRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CreateInnoTextRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateInnoTextRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.text'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..hasRequiredFields = false
  ;

  CreateInnoTextRequest._() : super();
  factory CreateInnoTextRequest({
    $core.String? title,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    return _result;
  }
  factory CreateInnoTextRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateInnoTextRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateInnoTextRequest clone() => CreateInnoTextRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateInnoTextRequest copyWith(void Function(CreateInnoTextRequest) updates) => super.copyWith((message) => updates(message as CreateInnoTextRequest)) as CreateInnoTextRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateInnoTextRequest create() => CreateInnoTextRequest._();
  CreateInnoTextRequest createEmptyInstance() => create();
  static $pb.PbList<CreateInnoTextRequest> createRepeated() => $pb.PbList<CreateInnoTextRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateInnoTextRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateInnoTextRequest>(create);
  static CreateInnoTextRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);
}

class UpdateInnoTextRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateInnoTextRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.text'), createEmptyInstance: create)
    ..aOM<$1.InnoText>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoText', subBuilder: $1.InnoText.create)
    ..aOM<$3.FieldMask>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateMask', subBuilder: $3.FieldMask.create)
    ..hasRequiredFields = false
  ;

  UpdateInnoTextRequest._() : super();
  factory UpdateInnoTextRequest({
    $1.InnoText? innoText,
    $3.FieldMask? updateMask,
  }) {
    final _result = create();
    if (innoText != null) {
      _result.innoText = innoText;
    }
    if (updateMask != null) {
      _result.updateMask = updateMask;
    }
    return _result;
  }
  factory UpdateInnoTextRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateInnoTextRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateInnoTextRequest clone() => UpdateInnoTextRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateInnoTextRequest copyWith(void Function(UpdateInnoTextRequest) updates) => super.copyWith((message) => updates(message as UpdateInnoTextRequest)) as UpdateInnoTextRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateInnoTextRequest create() => UpdateInnoTextRequest._();
  UpdateInnoTextRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateInnoTextRequest> createRepeated() => $pb.PbList<UpdateInnoTextRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateInnoTextRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateInnoTextRequest>(create);
  static UpdateInnoTextRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.InnoText get innoText => $_getN(0);
  @$pb.TagNumber(1)
  set innoText($1.InnoText v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInnoText() => $_has(0);
  @$pb.TagNumber(1)
  void clearInnoText() => clearField(1);
  @$pb.TagNumber(1)
  $1.InnoText ensureInnoText() => $_ensure(0);

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

class DeleteInnoTextRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteInnoTextRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.text'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  DeleteInnoTextRequest._() : super();
  factory DeleteInnoTextRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeleteInnoTextRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteInnoTextRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteInnoTextRequest clone() => DeleteInnoTextRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteInnoTextRequest copyWith(void Function(DeleteInnoTextRequest) updates) => super.copyWith((message) => updates(message as DeleteInnoTextRequest)) as DeleteInnoTextRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteInnoTextRequest create() => DeleteInnoTextRequest._();
  DeleteInnoTextRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteInnoTextRequest> createRepeated() => $pb.PbList<DeleteInnoTextRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteInnoTextRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteInnoTextRequest>(create);
  static DeleteInnoTextRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

