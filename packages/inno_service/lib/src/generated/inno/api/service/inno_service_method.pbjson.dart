///
//  Generated code. Do not modify.
//  source: inno/api/service/inno_service_method.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use listInnoServiceMethodsRequestDescriptor instead')
const ListInnoServiceMethodsRequest$json = const {
  '1': 'ListInnoServiceMethodsRequest',
};

/// Descriptor for `ListInnoServiceMethodsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInnoServiceMethodsRequestDescriptor = $convert.base64Decode('Ch1MaXN0SW5ub1NlcnZpY2VNZXRob2RzUmVxdWVzdA==');
@$core.Deprecated('Use listInnoServiceMethodsResponseDescriptor instead')
const ListInnoServiceMethodsResponse$json = const {
  '1': 'ListInnoServiceMethodsResponse',
  '2': const [
    const {'1': 'inno_service_methods', '3': 1, '4': 3, '5': 11, '6': '.inno.model.InnoServiceMethod', '10': 'innoServiceMethods'},
  ],
};

/// Descriptor for `ListInnoServiceMethodsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInnoServiceMethodsResponseDescriptor = $convert.base64Decode('Ch5MaXN0SW5ub1NlcnZpY2VNZXRob2RzUmVzcG9uc2USTwoUaW5ub19zZXJ2aWNlX21ldGhvZHMYASADKAsyHS5pbm5vLm1vZGVsLklubm9TZXJ2aWNlTWV0aG9kUhJpbm5vU2VydmljZU1ldGhvZHM=');
@$core.Deprecated('Use getInnoServiceMethodRequestDescriptor instead')
const GetInnoServiceMethodRequest$json = const {
  '1': 'GetInnoServiceMethodRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetInnoServiceMethodRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInnoServiceMethodRequestDescriptor = $convert.base64Decode('ChtHZXRJbm5vU2VydmljZU1ldGhvZFJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use createInnoServiceMethodRequestDescriptor instead')
const CreateInnoServiceMethodRequest$json = const {
  '1': 'CreateInnoServiceMethodRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'service_id', '3': 2, '4': 1, '5': 9, '10': 'serviceId'},
    const {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
  ],
};

/// Descriptor for `CreateInnoServiceMethodRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createInnoServiceMethodRequestDescriptor = $convert.base64Decode('Ch5DcmVhdGVJbm5vU2VydmljZU1ldGhvZFJlcXVlc3QSDgoCaWQYASABKAlSAmlkEh0KCnNlcnZpY2VfaWQYAiABKAlSCXNlcnZpY2VJZBIUCgV0aXRsZRgDIAEoCVIFdGl0bGU=');
@$core.Deprecated('Use updateInnoServiceMethodRequestDescriptor instead')
const UpdateInnoServiceMethodRequest$json = const {
  '1': 'UpdateInnoServiceMethodRequest',
  '2': const [
    const {'1': 'inno_service_method', '3': 1, '4': 1, '5': 11, '6': '.inno.model.InnoServiceMethod', '10': 'innoServiceMethod'},
    const {'1': 'update_mask', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'updateMask'},
  ],
};

/// Descriptor for `UpdateInnoServiceMethodRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateInnoServiceMethodRequestDescriptor = $convert.base64Decode('Ch5VcGRhdGVJbm5vU2VydmljZU1ldGhvZFJlcXVlc3QSTQoTaW5ub19zZXJ2aWNlX21ldGhvZBgBIAEoCzIdLmlubm8ubW9kZWwuSW5ub1NlcnZpY2VNZXRob2RSEWlubm9TZXJ2aWNlTWV0aG9kEjsKC3VwZGF0ZV9tYXNrGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLkZpZWxkTWFza1IKdXBkYXRlTWFzaw==');
@$core.Deprecated('Use deleteInnoServiceMethodRequestDescriptor instead')
const DeleteInnoServiceMethodRequest$json = const {
  '1': 'DeleteInnoServiceMethodRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteInnoServiceMethodRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteInnoServiceMethodRequestDescriptor = $convert.base64Decode('Ch5EZWxldGVJbm5vU2VydmljZU1ldGhvZFJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
