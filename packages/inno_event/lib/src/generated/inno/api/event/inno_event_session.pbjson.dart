///
//  Generated code. Do not modify.
//  source: inno/api/event/inno_event_session.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use listInnoEventSessionsRequestDescriptor instead')
const ListInnoEventSessionsRequest$json = const {
  '1': 'ListInnoEventSessionsRequest',
  '2': const [
    const {'1': 'inno_event_id', '3': 1, '4': 1, '5': 9, '10': 'innoEventId'},
  ],
};

/// Descriptor for `ListInnoEventSessionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInnoEventSessionsRequestDescriptor = $convert.base64Decode('ChxMaXN0SW5ub0V2ZW50U2Vzc2lvbnNSZXF1ZXN0EiIKDWlubm9fZXZlbnRfaWQYASABKAlSC2lubm9FdmVudElk');
@$core.Deprecated('Use listInnoEventSessionsResponseDescriptor instead')
const ListInnoEventSessionsResponse$json = const {
  '1': 'ListInnoEventSessionsResponse',
  '2': const [
    const {'1': 'inno_event_sessions', '3': 1, '4': 3, '5': 11, '6': '.inno.model.InnoEventSession', '10': 'innoEventSessions'},
  ],
};

/// Descriptor for `ListInnoEventSessionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInnoEventSessionsResponseDescriptor = $convert.base64Decode('Ch1MaXN0SW5ub0V2ZW50U2Vzc2lvbnNSZXNwb25zZRJMChNpbm5vX2V2ZW50X3Nlc3Npb25zGAEgAygLMhwuaW5uby5tb2RlbC5Jbm5vRXZlbnRTZXNzaW9uUhFpbm5vRXZlbnRTZXNzaW9ucw==');
@$core.Deprecated('Use getInnoEventSessionRequestDescriptor instead')
const GetInnoEventSessionRequest$json = const {
  '1': 'GetInnoEventSessionRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetInnoEventSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInnoEventSessionRequestDescriptor = $convert.base64Decode('ChpHZXRJbm5vRXZlbnRTZXNzaW9uUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use createInnoEventSessionRequestDescriptor instead')
const CreateInnoEventSessionRequest$json = const {
  '1': 'CreateInnoEventSessionRequest',
  '2': const [
    const {'1': 'inno_event_id', '3': 1, '4': 1, '5': 9, '10': 'innoEventId'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'start_date_time', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startDateTime'},
    const {'1': 'end_date_time', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'endDateTime'},
  ],
};

/// Descriptor for `CreateInnoEventSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createInnoEventSessionRequestDescriptor = $convert.base64Decode('Ch1DcmVhdGVJbm5vRXZlbnRTZXNzaW9uUmVxdWVzdBIiCg1pbm5vX2V2ZW50X2lkGAEgASgJUgtpbm5vRXZlbnRJZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEkIKD3N0YXJ0X2RhdGVfdGltZRgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSDXN0YXJ0RGF0ZVRpbWUSPgoNZW5kX2RhdGVfdGltZRgFIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC2VuZERhdGVUaW1l');
@$core.Deprecated('Use updateInnoEventSessionRequestDescriptor instead')
const UpdateInnoEventSessionRequest$json = const {
  '1': 'UpdateInnoEventSessionRequest',
  '2': const [
    const {'1': 'inno_event_session', '3': 1, '4': 1, '5': 11, '6': '.inno.model.InnoEventSession', '10': 'innoEventSession'},
    const {'1': 'update_mask', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'updateMask'},
  ],
};

/// Descriptor for `UpdateInnoEventSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateInnoEventSessionRequestDescriptor = $convert.base64Decode('Ch1VcGRhdGVJbm5vRXZlbnRTZXNzaW9uUmVxdWVzdBJKChJpbm5vX2V2ZW50X3Nlc3Npb24YASABKAsyHC5pbm5vLm1vZGVsLklubm9FdmVudFNlc3Npb25SEGlubm9FdmVudFNlc3Npb24SOwoLdXBkYXRlX21hc2sYAiABKAsyGi5nb29nbGUucHJvdG9idWYuRmllbGRNYXNrUgp1cGRhdGVNYXNr');
@$core.Deprecated('Use deleteInnoEventSessionRequestDescriptor instead')
const DeleteInnoEventSessionRequest$json = const {
  '1': 'DeleteInnoEventSessionRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteInnoEventSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteInnoEventSessionRequestDescriptor = $convert.base64Decode('Ch1EZWxldGVJbm5vRXZlbnRTZXNzaW9uUmVxdWVzdBIOCgJpZBgBIAEoCVICaWQ=');
