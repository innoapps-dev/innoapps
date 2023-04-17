///
//  Generated code. Do not modify.
//  source: inno/api/user/inno_user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use listInnoUsersRequestDescriptor instead')
const ListInnoUsersRequest$json = const {
  '1': 'ListInnoUsersRequest',
};

/// Descriptor for `ListInnoUsersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInnoUsersRequestDescriptor = $convert.base64Decode('ChRMaXN0SW5ub1VzZXJzUmVxdWVzdA==');
@$core.Deprecated('Use listInnoUsersResponseDescriptor instead')
const ListInnoUsersResponse$json = const {
  '1': 'ListInnoUsersResponse',
  '2': const [
    const {'1': 'inno_users', '3': 1, '4': 3, '5': 11, '6': '.inno.model.InnoUser', '10': 'innoUsers'},
  ],
};

/// Descriptor for `ListInnoUsersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInnoUsersResponseDescriptor = $convert.base64Decode('ChVMaXN0SW5ub1VzZXJzUmVzcG9uc2USMwoKaW5ub191c2VycxgBIAMoCzIULmlubm8ubW9kZWwuSW5ub1VzZXJSCWlubm9Vc2Vycw==');
@$core.Deprecated('Use getInnoUserRequestDescriptor instead')
const GetInnoUserRequest$json = const {
  '1': 'GetInnoUserRequest',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
  ],
};

/// Descriptor for `GetInnoUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInnoUserRequestDescriptor = $convert.base64Decode('ChJHZXRJbm5vVXNlclJlcXVlc3QSEAoDdWlkGAEgASgJUgN1aWQ=');
@$core.Deprecated('Use createInnoUserRequestDescriptor instead')
const CreateInnoUserRequest$json = const {
  '1': 'CreateInnoUserRequest',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'first_name', '3': 2, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'last_name', '3': 3, '4': 1, '5': 9, '10': 'lastName'},
    const {'1': 'email', '3': 4, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'main_role_id', '3': 5, '4': 1, '5': 9, '10': 'mainRoleId'},
  ],
};

/// Descriptor for `CreateInnoUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createInnoUserRequestDescriptor = $convert.base64Decode('ChVDcmVhdGVJbm5vVXNlclJlcXVlc3QSEAoDdWlkGAEgASgJUgN1aWQSHQoKZmlyc3RfbmFtZRgCIAEoCVIJZmlyc3ROYW1lEhsKCWxhc3RfbmFtZRgDIAEoCVIIbGFzdE5hbWUSFAoFZW1haWwYBCABKAlSBWVtYWlsEiAKDG1haW5fcm9sZV9pZBgFIAEoCVIKbWFpblJvbGVJZA==');
@$core.Deprecated('Use updateInnoUserRequestDescriptor instead')
const UpdateInnoUserRequest$json = const {
  '1': 'UpdateInnoUserRequest',
  '2': const [
    const {'1': 'inno_user', '3': 1, '4': 1, '5': 11, '6': '.inno.model.InnoUser', '10': 'innoUser'},
    const {'1': 'update_mask', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'updateMask'},
  ],
};

/// Descriptor for `UpdateInnoUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateInnoUserRequestDescriptor = $convert.base64Decode('ChVVcGRhdGVJbm5vVXNlclJlcXVlc3QSMQoJaW5ub191c2VyGAEgASgLMhQuaW5uby5tb2RlbC5Jbm5vVXNlclIIaW5ub1VzZXISOwoLdXBkYXRlX21hc2sYAiABKAsyGi5nb29nbGUucHJvdG9idWYuRmllbGRNYXNrUgp1cGRhdGVNYXNr');
@$core.Deprecated('Use deleteInnoUserRequestDescriptor instead')
const DeleteInnoUserRequest$json = const {
  '1': 'DeleteInnoUserRequest',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
  ],
};

/// Descriptor for `DeleteInnoUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteInnoUserRequestDescriptor = $convert.base64Decode('ChVEZWxldGVJbm5vVXNlclJlcXVlc3QSEAoDdWlkGAEgASgJUgN1aWQ=');
