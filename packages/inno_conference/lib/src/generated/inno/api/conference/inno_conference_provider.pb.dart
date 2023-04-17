///
//  Generated code. Do not modify.
//  source: inno/api/conference/inno_conference_provider.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../model/inno_model.pb.dart' as $1;
import '../../../google/protobuf/field_mask.pb.dart' as $3;

class ListInnoConferenceProvidersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInnoConferenceProvidersRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.conference'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListInnoConferenceProvidersRequest._() : super();
  factory ListInnoConferenceProvidersRequest() => create();
  factory ListInnoConferenceProvidersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInnoConferenceProvidersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInnoConferenceProvidersRequest clone() => ListInnoConferenceProvidersRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInnoConferenceProvidersRequest copyWith(void Function(ListInnoConferenceProvidersRequest) updates) => super.copyWith((message) => updates(message as ListInnoConferenceProvidersRequest)) as ListInnoConferenceProvidersRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInnoConferenceProvidersRequest create() => ListInnoConferenceProvidersRequest._();
  ListInnoConferenceProvidersRequest createEmptyInstance() => create();
  static $pb.PbList<ListInnoConferenceProvidersRequest> createRepeated() => $pb.PbList<ListInnoConferenceProvidersRequest>();
  @$core.pragma('dart2js:noInline')
  static ListInnoConferenceProvidersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInnoConferenceProvidersRequest>(create);
  static ListInnoConferenceProvidersRequest? _defaultInstance;
}

class ListInnoConferenceProvidersResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInnoConferenceProvidersResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.conference'), createEmptyInstance: create)
    ..pc<$1.InnoConferenceProvider>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoConferenceProviders', $pb.PbFieldType.PM, subBuilder: $1.InnoConferenceProvider.create)
    ..hasRequiredFields = false
  ;

  ListInnoConferenceProvidersResponse._() : super();
  factory ListInnoConferenceProvidersResponse({
    $core.Iterable<$1.InnoConferenceProvider>? innoConferenceProviders,
  }) {
    final _result = create();
    if (innoConferenceProviders != null) {
      _result.innoConferenceProviders.addAll(innoConferenceProviders);
    }
    return _result;
  }
  factory ListInnoConferenceProvidersResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInnoConferenceProvidersResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInnoConferenceProvidersResponse clone() => ListInnoConferenceProvidersResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInnoConferenceProvidersResponse copyWith(void Function(ListInnoConferenceProvidersResponse) updates) => super.copyWith((message) => updates(message as ListInnoConferenceProvidersResponse)) as ListInnoConferenceProvidersResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInnoConferenceProvidersResponse create() => ListInnoConferenceProvidersResponse._();
  ListInnoConferenceProvidersResponse createEmptyInstance() => create();
  static $pb.PbList<ListInnoConferenceProvidersResponse> createRepeated() => $pb.PbList<ListInnoConferenceProvidersResponse>();
  @$core.pragma('dart2js:noInline')
  static ListInnoConferenceProvidersResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInnoConferenceProvidersResponse>(create);
  static ListInnoConferenceProvidersResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.InnoConferenceProvider> get innoConferenceProviders => $_getList(0);
}

class GetInnoConferenceProviderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetInnoConferenceProviderRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.conference'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  GetInnoConferenceProviderRequest._() : super();
  factory GetInnoConferenceProviderRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetInnoConferenceProviderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInnoConferenceProviderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInnoConferenceProviderRequest clone() => GetInnoConferenceProviderRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInnoConferenceProviderRequest copyWith(void Function(GetInnoConferenceProviderRequest) updates) => super.copyWith((message) => updates(message as GetInnoConferenceProviderRequest)) as GetInnoConferenceProviderRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetInnoConferenceProviderRequest create() => GetInnoConferenceProviderRequest._();
  GetInnoConferenceProviderRequest createEmptyInstance() => create();
  static $pb.PbList<GetInnoConferenceProviderRequest> createRepeated() => $pb.PbList<GetInnoConferenceProviderRequest>();
  @$core.pragma('dart2js:noInline')
  static GetInnoConferenceProviderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInnoConferenceProviderRequest>(create);
  static GetInnoConferenceProviderRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CreateInnoConferenceProviderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateInnoConferenceProviderRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.conference'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..hasRequiredFields = false
  ;

  CreateInnoConferenceProviderRequest._() : super();
  factory CreateInnoConferenceProviderRequest({
    $core.String? title,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    return _result;
  }
  factory CreateInnoConferenceProviderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateInnoConferenceProviderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateInnoConferenceProviderRequest clone() => CreateInnoConferenceProviderRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateInnoConferenceProviderRequest copyWith(void Function(CreateInnoConferenceProviderRequest) updates) => super.copyWith((message) => updates(message as CreateInnoConferenceProviderRequest)) as CreateInnoConferenceProviderRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateInnoConferenceProviderRequest create() => CreateInnoConferenceProviderRequest._();
  CreateInnoConferenceProviderRequest createEmptyInstance() => create();
  static $pb.PbList<CreateInnoConferenceProviderRequest> createRepeated() => $pb.PbList<CreateInnoConferenceProviderRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateInnoConferenceProviderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateInnoConferenceProviderRequest>(create);
  static CreateInnoConferenceProviderRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);
}

class UpdateInnoConferenceProviderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateInnoConferenceProviderRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.conference'), createEmptyInstance: create)
    ..aOM<$1.InnoConferenceProvider>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'innoConferenceProvider', subBuilder: $1.InnoConferenceProvider.create)
    ..aOM<$3.FieldMask>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateMask', subBuilder: $3.FieldMask.create)
    ..hasRequiredFields = false
  ;

  UpdateInnoConferenceProviderRequest._() : super();
  factory UpdateInnoConferenceProviderRequest({
    $1.InnoConferenceProvider? innoConferenceProvider,
    $3.FieldMask? updateMask,
  }) {
    final _result = create();
    if (innoConferenceProvider != null) {
      _result.innoConferenceProvider = innoConferenceProvider;
    }
    if (updateMask != null) {
      _result.updateMask = updateMask;
    }
    return _result;
  }
  factory UpdateInnoConferenceProviderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateInnoConferenceProviderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateInnoConferenceProviderRequest clone() => UpdateInnoConferenceProviderRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateInnoConferenceProviderRequest copyWith(void Function(UpdateInnoConferenceProviderRequest) updates) => super.copyWith((message) => updates(message as UpdateInnoConferenceProviderRequest)) as UpdateInnoConferenceProviderRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateInnoConferenceProviderRequest create() => UpdateInnoConferenceProviderRequest._();
  UpdateInnoConferenceProviderRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateInnoConferenceProviderRequest> createRepeated() => $pb.PbList<UpdateInnoConferenceProviderRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateInnoConferenceProviderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateInnoConferenceProviderRequest>(create);
  static UpdateInnoConferenceProviderRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.InnoConferenceProvider get innoConferenceProvider => $_getN(0);
  @$pb.TagNumber(1)
  set innoConferenceProvider($1.InnoConferenceProvider v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInnoConferenceProvider() => $_has(0);
  @$pb.TagNumber(1)
  void clearInnoConferenceProvider() => clearField(1);
  @$pb.TagNumber(1)
  $1.InnoConferenceProvider ensureInnoConferenceProvider() => $_ensure(0);

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

class DeleteInnoConferenceProviderRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteInnoConferenceProviderRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'inno.conference'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  DeleteInnoConferenceProviderRequest._() : super();
  factory DeleteInnoConferenceProviderRequest({
    $core.String? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeleteInnoConferenceProviderRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteInnoConferenceProviderRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteInnoConferenceProviderRequest clone() => DeleteInnoConferenceProviderRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteInnoConferenceProviderRequest copyWith(void Function(DeleteInnoConferenceProviderRequest) updates) => super.copyWith((message) => updates(message as DeleteInnoConferenceProviderRequest)) as DeleteInnoConferenceProviderRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteInnoConferenceProviderRequest create() => DeleteInnoConferenceProviderRequest._();
  DeleteInnoConferenceProviderRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteInnoConferenceProviderRequest> createRepeated() => $pb.PbList<DeleteInnoConferenceProviderRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteInnoConferenceProviderRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteInnoConferenceProviderRequest>(create);
  static DeleteInnoConferenceProviderRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

