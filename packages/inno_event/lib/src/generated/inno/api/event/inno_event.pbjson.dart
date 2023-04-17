///
//  Generated code. Do not modify.
//  source: inno/api/event/inno_event.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use listInnoEventsRequestDescriptor instead')
const ListInnoEventsRequest$json = const {
  '1': 'ListInnoEventsRequest',
};

/// Descriptor for `ListInnoEventsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInnoEventsRequestDescriptor = $convert.base64Decode('ChVMaXN0SW5ub0V2ZW50c1JlcXVlc3Q=');
@$core.Deprecated('Use listInnoEventsResponseDescriptor instead')
const ListInnoEventsResponse$json = const {
  '1': 'ListInnoEventsResponse',
  '2': const [
    const {'1': 'inno_events', '3': 1, '4': 3, '5': 11, '6': '.inno.model.InnoEvent', '10': 'innoEvents'},
  ],
};

/// Descriptor for `ListInnoEventsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInnoEventsResponseDescriptor = $convert.base64Decode('ChZMaXN0SW5ub0V2ZW50c1Jlc3BvbnNlEjYKC2lubm9fZXZlbnRzGAEgAygLMhUuaW5uby5tb2RlbC5Jbm5vRXZlbnRSCmlubm9FdmVudHM=');
@$core.Deprecated('Use getInnoEventRequestDescriptor instead')
const GetInnoEventRequest$json = const {
  '1': 'GetInnoEventRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetInnoEventRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInnoEventRequestDescriptor = $convert.base64Decode('ChNHZXRJbm5vRXZlbnRSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');
@$core.Deprecated('Use createInnoEventRequestDescriptor instead')
const CreateInnoEventRequest$json = const {
  '1': 'CreateInnoEventRequest',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
  ],
};

/// Descriptor for `CreateInnoEventRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createInnoEventRequestDescriptor = $convert.base64Decode('ChZDcmVhdGVJbm5vRXZlbnRSZXF1ZXN0EhQKBXRpdGxlGAEgASgJUgV0aXRsZQ==');
@$core.Deprecated('Use updateInnoEventRequestDescriptor instead')
const UpdateInnoEventRequest$json = const {
  '1': 'UpdateInnoEventRequest',
  '2': const [
    const {'1': 'inno_event', '3': 1, '4': 1, '5': 11, '6': '.inno.model.InnoEvent', '10': 'innoEvent'},
    const {'1': 'update_mask', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'updateMask'},
  ],
};

/// Descriptor for `UpdateInnoEventRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateInnoEventRequestDescriptor = $convert.base64Decode('ChZVcGRhdGVJbm5vRXZlbnRSZXF1ZXN0EjQKCmlubm9fZXZlbnQYASABKAsyFS5pbm5vLm1vZGVsLklubm9FdmVudFIJaW5ub0V2ZW50EjsKC3VwZGF0ZV9tYXNrGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLkZpZWxkTWFza1IKdXBkYXRlTWFzaw==');
@$core.Deprecated('Use deleteInnoEventRequestDescriptor instead')
const DeleteInnoEventRequest$json = const {
  '1': 'DeleteInnoEventRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteInnoEventRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteInnoEventRequestDescriptor = $convert.base64Decode('ChZEZWxldGVJbm5vRXZlbnRSZXF1ZXN0Eg4KAmlkGAEgASgJUgJpZA==');
