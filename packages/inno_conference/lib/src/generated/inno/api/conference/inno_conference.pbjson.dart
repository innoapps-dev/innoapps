///
//  Generated code. Do not modify.
//  source: inno/api/conference/inno_conference.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use listInnoConferencesRequestDescriptor instead')
const ListInnoConferencesRequest$json = const {
  '1': 'ListInnoConferencesRequest',
};

/// Descriptor for `ListInnoConferencesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInnoConferencesRequestDescriptor = $convert.base64Decode('ChpMaXN0SW5ub0NvbmZlcmVuY2VzUmVxdWVzdA==');
@$core.Deprecated('Use listInnoConferencesResponseDescriptor instead')
const ListInnoConferencesResponse$json = const {
  '1': 'ListInnoConferencesResponse',
  '2': const [
    const {'1': 'inno_conferences', '3': 1, '4': 3, '5': 11, '6': '.inno.model.InnoConference', '10': 'innoConferences'},
  ],
};

/// Descriptor for `ListInnoConferencesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInnoConferencesResponseDescriptor = $convert.base64Decode('ChtMaXN0SW5ub0NvbmZlcmVuY2VzUmVzcG9uc2USRQoQaW5ub19jb25mZXJlbmNlcxgBIAMoCzIaLmlubm8ubW9kZWwuSW5ub0NvbmZlcmVuY2VSD2lubm9Db25mZXJlbmNlcw==');
@$core.Deprecated('Use getInnoConferenceRequestDescriptor instead')
const GetInnoConferenceRequest$json = const {
  '1': 'GetInnoConferenceRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetInnoConferenceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInnoConferenceRequestDescriptor = $convert.base64Decode('ChhHZXRJbm5vQ29uZmVyZW5jZVJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use createInnoConferenceRequestDescriptor instead')
const CreateInnoConferenceRequest$json = const {
  '1': 'CreateInnoConferenceRequest',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'provider_id', '3': 2, '4': 1, '5': 9, '10': 'providerId'},
  ],
};

/// Descriptor for `CreateInnoConferenceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createInnoConferenceRequestDescriptor = $convert.base64Decode('ChtDcmVhdGVJbm5vQ29uZmVyZW5jZVJlcXVlc3QSFAoFdGl0bGUYASABKAlSBXRpdGxlEh8KC3Byb3ZpZGVyX2lkGAIgASgJUgpwcm92aWRlcklk');
@$core.Deprecated('Use updateInnoConferenceRequestDescriptor instead')
const UpdateInnoConferenceRequest$json = const {
  '1': 'UpdateInnoConferenceRequest',
  '2': const [
    const {'1': 'inno_conference', '3': 1, '4': 1, '5': 11, '6': '.inno.model.InnoConference', '10': 'innoConference'},
    const {'1': 'update_mask', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'updateMask'},
  ],
};

/// Descriptor for `UpdateInnoConferenceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateInnoConferenceRequestDescriptor = $convert.base64Decode('ChtVcGRhdGVJbm5vQ29uZmVyZW5jZVJlcXVlc3QSQwoPaW5ub19jb25mZXJlbmNlGAEgASgLMhouaW5uby5tb2RlbC5Jbm5vQ29uZmVyZW5jZVIOaW5ub0NvbmZlcmVuY2USOwoLdXBkYXRlX21hc2sYAiABKAsyGi5nb29nbGUucHJvdG9idWYuRmllbGRNYXNrUgp1cGRhdGVNYXNr');
@$core.Deprecated('Use deleteInnoConferenceRequestDescriptor instead')
const DeleteInnoConferenceRequest$json = const {
  '1': 'DeleteInnoConferenceRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteInnoConferenceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteInnoConferenceRequestDescriptor = $convert.base64Decode('ChtEZWxldGVJbm5vQ29uZmVyZW5jZVJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
