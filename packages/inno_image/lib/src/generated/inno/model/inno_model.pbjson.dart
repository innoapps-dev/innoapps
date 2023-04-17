///
//  Generated code. Do not modify.
//  source: inno/model/inno_model.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use innoFileDescriptor instead')
const InnoFile$json = const {
  '1': 'InnoFile',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'url', '3': 3, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `InnoFile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List innoFileDescriptor = $convert.base64Decode('CghJbm5vRmlsZRIOCgJpZBgBIAEoCVICaWQSFAoFdGl0bGUYAiABKAlSBXRpdGxlEhAKA3VybBgDIAEoCVIDdXJs');
@$core.Deprecated('Use innoImageDescriptor instead')
const InnoImage$json = const {
  '1': 'InnoImage',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'url', '3': 3, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `InnoImage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List innoImageDescriptor = $convert.base64Decode('CglJbm5vSW1hZ2USDgoCaWQYASABKAlSAmlkEhQKBXRpdGxlGAIgASgJUgV0aXRsZRIQCgN1cmwYAyABKAlSA3VybA==');
@$core.Deprecated('Use innoLinkDescriptor instead')
const InnoLink$json = const {
  '1': 'InnoLink',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'url', '3': 3, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `InnoLink`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List innoLinkDescriptor = $convert.base64Decode('CghJbm5vTGluaxIOCgJpZBgBIAEoCVICaWQSFAoFdGl0bGUYAiABKAlSBXRpdGxlEhAKA3VybBgDIAEoCVIDdXJs');
@$core.Deprecated('Use innoResourceDescriptor instead')
const InnoResource$json = const {
  '1': 'InnoResource',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'service_id', '3': 2, '4': 1, '5': 9, '10': 'serviceId'},
    const {'1': 'tag', '3': 3, '4': 1, '5': 9, '10': 'tag'},
  ],
};

/// Descriptor for `InnoResource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List innoResourceDescriptor = $convert.base64Decode('CgxJbm5vUmVzb3VyY2USDgoCaWQYASABKAlSAmlkEh0KCnNlcnZpY2VfaWQYAiABKAlSCXNlcnZpY2VJZBIQCgN0YWcYAyABKAlSA3RhZw==');
@$core.Deprecated('Use innoRoleDescriptor instead')
const InnoRole$json = const {
  '1': 'InnoRole',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
  ],
};

/// Descriptor for `InnoRole`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List innoRoleDescriptor = $convert.base64Decode('CghJbm5vUm9sZRIOCgJpZBgBIAEoCVICaWQSFAoFdGl0bGUYAiABKAlSBXRpdGxl');
@$core.Deprecated('Use innoServiceDescriptor instead')
const InnoService$json = const {
  '1': 'InnoService',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'organisation', '3': 4, '4': 1, '5': 9, '10': 'organisation'},
  ],
};

/// Descriptor for `InnoService`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List innoServiceDescriptor = $convert.base64Decode('CgtJbm5vU2VydmljZRIOCgJpZBgBIAEoCVICaWQSFAoFdGl0bGUYAiABKAlSBXRpdGxlEhgKB3ZlcnNpb24YAyABKAlSB3ZlcnNpb24SIgoMb3JnYW5pc2F0aW9uGAQgASgJUgxvcmdhbmlzYXRpb24=');
@$core.Deprecated('Use innoServiceMethodDescriptor instead')
const InnoServiceMethod$json = const {
  '1': 'InnoServiceMethod',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'service_id', '3': 2, '4': 1, '5': 9, '10': 'serviceId'},
    const {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
  ],
};

/// Descriptor for `InnoServiceMethod`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List innoServiceMethodDescriptor = $convert.base64Decode('ChFJbm5vU2VydmljZU1ldGhvZBIOCgJpZBgBIAEoCVICaWQSHQoKc2VydmljZV9pZBgCIAEoCVIJc2VydmljZUlkEhQKBXRpdGxlGAMgASgJUgV0aXRsZQ==');
@$core.Deprecated('Use innoTextDescriptor instead')
const InnoText$json = const {
  '1': 'InnoText',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'text', '3': 3, '4': 1, '5': 9, '10': 'text'},
  ],
};

/// Descriptor for `InnoText`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List innoTextDescriptor = $convert.base64Decode('CghJbm5vVGV4dBIOCgJpZBgBIAEoCVICaWQSFAoFdGl0bGUYAiABKAlSBXRpdGxlEhIKBHRleHQYAyABKAlSBHRleHQ=');
@$core.Deprecated('Use innoUserDescriptor instead')
const InnoUser$json = const {
  '1': 'InnoUser',
  '2': const [
    const {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    const {'1': 'first_name', '3': 2, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'last_name', '3': 3, '4': 1, '5': 9, '10': 'lastName'},
    const {'1': 'email', '3': 4, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'phone', '3': 5, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'main_role_id', '3': 6, '4': 1, '5': 9, '10': 'mainRoleId'},
    const {'1': 'roles', '3': 7, '4': 3, '5': 11, '6': '.inno.model.InnoRole', '10': 'roles'},
  ],
};

/// Descriptor for `InnoUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List innoUserDescriptor = $convert.base64Decode('CghJbm5vVXNlchIQCgN1aWQYASABKAlSA3VpZBIdCgpmaXJzdF9uYW1lGAIgASgJUglmaXJzdE5hbWUSGwoJbGFzdF9uYW1lGAMgASgJUghsYXN0TmFtZRIUCgVlbWFpbBgEIAEoCVIFZW1haWwSFAoFcGhvbmUYBSABKAlSBXBob25lEiAKDG1haW5fcm9sZV9pZBgGIAEoCVIKbWFpblJvbGVJZBIqCgVyb2xlcxgHIAMoCzIULmlubm8ubW9kZWwuSW5ub1JvbGVSBXJvbGVz');
