///
//  Generated code. Do not modify.
//  source: inno/api/service/inno_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'inno_service.pb.dart' as $0;
import '../../model/inno_model.pb.dart' as $1;
import '../../../google/protobuf/empty.pb.dart' as $2;
export 'inno_service.pb.dart';

class InnoServiceServiceClient extends $grpc.Client {
  static final _$listInnoServices = $grpc.ClientMethod<
          $0.ListInnoServicesRequest, $0.ListInnoServicesResponse>(
      '/inno.service.InnoServiceService/ListInnoServices',
      ($0.ListInnoServicesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ListInnoServicesResponse.fromBuffer(value));
  static final _$getInnoService =
      $grpc.ClientMethod<$0.GetInnoServiceRequest, $1.InnoService>(
          '/inno.service.InnoServiceService/GetInnoService',
          ($0.GetInnoServiceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoService.fromBuffer(value));
  static final _$createInnoService =
      $grpc.ClientMethod<$0.CreateInnoServiceRequest, $1.InnoService>(
          '/inno.service.InnoServiceService/CreateInnoService',
          ($0.CreateInnoServiceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoService.fromBuffer(value));
  static final _$updateInnoService =
      $grpc.ClientMethod<$0.UpdateInnoServiceRequest, $1.InnoService>(
          '/inno.service.InnoServiceService/UpdateInnoService',
          ($0.UpdateInnoServiceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoService.fromBuffer(value));
  static final _$deleteInnoService =
      $grpc.ClientMethod<$0.DeleteInnoServiceRequest, $2.Empty>(
          '/inno.service.InnoServiceService/DeleteInnoService',
          ($0.DeleteInnoServiceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  InnoServiceServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ListInnoServicesResponse> listInnoServices(
      $0.ListInnoServicesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listInnoServices, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoService> getInnoService(
      $0.GetInnoServiceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInnoService, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoService> createInnoService(
      $0.CreateInnoServiceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createInnoService, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoService> updateInnoService(
      $0.UpdateInnoServiceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateInnoService, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> deleteInnoService(
      $0.DeleteInnoServiceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteInnoService, request, options: options);
  }
}

abstract class InnoServiceServiceBase extends $grpc.Service {
  $core.String get $name => 'inno.service.InnoServiceService';

  InnoServiceServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListInnoServicesRequest,
            $0.ListInnoServicesResponse>(
        'ListInnoServices',
        listInnoServices_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ListInnoServicesRequest.fromBuffer(value),
        ($0.ListInnoServicesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetInnoServiceRequest, $1.InnoService>(
        'GetInnoService',
        getInnoService_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetInnoServiceRequest.fromBuffer(value),
        ($1.InnoService value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateInnoServiceRequest, $1.InnoService>(
        'CreateInnoService',
        createInnoService_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateInnoServiceRequest.fromBuffer(value),
        ($1.InnoService value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateInnoServiceRequest, $1.InnoService>(
        'UpdateInnoService',
        updateInnoService_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateInnoServiceRequest.fromBuffer(value),
        ($1.InnoService value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteInnoServiceRequest, $2.Empty>(
        'DeleteInnoService',
        deleteInnoService_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteInnoServiceRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListInnoServicesResponse> listInnoServices_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListInnoServicesRequest> request) async {
    return listInnoServices(call, await request);
  }

  $async.Future<$1.InnoService> getInnoService_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetInnoServiceRequest> request) async {
    return getInnoService(call, await request);
  }

  $async.Future<$1.InnoService> createInnoService_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateInnoServiceRequest> request) async {
    return createInnoService(call, await request);
  }

  $async.Future<$1.InnoService> updateInnoService_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateInnoServiceRequest> request) async {
    return updateInnoService(call, await request);
  }

  $async.Future<$2.Empty> deleteInnoService_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteInnoServiceRequest> request) async {
    return deleteInnoService(call, await request);
  }

  $async.Future<$0.ListInnoServicesResponse> listInnoServices(
      $grpc.ServiceCall call, $0.ListInnoServicesRequest request);
  $async.Future<$1.InnoService> getInnoService(
      $grpc.ServiceCall call, $0.GetInnoServiceRequest request);
  $async.Future<$1.InnoService> createInnoService(
      $grpc.ServiceCall call, $0.CreateInnoServiceRequest request);
  $async.Future<$1.InnoService> updateInnoService(
      $grpc.ServiceCall call, $0.UpdateInnoServiceRequest request);
  $async.Future<$2.Empty> deleteInnoService(
      $grpc.ServiceCall call, $0.DeleteInnoServiceRequest request);
}
