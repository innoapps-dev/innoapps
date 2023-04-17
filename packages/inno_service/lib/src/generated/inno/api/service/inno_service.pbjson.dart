///
//  Generated code. Do not modify.
//  source: inno/api/service/inno_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use listInnoServicesRequestDescriptor instead')
const ListInnoServicesRequest$json = const {
  '1': 'ListInnoServicesRequest',
};

/// Descriptor for `ListInnoServicesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInnoServicesRequestDescriptor = $convert.base64Decode('ChdMaXN0SW5ub1NlcnZpY2VzUmVxdWVzdA==');
@$core.Deprecated('Use listInnoServicesResponseDescriptor instead')
const ListInnoServicesResponse$json = const {
  '1': 'ListInnoServicesResponse',
  '2': const [
    const {'1': 'inno_services', '3': 1, '4': 3, '5': 11, '6': '.inno.model.InnoService', '10': 'innoServices'},
  ],
};

/// Descriptor for `ListInnoServicesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInnoServicesResponseDescriptor = $convert.base64Decode('ChhMaXN0SW5ub1NlcnZpY2VzUmVzcG9uc2USPAoNaW5ub19zZXJ2aWNlcxgBIAMoCzIXLmlubm8ubW9kZWwuSW5ub1NlcnZpY2VSDGlubm9TZXJ2aWNlcw==');
@$core.Deprecated('Use getInnoServiceRequestDescriptor instead')
const GetInnoServiceRequest$json = const {
  '1': 'GetInnoServiceRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetInnoServiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInnoServiceRequestDescriptor = $convert.base64Decode('ChVHZXRJbm5vU2VydmljZVJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use createInnoServiceRequestDescriptor instead')
const CreateInnoServiceRequest$json = const {
  '1': 'CreateInnoServiceRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'organisation', '3': 4, '4': 1, '5': 9, '10': 'organisation'},
  ],
};

/// Descriptor for `CreateInnoServiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createInnoServiceRequestDescriptor = $convert.base64Decode('ChhDcmVhdGVJbm5vU2VydmljZVJlcXVlc3QSDgoCaWQYASABKAlSAmlkEhQKBXRpdGxlGAIgASgJUgV0aXRsZRIYCgd2ZXJzaW9uGAMgASgJUgd2ZXJzaW9uEiIKDG9yZ2FuaXNhdGlvbhgEIAEoCVIMb3JnYW5pc2F0aW9u');
@$core.Deprecated('Use updateInnoServiceRequestDescriptor instead')
const UpdateInnoServiceRequest$json = const {
  '1': 'UpdateInnoServiceRequest',
  '2': const [
    const {'1': 'inno_service', '3': 1, '4': 1, '5': 11, '6': '.inno.model.InnoService', '10': 'innoService'},
    const {'1': 'update_mask', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'updateMask'},
  ],
};

/// Descriptor for `UpdateInnoServiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateInnoServiceRequestDescriptor = $convert.base64Decode('ChhVcGRhdGVJbm5vU2VydmljZVJlcXVlc3QSOgoMaW5ub19zZXJ2aWNlGAEgASgLMhcuaW5uby5tb2RlbC5Jbm5vU2VydmljZVILaW5ub1NlcnZpY2USOwoLdXBkYXRlX21hc2sYAiABKAsyGi5nb29nbGUucHJvdG9idWYuRmllbGRNYXNrUgp1cGRhdGVNYXNr');
@$core.Deprecated('Use deleteInnoServiceRequestDescriptor instead')
const DeleteInnoServiceRequest$json = const {
  '1': 'DeleteInnoServiceRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteInnoServiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteInnoServiceRequestDescriptor = $convert.base64Decode('ChhEZWxldGVJbm5vU2VydmljZVJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
