///
//  Generated code. Do not modify.
//  source: inno/api/image/inno_image.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use listInnoImagesRequestDescriptor instead')
const ListInnoImagesRequest$json = const {
  '1': 'ListInnoImagesRequest',
};

/// Descriptor for `ListInnoImagesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInnoImagesRequestDescriptor = $convert.base64Decode('ChVMaXN0SW5ub0ltYWdlc1JlcXVlc3Q=');
@$core.Deprecated('Use listInnoImagesResponseDescriptor instead')
const ListInnoImagesResponse$json = const {
  '1': 'ListInnoImagesResponse',
  '2': const [
    const {'1': 'inno_images', '3': 1, '4': 3, '5': 11, '6': '.inno.model.InnoImage', '10': 'innoImages'},
  ],
};

/// Descriptor for `ListInnoImagesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInnoImagesResponseDescriptor = $convert.base64Decode('ChZMaXN0SW5ub0ltYWdlc1Jlc3BvbnNlEjYKC2lubm9faW1hZ2VzGAEgAygLMhUuaW5uby5tb2RlbC5Jbm5vSW1hZ2VSCmlubm9JbWFnZXM=');
@$core.Deprecated('Use getInnoImageRequestDescriptor instead')
const GetInnoImageRequest$json = const {
  '1': 'GetInnoImageRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetInnoImageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInnoImageRequestDescriptor = $convert.base64Decode('ChNHZXRJbm5vSW1hZ2VSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');
@$core.Deprecated('Use createInnoImageRequestDescriptor instead')
const CreateInnoImageRequest$json = const {
  '1': 'CreateInnoImageRequest',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `CreateInnoImageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createInnoImageRequestDescriptor = $convert.base64Decode('ChZDcmVhdGVJbm5vSW1hZ2VSZXF1ZXN0EhQKBXRpdGxlGAEgASgJUgV0aXRsZRIQCgN1cmwYAiABKAlSA3VybA==');
@$core.Deprecated('Use updateInnoImageRequestDescriptor instead')
const UpdateInnoImageRequest$json = const {
  '1': 'UpdateInnoImageRequest',
  '2': const [
    const {'1': 'inno_image', '3': 1, '4': 1, '5': 11, '6': '.inno.model.InnoImage', '10': 'innoImage'},
    const {'1': 'update_mask', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'updateMask'},
  ],
};

/// Descriptor for `UpdateInnoImageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateInnoImageRequestDescriptor = $convert.base64Decode('ChZVcGRhdGVJbm5vSW1hZ2VSZXF1ZXN0EjQKCmlubm9faW1hZ2UYASABKAsyFS5pbm5vLm1vZGVsLklubm9JbWFnZVIJaW5ub0ltYWdlEjsKC3VwZGF0ZV9tYXNrGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLkZpZWxkTWFza1IKdXBkYXRlTWFzaw==');
@$core.Deprecated('Use deleteInnoImageRequestDescriptor instead')
const DeleteInnoImageRequest$json = const {
  '1': 'DeleteInnoImageRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteInnoImageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteInnoImageRequestDescriptor = $convert.base64Decode('ChZEZWxldGVJbm5vSW1hZ2VSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');
