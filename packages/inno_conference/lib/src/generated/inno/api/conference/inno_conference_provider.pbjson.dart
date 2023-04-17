///
//  Generated code. Do not modify.
//  source: inno/api/conference/inno_conference_provider.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use listInnoConferenceProvidersRequestDescriptor instead')
const ListInnoConferenceProvidersRequest$json = const {
  '1': 'ListInnoConferenceProvidersRequest',
};

/// Descriptor for `ListInnoConferenceProvidersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInnoConferenceProvidersRequestDescriptor = $convert.base64Decode('CiJMaXN0SW5ub0NvbmZlcmVuY2VQcm92aWRlcnNSZXF1ZXN0');
@$core.Deprecated('Use listInnoConferenceProvidersResponseDescriptor instead')
const ListInnoConferenceProvidersResponse$json = const {
  '1': 'ListInnoConferenceProvidersResponse',
  '2': const [
    const {'1': 'inno_conference_providers', '3': 1, '4': 3, '5': 11, '6': '.inno.model.InnoConferenceProvider', '10': 'innoConferenceProviders'},
  ],
};

/// Descriptor for `ListInnoConferenceProvidersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInnoConferenceProvidersResponseDescriptor = $convert.base64Decode('CiNMaXN0SW5ub0NvbmZlcmVuY2VQcm92aWRlcnNSZXNwb25zZRJeChlpbm5vX2NvbmZlcmVuY2VfcHJvdmlkZXJzGAEgAygLMiIuaW5uby5tb2RlbC5Jbm5vQ29uZmVyZW5jZVByb3ZpZGVyUhdpbm5vQ29uZmVyZW5jZVByb3ZpZGVycw==');
@$core.Deprecated('Use getInnoConferenceProviderRequestDescriptor instead')
const GetInnoConferenceProviderRequest$json = const {
  '1': 'GetInnoConferenceProviderRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetInnoConferenceProviderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInnoConferenceProviderRequestDescriptor = $convert.base64Decode('CiBHZXRJbm5vQ29uZmVyZW5jZVByb3ZpZGVyUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use createInnoConferenceProviderRequestDescriptor instead')
const CreateInnoConferenceProviderRequest$json = const {
  '1': 'CreateInnoConferenceProviderRequest',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
  ],
};

/// Descriptor for `CreateInnoConferenceProviderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createInnoConferenceProviderRequestDescriptor = $convert.base64Decode('CiNDcmVhdGVJbm5vQ29uZmVyZW5jZVByb3ZpZGVyUmVxdWVzdBIUCgV0aXRsZRgBIAEoCVIFdGl0bGU=');
@$core.Deprecated('Use updateInnoConferenceProviderRequestDescriptor instead')
const UpdateInnoConferenceProviderRequest$json = const {
  '1': 'UpdateInnoConferenceProviderRequest',
  '2': const [
    const {'1': 'inno_conference_provider', '3': 1, '4': 1, '5': 11, '6': '.inno.model.InnoConferenceProvider', '10': 'innoConferenceProvider'},
    const {'1': 'update_mask', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'updateMask'},
  ],
};

/// Descriptor for `UpdateInnoConferenceProviderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateInnoConferenceProviderRequestDescriptor = $convert.base64Decode('CiNVcGRhdGVJbm5vQ29uZmVyZW5jZVByb3ZpZGVyUmVxdWVzdBJcChhpbm5vX2NvbmZlcmVuY2VfcHJvdmlkZXIYASABKAsyIi5pbm5vLm1vZGVsLklubm9Db25mZXJlbmNlUHJvdmlkZXJSFmlubm9Db25mZXJlbmNlUHJvdmlkZXISOwoLdXBkYXRlX21hc2sYAiABKAsyGi5nb29nbGUucHJvdG9idWYuRmllbGRNYXNrUgp1cGRhdGVNYXNr');
@$core.Deprecated('Use deleteInnoConferenceProviderRequestDescriptor instead')
const DeleteInnoConferenceProviderRequest$json = const {
  '1': 'DeleteInnoConferenceProviderRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteInnoConferenceProviderRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteInnoConferenceProviderRequestDescriptor = $convert.base64Decode('CiNEZWxldGVJbm5vQ29uZmVyZW5jZVByb3ZpZGVyUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
