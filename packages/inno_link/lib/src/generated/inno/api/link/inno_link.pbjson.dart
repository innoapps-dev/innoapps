///
//  Generated code. Do not modify.
//  source: inno/api/link/inno_link.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use listInnoLinksRequestDescriptor instead')
const ListInnoLinksRequest$json = const {
  '1': 'ListInnoLinksRequest',
};

/// Descriptor for `ListInnoLinksRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInnoLinksRequestDescriptor = $convert.base64Decode('ChRMaXN0SW5ub0xpbmtzUmVxdWVzdA==');
@$core.Deprecated('Use listInnoLinksResponseDescriptor instead')
const ListInnoLinksResponse$json = const {
  '1': 'ListInnoLinksResponse',
  '2': const [
    const {'1': 'inno_links', '3': 1, '4': 3, '5': 11, '6': '.inno.model.InnoLink', '10': 'innoLinks'},
  ],
};

/// Descriptor for `ListInnoLinksResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInnoLinksResponseDescriptor = $convert.base64Decode('ChVMaXN0SW5ub0xpbmtzUmVzcG9uc2USMwoKaW5ub19saW5rcxgBIAMoCzIULmlubm8ubW9kZWwuSW5ub0xpbmtSCWlubm9MaW5rcw==');
@$core.Deprecated('Use getInnoLinkRequestDescriptor instead')
const GetInnoLinkRequest$json = const {
  '1': 'GetInnoLinkRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GetInnoLinkRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInnoLinkRequestDescriptor = $convert.base64Decode('ChJHZXRJbm5vTGlua1JlcXVlc3QSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use createInnoLinkRequestDescriptor instead')
const CreateInnoLinkRequest$json = const {
  '1': 'CreateInnoLinkRequest',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `CreateInnoLinkRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createInnoLinkRequestDescriptor = $convert.base64Decode('ChVDcmVhdGVJbm5vTGlua1JlcXVlc3QSFAoFdGl0bGUYASABKAlSBXRpdGxlEhAKA3VybBgCIAEoCVIDdXJs');
@$core.Deprecated('Use updateInnoLinkRequestDescriptor instead')
const UpdateInnoLinkRequest$json = const {
  '1': 'UpdateInnoLinkRequest',
  '2': const [
    const {'1': 'inno_link', '3': 1, '4': 1, '5': 11, '6': '.inno.model.InnoLink', '10': 'innoLink'},
    const {'1': 'update_mask', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.FieldMask', '10': 'updateMask'},
  ],
};

/// Descriptor for `UpdateInnoLinkRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateInnoLinkRequestDescriptor = $convert.base64Decode('ChVVcGRhdGVJbm5vTGlua1JlcXVlc3QSMQoJaW5ub19saW5rGAEgASgLMhQuaW5uby5tb2RlbC5Jbm5vTGlua1IIaW5ub0xpbmsSOwoLdXBkYXRlX21hc2sYAiABKAsyGi5nb29nbGUucHJvdG9idWYuRmllbGRNYXNrUgp1cGRhdGVNYXNr');
@$core.Deprecated('Use deleteInnoLinkRequestDescriptor instead')
const DeleteInnoLinkRequest$json = const {
  '1': 'DeleteInnoLinkRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DeleteInnoLinkRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteInnoLinkRequestDescriptor = $convert.base64Decode('ChVEZWxldGVJbm5vTGlua1JlcXVlc3QSDgoCaWQYASABKAlSAmlk');
