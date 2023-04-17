///
//  Generated code. Do not modify.
//  source: inno/api/role/inno_role.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use listInnoRolesRequestDescriptor instead')
const ListInnoRolesRequest$json = const {
  '1': 'ListInnoRolesRequest',
};

/// Descriptor for `ListInnoRolesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInnoRolesRequestDescriptor = $convert.base64Decode('ChRMaXN0SW5ub1JvbGVzUmVxdWVzdA==');
@$core.Deprecated('Use listInnoRolesResponseDescriptor instead')
const ListInnoRolesResponse$json = const {
  '1': 'ListInnoRolesResponse',
  '2': const [
    const {'1': 'inno_roles', '3': 1, '4': 3, '5': 11, '6': '.inno.model.InnoRole', '10': 'innoRoles'},
  ],
};

/// Descriptor for `ListInnoRolesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInnoRolesResponseDescriptor = $convert.base64Decode('ChVMaXN0SW5ub1JvbGVzUmVzcG9uc2USMwoKaW5ub19yb2xlcxgBIAMoCzIULmlubm8ubW9kZWwuSW5ub1JvbGVSCWlubm9Sb2xlcw==');
@$core.Deprecated('Use getInnoRoleRequestDescriptor instead')
const GetInnoRoleRequest$json = const {
  '1': 'GetInnoRoleRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetInnoRoleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInnoRoleRequestDescriptor = $convert.base64Decode('ChJHZXRJbm5vUm9sZVJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use createInnoRoleRequestDescriptor instead')
const CreateInnoRoleRequest$json = const {
  '1': 'CreateInnoRoleRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
  ],
};

/// Descriptor for `CreateInnoRoleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createInnoRoleRequestDescriptor = $convert.base64Decode('ChVDcmVhdGVJbm5vUm9sZVJlcXVlc3QSDgoCaWQYASABKAlSAmlkEhQKBXRpdGxlGAIgASgJUgV0aXRsZQ==');
@$core.Deprecated('Use updateInnoRoleRequestDescriptor instead')
const UpdateInnoRoleRequest$json = const {
  '1': 'UpdateInnoRoleRequest',
  '2': const [
    const {'1': 'inno_role', '3': 1, '4': 1, '5': 11, '6': '.inno.model.InnoRole', '10': 'innoRole'},
    const {'1': 'update_mask', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'updateMask'},
  ],
};

/// Descriptor for `UpdateInnoRoleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateInnoRoleRequestDescriptor = $convert.base64Decode('ChVVcGRhdGVJbm5vUm9sZVJlcXVlc3QSMQoJaW5ub19yb2xlGAEgASgLMhQuaW5uby5tb2RlbC5Jbm5vUm9sZVIIaW5ub1JvbGUSOwoLdXBkYXRlX21hc2sYAiABKAsyGi5nb29nbGUucHJvdG9idWYuRmllbGRNYXNrUgp1cGRhdGVNYXNr');
@$core.Deprecated('Use deleteInnoRoleRequestDescriptor instead')
const DeleteInnoRoleRequest$json = const {
  '1': 'DeleteInnoRoleRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteInnoRoleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteInnoRoleRequestDescriptor = $convert.base64Decode('ChVEZWxldGVJbm5vUm9sZVJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
