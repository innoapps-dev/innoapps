///
//  Generated code. Do not modify.
//  source: inno/api/resource/inno_resource.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use listInnoResourcesRequestDescriptor instead')
const ListInnoResourcesRequest$json = const {
  '1': 'ListInnoResourcesRequest',
};

/// Descriptor for `ListInnoResourcesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInnoResourcesRequestDescriptor = $convert.base64Decode('ChhMaXN0SW5ub1Jlc291cmNlc1JlcXVlc3Q=');
@$core.Deprecated('Use listInnoResourcesResponseDescriptor instead')
const ListInnoResourcesResponse$json = const {
  '1': 'ListInnoResourcesResponse',
  '2': const [
    const {'1': 'inno_resources', '3': 1, '4': 3, '5': 11, '6': '.inno.model.InnoResource', '10': 'innoResources'},
  ],
};

/// Descriptor for `ListInnoResourcesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInnoResourcesResponseDescriptor = $convert.base64Decode('ChlMaXN0SW5ub1Jlc291cmNlc1Jlc3BvbnNlEj8KDmlubm9fcmVzb3VyY2VzGAEgAygLMhguaW5uby5tb2RlbC5Jbm5vUmVzb3VyY2VSDWlubm9SZXNvdXJjZXM=');
@$core.Deprecated('Use getInnoResourceRequestDescriptor instead')
const GetInnoResourceRequest$json = const {
  '1': 'GetInnoResourceRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetInnoResourceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInnoResourceRequestDescriptor = $convert.base64Decode('ChZHZXRJbm5vUmVzb3VyY2VSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');
@$core.Deprecated('Use createInnoResourceRequestDescriptor instead')
const CreateInnoResourceRequest$json = const {
  '1': 'CreateInnoResourceRequest',
  '2': const [
    const {'1': 'service_id', '3': 1, '4': 1, '5': 9, '10': 'serviceId'},
  ],
};

/// Descriptor for `CreateInnoResourceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createInnoResourceRequestDescriptor = $convert.base64Decode('ChlDcmVhdGVJbm5vUmVzb3VyY2VSZXF1ZXN0Eh0KCnNlcnZpY2VfaWQYASABKAlSCXNlcnZpY2VJZA==');
@$core.Deprecated('Use updateInnoResourceRequestDescriptor instead')
const UpdateInnoResourceRequest$json = const {
  '1': 'UpdateInnoResourceRequest',
  '2': const [
    const {'1': 'inno_resource', '3': 1, '4': 1, '5': 11, '6': '.inno.model.InnoResource', '10': 'innoResource'},
    const {'1': 'update_mask', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'updateMask'},
  ],
};

/// Descriptor for `UpdateInnoResourceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateInnoResourceRequestDescriptor = $convert.base64Decode('ChlVcGRhdGVJbm5vUmVzb3VyY2VSZXF1ZXN0Ej0KDWlubm9fcmVzb3VyY2UYASABKAsyGC5pbm5vLm1vZGVsLklubm9SZXNvdXJjZVIMaW5ub1Jlc291cmNlEjsKC3VwZGF0ZV9tYXNrGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLkZpZWxkTWFza1IKdXBkYXRlTWFzaw==');
@$core.Deprecated('Use deleteInnoResourceRequestDescriptor instead')
const DeleteInnoResourceRequest$json = const {
  '1': 'DeleteInnoResourceRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteInnoResourceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteInnoResourceRequestDescriptor = $convert.base64Decode('ChlEZWxldGVJbm5vUmVzb3VyY2VSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');
