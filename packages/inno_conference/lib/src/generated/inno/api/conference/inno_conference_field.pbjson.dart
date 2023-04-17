///
//  Generated code. Do not modify.
//  source: inno/api/conference/inno_conference_field.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use listInnoConferenceFieldsRequestDescriptor instead')
const ListInnoConferenceFieldsRequest$json = const {
  '1': 'ListInnoConferenceFieldsRequest',
};

/// Descriptor for `ListInnoConferenceFieldsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInnoConferenceFieldsRequestDescriptor = $convert.base64Decode('Ch9MaXN0SW5ub0NvbmZlcmVuY2VGaWVsZHNSZXF1ZXN0');
@$core.Deprecated('Use listInnoConferenceFieldsResponseDescriptor instead')
const ListInnoConferenceFieldsResponse$json = const {
  '1': 'ListInnoConferenceFieldsResponse',
  '2': const [
    const {'1': 'inno_conference_fields', '3': 1, '4': 3, '5': 11, '6': '.inno.model.InnoConferenceField', '10': 'innoConferenceFields'},
  ],
};

/// Descriptor for `ListInnoConferenceFieldsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInnoConferenceFieldsResponseDescriptor = $convert.base64Decode('CiBMaXN0SW5ub0NvbmZlcmVuY2VGaWVsZHNSZXNwb25zZRJVChZpbm5vX2NvbmZlcmVuY2VfZmllbGRzGAEgAygLMh8uaW5uby5tb2RlbC5Jbm5vQ29uZmVyZW5jZUZpZWxkUhRpbm5vQ29uZmVyZW5jZUZpZWxkcw==');
@$core.Deprecated('Use getInnoConferenceFieldRequestDescriptor instead')
const GetInnoConferenceFieldRequest$json = const {
  '1': 'GetInnoConferenceFieldRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetInnoConferenceFieldRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInnoConferenceFieldRequestDescriptor = $convert.base64Decode('Ch1HZXRJbm5vQ29uZmVyZW5jZUZpZWxkUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use createInnoConferenceFieldRequestDescriptor instead')
const CreateInnoConferenceFieldRequest$json = const {
  '1': 'CreateInnoConferenceFieldRequest',
  '2': const [
    const {'1': 'conference_id', '3': 1, '4': 1, '5': 9, '10': 'conferenceId'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'value', '3': 3, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `CreateInnoConferenceFieldRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createInnoConferenceFieldRequestDescriptor = $convert.base64Decode('CiBDcmVhdGVJbm5vQ29uZmVyZW5jZUZpZWxkUmVxdWVzdBIjCg1jb25mZXJlbmNlX2lkGAEgASgJUgxjb25mZXJlbmNlSWQSFAoFdGl0bGUYAiABKAlSBXRpdGxlEhQKBXZhbHVlGAMgASgJUgV2YWx1ZQ==');
@$core.Deprecated('Use updateInnoConferenceFieldRequestDescriptor instead')
const UpdateInnoConferenceFieldRequest$json = const {
  '1': 'UpdateInnoConferenceFieldRequest',
  '2': const [
    const {'1': 'inno_conference_field', '3': 1, '4': 1, '5': 11, '6': '.inno.model.InnoConferenceField', '10': 'innoConferenceField'},
    const {'1': 'update_mask', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'updateMask'},
  ],
};

/// Descriptor for `UpdateInnoConferenceFieldRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateInnoConferenceFieldRequestDescriptor = $convert.base64Decode('CiBVcGRhdGVJbm5vQ29uZmVyZW5jZUZpZWxkUmVxdWVzdBJTChVpbm5vX2NvbmZlcmVuY2VfZmllbGQYASABKAsyHy5pbm5vLm1vZGVsLklubm9Db25mZXJlbmNlRmllbGRSE2lubm9Db25mZXJlbmNlRmllbGQSOwoLdXBkYXRlX21hc2sYAiABKAsyGi5nb29nbGUucHJvdG9idWYuRmllbGRNYXNrUgp1cGRhdGVNYXNr');
@$core.Deprecated('Use deleteInnoConferenceFieldRequestDescriptor instead')
const DeleteInnoConferenceFieldRequest$json = const {
  '1': 'DeleteInnoConferenceFieldRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteInnoConferenceFieldRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteInnoConferenceFieldRequestDescriptor = $convert.base64Decode('CiBEZWxldGVJbm5vQ29uZmVyZW5jZUZpZWxkUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
