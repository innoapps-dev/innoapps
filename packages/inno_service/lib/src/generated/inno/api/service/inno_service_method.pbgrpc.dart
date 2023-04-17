///
//  Generated code. Do not modify.
//  source: inno/api/service/inno_service_method.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'inno_service_method.pb.dart' as $0;
import '../../model/inno_model.pb.dart' as $1;
import '../../../google/protobuf/empty.pb.dart' as $2;
export 'inno_service_method.pb.dart';

class InnoServiceMethodServiceClient extends $grpc.Client {
  static final _$listInnoServiceMethods = $grpc.ClientMethod<
          $0.ListInnoServiceMethodsRequest, $0.ListInnoServiceMethodsResponse>(
      '/inno.service.InnoServiceMethodService/ListInnoServiceMethods',
      ($0.ListInnoServiceMethodsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ListInnoServiceMethodsResponse.fromBuffer(value));
  static final _$getInnoServiceMethod =
      $grpc.ClientMethod<$0.GetInnoServiceMethodRequest, $1.InnoServiceMethod>(
          '/inno.service.InnoServiceMethodService/GetInnoServiceMethod',
          ($0.GetInnoServiceMethodRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.InnoServiceMethod.fromBuffer(value));
  static final _$createInnoServiceMethod = $grpc.ClientMethod<
          $0.CreateInnoServiceMethodRequest, $1.InnoServiceMethod>(
      '/inno.service.InnoServiceMethodService/CreateInnoServiceMethod',
      ($0.CreateInnoServiceMethodRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.InnoServiceMethod.fromBuffer(value));
  static final _$updateInnoServiceMethod = $grpc.ClientMethod<
          $0.UpdateInnoServiceMethodRequest, $1.InnoServiceMethod>(
      '/inno.service.InnoServiceMethodService/UpdateInnoServiceMethod',
      ($0.UpdateInnoServiceMethodRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.InnoServiceMethod.fromBuffer(value));
  static final _$deleteInnoServiceMethod =
      $grpc.ClientMethod<$0.DeleteInnoServiceMethodRequest, $2.Empty>(
          '/inno.service.InnoServiceMethodService/DeleteInnoServiceMethod',
          ($0.DeleteInnoServiceMethodRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  InnoServiceMethodServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ListInnoServiceMethodsResponse>
      listInnoServiceMethods($0.ListInnoServiceMethodsRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listInnoServiceMethods, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.InnoServiceMethod> getInnoServiceMethod(
      $0.GetInnoServiceMethodRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInnoServiceMethod, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoServiceMethod> createInnoServiceMethod(
      $0.CreateInnoServiceMethodRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createInnoServiceMethod, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.InnoServiceMethod> updateInnoServiceMethod(
      $0.UpdateInnoServiceMethodRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateInnoServiceMethod, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.Empty> deleteInnoServiceMethod(
      $0.DeleteInnoServiceMethodRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteInnoServiceMethod, request,
        options: options);
  }
}

abstract class InnoServiceMethodServiceBase extends $grpc.Service {
  $core.String get $name => 'inno.service.InnoServiceMethodService';

  InnoServiceMethodServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListInnoServiceMethodsRequest,
            $0.ListInnoServiceMethodsResponse>(
        'ListInnoServiceMethods',
        listInnoServiceMethods_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ListInnoServiceMethodsRequest.fromBuffer(value),
        ($0.ListInnoServiceMethodsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetInnoServiceMethodRequest,
            $1.InnoServiceMethod>(
        'GetInnoServiceMethod',
        getInnoServiceMethod_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetInnoServiceMethodRequest.fromBuffer(value),
        ($1.InnoServiceMethod value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateInnoServiceMethodRequest,
            $1.InnoServiceMethod>(
        'CreateInnoServiceMethod',
        createInnoServiceMethod_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateInnoServiceMethodRequest.fromBuffer(value),
        ($1.InnoServiceMethod value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateInnoServiceMethodRequest,
            $1.InnoServiceMethod>(
        'UpdateInnoServiceMethod',
        updateInnoServiceMethod_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateInnoServiceMethodRequest.fromBuffer(value),
        ($1.InnoServiceMethod value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteInnoServiceMethodRequest, $2.Empty>(
        'DeleteInnoServiceMethod',
        deleteInnoServiceMethod_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteInnoServiceMethodRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListInnoServiceMethodsResponse> listInnoServiceMethods_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListInnoServiceMethodsRequest> request) async {
    return listInnoServiceMethods(call, await request);
  }

  $async.Future<$1.InnoServiceMethod> getInnoServiceMethod_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetInnoServiceMethodRequest> request) async {
    return getInnoServiceMethod(call, await request);
  }

  $async.Future<$1.InnoServiceMethod> createInnoServiceMethod_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.CreateInnoServiceMethodRequest> request) async {
    return createInnoServiceMethod(call, await request);
  }

  $async.Future<$1.InnoServiceMethod> updateInnoServiceMethod_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.UpdateInnoServiceMethodRequest> request) async {
    return updateInnoServiceMethod(call, await request);
  }

  $async.Future<$2.Empty> deleteInnoServiceMethod_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteInnoServiceMethodRequest> request) async {
    return deleteInnoServiceMethod(call, await request);
  }

  $async.Future<$0.ListInnoServiceMethodsResponse> listInnoServiceMethods(
      $grpc.ServiceCall call, $0.ListInnoServiceMethodsRequest request);
  $async.Future<$1.InnoServiceMethod> getInnoServiceMethod(
      $grpc.ServiceCall call, $0.GetInnoServiceMethodRequest request);
  $async.Future<$1.InnoServiceMethod> createInnoServiceMethod(
      $grpc.ServiceCall call, $0.CreateInnoServiceMethodRequest request);
  $async.Future<$1.InnoServiceMethod> updateInnoServiceMethod(
      $grpc.ServiceCall call, $0.UpdateInnoServiceMethodRequest request);
  $async.Future<$2.Empty> deleteInnoServiceMethod(
      $grpc.ServiceCall call, $0.DeleteInnoServiceMethodRequest request);
}
