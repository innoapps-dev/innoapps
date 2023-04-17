///
//  Generated code. Do not modify.
//  source: inno/api/text/inno_text.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use listInnoTextsRequestDescriptor instead')
const ListInnoTextsRequest$json = const {
  '1': 'ListInnoTextsRequest',
};

/// Descriptor for `ListInnoTextsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInnoTextsRequestDescriptor = $convert.base64Decode('ChRMaXN0SW5ub1RleHRzUmVxdWVzdA==');
@$core.Deprecated('Use listInnoTextsResponseDescriptor instead')
const ListInnoTextsResponse$json = const {
  '1': 'ListInnoTextsResponse',
  '2': const [
    const {'1': 'inno_texts', '3': 1, '4': 3, '5': 11, '6': '.inno.model.InnoText', '10': 'innoTexts'},
  ],
};

/// Descriptor for `ListInnoTextsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInnoTextsResponseDescriptor = $convert.base64Decode('ChVMaXN0SW5ub1RleHRzUmVzcG9uc2USMwoKaW5ub190ZXh0cxgBIAMoCzIULmlubm8ubW9kZWwuSW5ub1RleHRSCWlubm9UZXh0cw==');
@$core.Deprecated('Use getInnoTextRequestDescriptor instead')
const GetInnoTextRequest$json = const {
  '1': 'GetInnoTextRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetInnoTextRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInnoTextRequestDescriptor = $convert.base64Decode('ChJHZXRJbm5vVGV4dFJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use createInnoTextRequestDescriptor instead')
const CreateInnoTextRequest$json = const {
  '1': 'CreateInnoTextRequest',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
  ],
};

/// Descriptor for `CreateInnoTextRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createInnoTextRequestDescriptor = $convert.base64Decode('ChVDcmVhdGVJbm5vVGV4dFJlcXVlc3QSFAoFdGl0bGUYASABKAlSBXRpdGxl');
@$core.Deprecated('Use updateInnoTextRequestDescriptor instead')
const UpdateInnoTextRequest$json = const {
  '1': 'UpdateInnoTextRequest',
  '2': const [
    const {'1': 'inno_text', '3': 1, '4': 1, '5': 11, '6': '.inno.model.InnoText', '10': 'innoText'},
    const {'1': 'update_mask', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'updateMask'},
  ],
};

/// Descriptor for `UpdateInnoTextRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateInnoTextRequestDescriptor = $convert.base64Decode('ChVVcGRhdGVJbm5vVGV4dFJlcXVlc3QSMQoJaW5ub190ZXh0GAEgASgLMhQuaW5uby5tb2RlbC5Jbm5vVGV4dFIIaW5ub1RleHQSOwoLdXBkYXRlX21hc2sYAiABKAsyGi5nb29nbGUucHJvdG9idWYuRmllbGRNYXNrUgp1cGRhdGVNYXNr');
@$core.Deprecated('Use deleteInnoTextRequestDescriptor instead')
const DeleteInnoTextRequest$json = const {
  '1': 'DeleteInnoTextRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteInnoTextRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteInnoTextRequestDescriptor = $convert.base64Decode('ChVEZWxldGVJbm5vVGV4dFJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
