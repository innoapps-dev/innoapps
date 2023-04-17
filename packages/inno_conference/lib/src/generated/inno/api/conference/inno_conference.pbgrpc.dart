///
//  Generated code. Do not modify.
//  source: inno/api/conference/inno_conference.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'inno_conference.pb.dart' as $0;
import '../../model/inno_model.pb.dart' as $1;
import '../../../google/protobuf/empty.pb.dart' as $2;
export 'inno_conference.pb.dart';

class InnoConferenceServiceClient extends $grpc.Client {
  static final _$listInnoConferences = $grpc.ClientMethod<
          $0.ListInnoConferencesRequest, $0.ListInnoConferencesResponse>(
      '/inno.conference.InnoConferenceService/ListInnoConferences',
      ($0.ListInnoConferencesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ListInnoConferencesResponse.fromBuffer(value));
  static final _$getInnoConference =
      $grpc.ClientMethod<$0.GetInnoConferenceRequest, $1.InnoConference>(
          '/inno.conference.InnoConferenceService/GetInnoConference',
          ($0.GetInnoConferenceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoConference.fromBuffer(value));
  static final _$createInnoConference =
      $grpc.ClientMethod<$0.CreateInnoConferenceRequest, $1.InnoConference>(
          '/inno.conference.InnoConferenceService/CreateInnoConference',
          ($0.CreateInnoConferenceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoConference.fromBuffer(value));
  static final _$updateInnoConference =
      $grpc.ClientMethod<$0.UpdateInnoConferenceRequest, $1.InnoConference>(
          '/inno.conference.InnoConferenceService/UpdateInnoConference',
          ($0.UpdateInnoConferenceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoConference.fromBuffer(value));
  static final _$deleteInnoConference =
      $grpc.ClientMethod<$0.DeleteInnoConferenceRequest, $2.Empty>(
          '/inno.conference.InnoConferenceService/DeleteInnoConference',
          ($0.DeleteInnoConferenceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  InnoConferenceServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ListInnoConferencesResponse> listInnoConferences(
      $0.ListInnoConferencesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listInnoConferences, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoConference> getInnoConference(
      $0.GetInnoConferenceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInnoConference, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoConference> createInnoConference(
      $0.CreateInnoConferenceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createInnoConference, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoConference> updateInnoConference(
      $0.UpdateInnoConferenceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateInnoConference, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> deleteInnoConference(
      $0.DeleteInnoConferenceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteInnoConference, request, options: options);
  }
}

abstract class InnoConferenceServiceBase extends $grpc.Service {
  $core.String get $name => 'inno.conference.InnoConferenceService';

  InnoConferenceServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListInnoConferencesRequest,
            $0.ListInnoConferencesResponse>(
        'ListInnoConferences',
        listInnoConferences_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ListInnoConferencesRequest.fromBuffer(value),
        ($0.ListInnoConferencesResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetInnoConferenceRequest, $1.InnoConference>(
            'GetInnoConference',
            getInnoConference_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetInnoConferenceRequest.fromBuffer(value),
            ($1.InnoConference value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.CreateInnoConferenceRequest, $1.InnoConference>(
            'CreateInnoConference',
            createInnoConference_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.CreateInnoConferenceRequest.fromBuffer(value),
            ($1.InnoConference value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UpdateInnoConferenceRequest, $1.InnoConference>(
            'UpdateInnoConference',
            updateInnoConference_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UpdateInnoConferenceRequest.fromBuffer(value),
            ($1.InnoConference value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteInnoConferenceRequest, $2.Empty>(
        'DeleteInnoConference',
        deleteInnoConference_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteInnoConferenceRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListInnoConferencesResponse> listInnoConferences_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListInnoConferencesRequest> request) async {
    return listInnoConferences(call, await request);
  }

  $async.Future<$1.InnoConference> getInnoConference_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetInnoConferenceRequest> request) async {
    return getInnoConference(call, await request);
  }

  $async.Future<$1.InnoConference> createInnoConference_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.CreateInnoConferenceRequest> request) async {
    return createInnoConference(call, await request);
  }

  $async.Future<$1.InnoConference> updateInnoConference_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.UpdateInnoConferenceRequest> request) async {
    return updateInnoConference(call, await request);
  }

  $async.Future<$2.Empty> deleteInnoConference_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteInnoConferenceRequest> request) async {
    return deleteInnoConference(call, await request);
  }

  $async.Future<$0.ListInnoConferencesResponse> listInnoConferences(
      $grpc.ServiceCall call, $0.ListInnoConferencesRequest request);
  $async.Future<$1.InnoConference> getInnoConference(
      $grpc.ServiceCall call, $0.GetInnoConferenceRequest request);
  $async.Future<$1.InnoConference> createInnoConference(
      $grpc.ServiceCall call, $0.CreateInnoConferenceRequest request);
  $async.Future<$1.InnoConference> updateInnoConference(
      $grpc.ServiceCall call, $0.UpdateInnoConferenceRequest request);
  $async.Future<$2.Empty> deleteInnoConference(
      $grpc.ServiceCall call, $0.DeleteInnoConferenceRequest request);
}
