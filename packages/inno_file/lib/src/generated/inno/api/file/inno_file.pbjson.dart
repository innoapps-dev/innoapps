///
//  Generated code. Do not modify.
//  source: inno/api/file/inno_file.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use listInnoFilesRequestDescriptor instead')
const ListInnoFilesRequest$json = const {
  '1': 'ListInnoFilesRequest',
};

/// Descriptor for `ListInnoFilesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInnoFilesRequestDescriptor = $convert.base64Decode('ChRMaXN0SW5ub0ZpbGVzUmVxdWVzdA==');
@$core.Deprecated('Use listInnoFilesResponseDescriptor instead')
const ListInnoFilesResponse$json = const {
  '1': 'ListInnoFilesResponse',
  '2': const [
    const {'1': 'inno_files', '3': 1, '4': 3, '5': 11, '6': '.inno.model.InnoFile', '10': 'innoFiles'},
  ],
};

/// Descriptor for `ListInnoFilesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInnoFilesResponseDescriptor = $convert.base64Decode('ChVMaXN0SW5ub0ZpbGVzUmVzcG9uc2USMwoKaW5ub19maWxlcxgBIAMoCzIULmlubm8ubW9kZWwuSW5ub0ZpbGVSCWlubm9GaWxlcw==');
@$core.Deprecated('Use getInnoFileRequestDescriptor instead')
const GetInnoFileRequest$json = const {
  '1': 'GetInnoFileRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetInnoFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInnoFileRequestDescriptor = $convert.base64Decode('ChJHZXRJbm5vRmlsZVJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use createInnoFileRequestDescriptor instead')
const CreateInnoFileRequest$json = const {
  '1': 'CreateInnoFileRequest',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `CreateInnoFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createInnoFileRequestDescriptor = $convert.base64Decode('ChVDcmVhdGVJbm5vRmlsZVJlcXVlc3QSFAoFdGl0bGUYASABKAlSBXRpdGxlEhAKA3VybBgCIAEoCVIDdXJs');
@$core.Deprecated('Use updateInnoFileRequestDescriptor instead')
const UpdateInnoFileRequest$json = const {
  '1': 'UpdateInnoFileRequest',
  '2': const [
    const {'1': 'inno_file', '3': 1, '4': 1, '5': 11, '6': '.inno.model.InnoFile', '10': 'innoFile'},
    const {'1': 'update_mask', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'updateMask'},
  ],
};

/// Descriptor for `UpdateInnoFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateInnoFileRequestDescriptor = $convert.base64Decode('ChVVcGRhdGVJbm5vRmlsZVJlcXVlc3QSMQoJaW5ub19maWxlGAEgASgLMhQuaW5uby5tb2RlbC5Jbm5vRmlsZVIIaW5ub0ZpbGUSOwoLdXBkYXRlX21hc2sYAiABKAsyGi5nb29nbGUucHJvdG9idWYuRmllbGRNYXNrUgp1cGRhdGVNYXNr');
@$core.Deprecated('Use deleteInnoFileRequestDescriptor instead')
const DeleteInnoFileRequest$json = const {
  '1': 'DeleteInnoFileRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteInnoFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteInnoFileRequestDescriptor = $convert.base64Decode('ChVEZWxldGVJbm5vRmlsZVJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
