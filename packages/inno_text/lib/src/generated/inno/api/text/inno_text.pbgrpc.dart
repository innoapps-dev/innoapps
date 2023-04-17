///
//  Generated code. Do not modify.
//  source: inno/api/text/inno_text.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'inno_text.pb.dart' as $0;
import '../../model/inno_model.pb.dart' as $1;
import '../../../google/protobuf/empty.pb.dart' as $2;
export 'inno_text.pb.dart';

class InnoTextServiceClient extends $grpc.Client {
  static final _$listInnoTexts =
      $grpc.ClientMethod<$0.ListInnoTextsRequest, $0.ListInnoTextsResponse>(
          '/inno.text.InnoTextService/ListInnoTexts',
          ($0.ListInnoTextsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListInnoTextsResponse.fromBuffer(value));
  static final _$getInnoText =
      $grpc.ClientMethod<$0.GetInnoTextRequest, $1.InnoText>(
          '/inno.text.InnoTextService/GetInnoText',
          ($0.GetInnoTextRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoText.fromBuffer(value));
  static final _$createInnoText =
      $grpc.ClientMethod<$0.CreateInnoTextRequest, $1.InnoText>(
          '/inno.text.InnoTextService/CreateInnoText',
          ($0.CreateInnoTextRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoText.fromBuffer(value));
  static final _$updateInnoText =
      $grpc.ClientMethod<$0.UpdateInnoTextRequest, $1.InnoText>(
          '/inno.text.InnoTextService/UpdateInnoText',
          ($0.UpdateInnoTextRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoText.fromBuffer(value));
  static final _$deleteInnoText =
      $grpc.ClientMethod<$0.DeleteInnoTextRequest, $2.Empty>(
          '/inno.text.InnoTextService/DeleteInnoText',
          ($0.DeleteInnoTextRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  InnoTextServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ListInnoTextsResponse> listInnoTexts(
      $0.ListInnoTextsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listInnoTexts, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoText> getInnoText($0.GetInnoTextRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInnoText, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoText> createInnoText(
      $0.CreateInnoTextRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createInnoText, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoText> updateInnoText(
      $0.UpdateInnoTextRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateInnoText, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> deleteInnoText(
      $0.DeleteInnoTextRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteInnoText, request, options: options);
  }
}

abstract class InnoTextServiceBase extends $grpc.Service {
  $core.String get $name => 'inno.text.InnoTextService';

  InnoTextServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.ListInnoTextsRequest, $0.ListInnoTextsResponse>(
            'ListInnoTexts',
            listInnoTexts_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ListInnoTextsRequest.fromBuffer(value),
            ($0.ListInnoTextsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetInnoTextRequest, $1.InnoText>(
        'GetInnoText',
        getInnoText_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetInnoTextRequest.fromBuffer(value),
        ($1.InnoText value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateInnoTextRequest, $1.InnoText>(
        'CreateInnoText',
        createInnoText_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateInnoTextRequest.fromBuffer(value),
        ($1.InnoText value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateInnoTextRequest, $1.InnoText>(
        'UpdateInnoText',
        updateInnoText_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateInnoTextRequest.fromBuffer(value),
        ($1.InnoText value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteInnoTextRequest, $2.Empty>(
        'DeleteInnoText',
        deleteInnoText_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteInnoTextRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListInnoTextsResponse> listInnoTexts_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListInnoTextsRequest> request) async {
    return listInnoTexts(call, await request);
  }

  $async.Future<$1.InnoText> getInnoText_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetInnoTextRequest> request) async {
    return getInnoText(call, await request);
  }

  $async.Future<$1.InnoText> createInnoText_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateInnoTextRequest> request) async {
    return createInnoText(call, await request);
  }

  $async.Future<$1.InnoText> updateInnoText_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateInnoTextRequest> request) async {
    return updateInnoText(call, await request);
  }

  $async.Future<$2.Empty> deleteInnoText_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteInnoTextRequest> request) async {
    return deleteInnoText(call, await request);
  }

  $async.Future<$0.ListInnoTextsResponse> listInnoTexts(
      $grpc.ServiceCall call, $0.ListInnoTextsRequest request);
  $async.Future<$1.InnoText> getInnoText(
      $grpc.ServiceCall call, $0.GetInnoTextRequest request);
  $async.Future<$1.InnoText> createInnoText(
      $grpc.ServiceCall call, $0.CreateInnoTextRequest request);
  $async.Future<$1.InnoText> updateInnoText(
      $grpc.ServiceCall call, $0.UpdateInnoTextRequest request);
  $async.Future<$2.Empty> deleteInnoText(
      $grpc.ServiceCall call, $0.DeleteInnoTextRequest request);
}
