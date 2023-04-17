///
//  Generated code. Do not modify.
//  source: inno/model/inno_model.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use innoConferenceDescriptor instead')
const InnoConference$json = const {
  '1': 'InnoConference',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'provider', '3': 3, '4': 1, '5': 11, '6': '.inno.model.InnoConferenceProvider', '10': 'provider'},
    const {'1': 'fields', '3': 4, '4': 3, '5': 11, '6': '.inno.model.InnoConferenceField', '10': 'fields'},
  ],
};

/// Descriptor for `InnoConference`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List innoConferenceDescriptor = $convert.base64Decode('Cg5Jbm5vQ29uZmVyZW5jZRIOCgJpZBgBIAEoCVICaWQSFAoFdGl0bGUYAiABKAlSBXRpdGxlEj4KCHByb3ZpZGVyGAMgASgLMiIuaW5uby5tb2RlbC5Jbm5vQ29uZmVyZW5jZVByb3ZpZGVyUghwcm92aWRlchI3CgZmaWVsZHMYBCADKAsyHy5pbm5vLm1vZGVsLklubm9Db25mZXJlbmNlRmllbGRSBmZpZWxkcw==');
@$core.Deprecated('Use innoConferenceFieldDescriptor instead')
const InnoConferenceField$json = const {
  '1': 'InnoConferenceField',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'value', '3': 3, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `InnoConferenceField`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List innoConferenceFieldDescriptor = $convert.base64Decode('ChNJbm5vQ29uZmVyZW5jZUZpZWxkEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1lEhQKBXZhbHVlGAMgASgJUgV2YWx1ZQ==');
@$core.Deprecated('Use innoConferenceProviderDescriptor instead')
const InnoConferenceProvider$json = const {
  '1': 'InnoConferenceProvider',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
  ],
};

/// Descriptor for `InnoConferenceProvider`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List innoConferenceProviderDescriptor = $convert.base64Decode('ChZJbm5vQ29uZmVyZW5jZVByb3ZpZGVyEg4KAmlkGAEgASgJUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGU=');
@$core.Deprecated('Use innoEventDescriptor instead')
const InnoEvent$json = const {
  '1': 'InnoEvent',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'sessions', '3': 3, '4': 3, '5': 11, '6': '.inno.model.InnoEventSession', '10': 'sessions'},
  ],
};

/// Descriptor for `InnoEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List innoEventDescriptor = $convert.base64Decode('CglJbm5vRXZlbnQSDgoCaWQYASABKAlSAmlkEhQKBXRpdGxlGAIgASgJUgV0aXRsZRI4CghzZXNzaW9ucxgDIAMoCzIcLmlubm8ubW9kZWwuSW5ub0V2ZW50U2Vzc2lvblIIc2Vzc2lvbnM=');
@$core.Deprecated('Use innoEventSessionDescriptor instead')
const InnoEventSession$json = const {
  '1': 'InnoEventSession',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'event_id', '3': 2, '4': 1, '5': 9, '10': 'eventId'},
    const {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'start_date_time', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startDateTime'},
    const {'1': 'end_date_time', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'endDateTime'},
    const {'1': 'conferences', '3': 7, '4': 3, '5': 11, '6': '.inno.model.InnoConference', '10': 'conferences'},
    const {'1': 'links', '3': 8, '4': 3, '5': 11, '6': '.inno.model.InnoLink', '10': 'links'},
    const {'1': 'texts', '3': 9, '4': 3, '5': 11, '6': '.inno.model.InnoText', '10': 'texts'},
  ],
};

/// Descriptor for `InnoEventSession`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List innoEventSessionDescriptor = $convert.base64Decode('ChBJbm5vRXZlbnRTZXNzaW9uEg4KAmlkGAEgASgJUgJpZBIZCghldmVudF9pZBgCIAEoCVIHZXZlbnRJZBIUCgV0aXRsZRgDIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb24YBCABKAlSC2Rlc2NyaXB0aW9uEkIKD3N0YXJ0X2RhdGVfdGltZRgFIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSDXN0YXJ0RGF0ZVRpbWUSPgoNZW5kX2RhdGVfdGltZRgGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC2VuZERhdGVUaW1lEjwKC2NvbmZlcmVuY2VzGAcgAygLMhouaW5uby5tb2RlbC5Jbm5vQ29uZmVyZW5jZVILY29uZmVyZW5jZXMSKgoFbGlua3MYCCADKAsyFC5pbm5vLm1vZGVsLklubm9MaW5rUgVsaW5rcxIqCgV0ZXh0cxgJIAMoCzIULmlubm8ubW9kZWwuSW5ub1RleHRSBXRleHRz');
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
    const {'1': 'service_entity_id', '3': 2, '4': 1, '5': 9, '10': 'serviceEntityId'},
    const {'1': 'tag', '3': 3, '4': 1, '5': 9, '10': 'tag'},
  ],
};

/// Descriptor for `InnoResource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List innoResourceDescriptor = $convert.base64Decode('CgxJbm5vUmVzb3VyY2USDgoCaWQYASABKAlSAmlkEioKEXNlcnZpY2VfZW50aXR5X2lkGAIgASgJUg9zZXJ2aWNlRW50aXR5SWQSEAoDdGFnGAMgASgJUgN0YWc=');
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
