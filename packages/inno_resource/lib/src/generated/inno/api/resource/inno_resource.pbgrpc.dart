///
//  Generated code. Do not modify.
//  source: inno/api/resource/inno_resource.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'inno_resource.pb.dart' as $0;
import '../../model/inno_model.pb.dart' as $1;
import '../../../google/protobuf/empty.pb.dart' as $2;
export 'inno_resource.pb.dart';

class InnoResourceServiceClient extends $grpc.Client {
  static final _$listInnoResources = $grpc.ClientMethod<
          $0.ListInnoResourcesRequest, $0.ListInnoResourcesResponse>(
      '/inno.resource.InnoResourceService/ListInnoResources',
      ($0.ListInnoResourcesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ListInnoResourcesResponse.fromBuffer(value));
  static final _$getInnoResource =
      $grpc.ClientMethod<$0.GetInnoResourceRequest, $1.InnoResource>(
          '/inno.resource.InnoResourceService/GetInnoResource',
          ($0.GetInnoResourceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoResource.fromBuffer(value));
  static final _$createInnoResource =
      $grpc.ClientMethod<$0.CreateInnoResourceRequest, $1.InnoResource>(
          '/inno.resource.InnoResourceService/CreateInnoResource',
          ($0.CreateInnoResourceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoResource.fromBuffer(value));
  static final _$updateInnoResource =
      $grpc.ClientMethod<$0.UpdateInnoResourceRequest, $1.InnoResource>(
          '/inno.resource.InnoResourceService/UpdateInnoResource',
          ($0.UpdateInnoResourceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoResource.fromBuffer(value));
  static final _$deleteInnoResource =
      $grpc.ClientMethod<$0.DeleteInnoResourceRequest, $2.Empty>(
          '/inno.resource.InnoResourceService/DeleteInnoResource',
          ($0.DeleteInnoResourceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  InnoResourceServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ListInnoResourcesResponse> listInnoResources(
      $0.ListInnoResourcesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listInnoResources, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoResource> getInnoResource(
      $0.GetInnoResourceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInnoResource, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoResource> createInnoResource(
      $0.CreateInnoResourceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createInnoResource, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoResource> updateInnoResource(
      $0.UpdateInnoResourceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateInnoResource, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> deleteInnoResource(
      $0.DeleteInnoResourceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteInnoResource, request, options: options);
  }
}

abstract class InnoResourceServiceBase extends $grpc.Service {
  $core.String get $name => 'inno.resource.InnoResourceService';

  InnoResourceServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListInnoResourcesRequest,
            $0.ListInnoResourcesResponse>(
        'ListInnoResources',
        listInnoResources_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ListInnoResourcesRequest.fromBuffer(value),
        ($0.ListInnoResourcesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetInnoResourceRequest, $1.InnoResource>(
        'GetInnoResource',
        getInnoResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetInnoResourceRequest.fromBuffer(value),
        ($1.InnoResource value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.CreateInnoResourceRequest, $1.InnoResource>(
            'CreateInnoResource',
            createInnoResource_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.CreateInnoResourceRequest.fromBuffer(value),
            ($1.InnoResource value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UpdateInnoResourceRequest, $1.InnoResource>(
            'UpdateInnoResource',
            updateInnoResource_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UpdateInnoResourceRequest.fromBuffer(value),
            ($1.InnoResource value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteInnoResourceRequest, $2.Empty>(
        'DeleteInnoResource',
        deleteInnoResource_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteInnoResourceRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListInnoResourcesResponse> listInnoResources_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListInnoResourcesRequest> request) async {
    return listInnoResources(call, await request);
  }

  $async.Future<$1.InnoResource> getInnoResource_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetInnoResourceRequest> request) async {
    return getInnoResource(call, await request);
  }

  $async.Future<$1.InnoResource> createInnoResource_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateInnoResourceRequest> request) async {
    return createInnoResource(call, await request);
  }

  $async.Future<$1.InnoResource> updateInnoResource_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateInnoResourceRequest> request) async {
    return updateInnoResource(call, await request);
  }

  $async.Future<$2.Empty> deleteInnoResource_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteInnoResourceRequest> request) async {
    return deleteInnoResource(call, await request);
  }

  $async.Future<$0.ListInnoResourcesResponse> listInnoResources(
      $grpc.ServiceCall call, $0.ListInnoResourcesRequest request);
  $async.Future<$1.InnoResource> getInnoResource(
      $grpc.ServiceCall call, $0.GetInnoResourceRequest request);
  $async.Future<$1.InnoResource> createInnoResource(
      $grpc.ServiceCall call, $0.CreateInnoResourceRequest request);
  $async.Future<$1.InnoResource> updateInnoResource(
      $grpc.ServiceCall call, $0.UpdateInnoResourceRequest request);
  $async.Future<$2.Empty> deleteInnoResource(
      $grpc.ServiceCall call, $0.DeleteInnoResourceRequest request);
}
