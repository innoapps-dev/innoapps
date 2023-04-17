///
//  Generated code. Do not modify.
//  source: inno/api/conference/inno_conference_provider.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'inno_conference_provider.pb.dart' as $0;
import '../../model/inno_model.pb.dart' as $1;
import '../../../google/protobuf/empty.pb.dart' as $2;
export 'inno_conference_provider.pb.dart';

class InnoConferenceProviderServiceClient extends $grpc.Client {
  static final _$listInnoConferenceProviders = $grpc.ClientMethod<
          $0.ListInnoConferenceProvidersRequest,
          $0.ListInnoConferenceProvidersResponse>(
      '/inno.conference.InnoConferenceProviderService/ListInnoConferenceProviders',
      ($0.ListInnoConferenceProvidersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ListInnoConferenceProvidersResponse.fromBuffer(value));
  static final _$getInnoConferenceProvider = $grpc.ClientMethod<
          $0.GetInnoConferenceProviderRequest, $1.InnoConferenceProvider>(
      '/inno.conference.InnoConferenceProviderService/GetInnoConferenceProvider',
      ($0.GetInnoConferenceProviderRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.InnoConferenceProvider.fromBuffer(value));
  static final _$createInnoConferenceProvider = $grpc.ClientMethod<
          $0.CreateInnoConferenceProviderRequest, $1.InnoConferenceProvider>(
      '/inno.conference.InnoConferenceProviderService/CreateInnoConferenceProvider',
      ($0.CreateInnoConferenceProviderRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.InnoConferenceProvider.fromBuffer(value));
  static final _$updateInnoConferenceProvider = $grpc.ClientMethod<
          $0.UpdateInnoConferenceProviderRequest, $1.InnoConferenceProvider>(
      '/inno.conference.InnoConferenceProviderService/UpdateInnoConferenceProvider',
      ($0.UpdateInnoConferenceProviderRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.InnoConferenceProvider.fromBuffer(value));
  static final _$deleteInnoConferenceProvider = $grpc.ClientMethod<
          $0.DeleteInnoConferenceProviderRequest, $2.Empty>(
      '/inno.conference.InnoConferenceProviderService/DeleteInnoConferenceProvider',
      ($0.DeleteInnoConferenceProviderRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  InnoConferenceProviderServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ListInnoConferenceProvidersResponse>
      listInnoConferenceProviders($0.ListInnoConferenceProvidersRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listInnoConferenceProviders, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.InnoConferenceProvider> getInnoConferenceProvider(
      $0.GetInnoConferenceProviderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInnoConferenceProvider, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.InnoConferenceProvider> createInnoConferenceProvider(
      $0.CreateInnoConferenceProviderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createInnoConferenceProvider, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.InnoConferenceProvider> updateInnoConferenceProvider(
      $0.UpdateInnoConferenceProviderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateInnoConferenceProvider, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.Empty> deleteInnoConferenceProvider(
      $0.DeleteInnoConferenceProviderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteInnoConferenceProvider, request,
        options: options);
  }
}

abstract class InnoConferenceProviderServiceBase extends $grpc.Service {
  $core.String get $name => 'inno.conference.InnoConferenceProviderService';

  InnoConferenceProviderServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListInnoConferenceProvidersRequest,
            $0.ListInnoConferenceProvidersResponse>(
        'ListInnoConferenceProviders',
        listInnoConferenceProviders_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ListInnoConferenceProvidersRequest.fromBuffer(value),
        ($0.ListInnoConferenceProvidersResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetInnoConferenceProviderRequest,
            $1.InnoConferenceProvider>(
        'GetInnoConferenceProvider',
        getInnoConferenceProvider_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetInnoConferenceProviderRequest.fromBuffer(value),
        ($1.InnoConferenceProvider value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateInnoConferenceProviderRequest,
            $1.InnoConferenceProvider>(
        'CreateInnoConferenceProvider',
        createInnoConferenceProvider_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateInnoConferenceProviderRequest.fromBuffer(value),
        ($1.InnoConferenceProvider value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateInnoConferenceProviderRequest,
            $1.InnoConferenceProvider>(
        'UpdateInnoConferenceProvider',
        updateInnoConferenceProvider_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateInnoConferenceProviderRequest.fromBuffer(value),
        ($1.InnoConferenceProvider value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.DeleteInnoConferenceProviderRequest, $2.Empty>(
            'DeleteInnoConferenceProvider',
            deleteInnoConferenceProvider_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.DeleteInnoConferenceProviderRequest.fromBuffer(value),
            ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListInnoConferenceProvidersResponse>
      listInnoConferenceProviders_Pre($grpc.ServiceCall call,
          $async.Future<$0.ListInnoConferenceProvidersRequest> request) async {
    return listInnoConferenceProviders(call, await request);
  }

  $async.Future<$1.InnoConferenceProvider> getInnoConferenceProvider_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetInnoConferenceProviderRequest> request) async {
    return getInnoConferenceProvider(call, await request);
  }

  $async.Future<$1.InnoConferenceProvider> createInnoConferenceProvider_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.CreateInnoConferenceProviderRequest> request) async {
    return createInnoConferenceProvider(call, await request);
  }

  $async.Future<$1.InnoConferenceProvider> updateInnoConferenceProvider_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.UpdateInnoConferenceProviderRequest> request) async {
    return updateInnoConferenceProvider(call, await request);
  }

  $async.Future<$2.Empty> deleteInnoConferenceProvider_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DeleteInnoConferenceProviderRequest> request) async {
    return deleteInnoConferenceProvider(call, await request);
  }

  $async.Future<$0.ListInnoConferenceProvidersResponse>
      listInnoConferenceProviders($grpc.ServiceCall call,
          $0.ListInnoConferenceProvidersRequest request);
  $async.Future<$1.InnoConferenceProvider> getInnoConferenceProvider(
      $grpc.ServiceCall call, $0.GetInnoConferenceProviderRequest request);
  $async.Future<$1.InnoConferenceProvider> createInnoConferenceProvider(
      $grpc.ServiceCall call, $0.CreateInnoConferenceProviderRequest request);
  $async.Future<$1.InnoConferenceProvider> updateInnoConferenceProvider(
      $grpc.ServiceCall call, $0.UpdateInnoConferenceProviderRequest request);
  $async.Future<$2.Empty> deleteInnoConferenceProvider(
      $grpc.ServiceCall call, $0.DeleteInnoConferenceProviderRequest request);
}
