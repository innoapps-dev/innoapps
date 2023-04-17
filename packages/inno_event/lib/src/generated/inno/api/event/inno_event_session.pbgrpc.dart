///
//  Generated code. Do not modify.
//  source: inno/api/event/inno_event_session.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'inno_event_session.pb.dart' as $0;
import '../../model/inno_model.pb.dart' as $1;
import '../../../google/protobuf/empty.pb.dart' as $2;
export 'inno_event_session.pb.dart';

class InnoEventSessionServiceClient extends $grpc.Client {
  static final _$listInnoEventSessions = $grpc.ClientMethod<
          $0.ListInnoEventSessionsRequest, $0.ListInnoEventSessionsResponse>(
      '/inno.event.InnoEventSessionService/ListInnoEventSessions',
      ($0.ListInnoEventSessionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ListInnoEventSessionsResponse.fromBuffer(value));
  static final _$getInnoEventSession =
      $grpc.ClientMethod<$0.GetInnoEventSessionRequest, $1.InnoEventSession>(
          '/inno.event.InnoEventSessionService/GetInnoEventSession',
          ($0.GetInnoEventSessionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.InnoEventSession.fromBuffer(value));
  static final _$createInnoEventSession =
      $grpc.ClientMethod<$0.CreateInnoEventSessionRequest, $1.InnoEventSession>(
          '/inno.event.InnoEventSessionService/CreateInnoEventSession',
          ($0.CreateInnoEventSessionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.InnoEventSession.fromBuffer(value));
  static final _$updateInnoEventSession =
      $grpc.ClientMethod<$0.UpdateInnoEventSessionRequest, $1.InnoEventSession>(
          '/inno.event.InnoEventSessionService/UpdateInnoEventSession',
          ($0.UpdateInnoEventSessionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.InnoEventSession.fromBuffer(value));
  static final _$deleteInnoEventSession =
      $grpc.ClientMethod<$0.DeleteInnoEventSessionRequest, $2.Empty>(
          '/inno.event.InnoEventSessionService/DeleteInnoEventSession',
          ($0.DeleteInnoEventSessionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  InnoEventSessionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ListInnoEventSessionsResponse> listInnoEventSessions(
      $0.ListInnoEventSessionsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listInnoEventSessions, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoEventSession> getInnoEventSession(
      $0.GetInnoEventSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInnoEventSession, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoEventSession> createInnoEventSession(
      $0.CreateInnoEventSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createInnoEventSession, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.InnoEventSession> updateInnoEventSession(
      $0.UpdateInnoEventSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateInnoEventSession, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.Empty> deleteInnoEventSession(
      $0.DeleteInnoEventSessionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteInnoEventSession, request,
        options: options);
  }
}

abstract class InnoEventSessionServiceBase extends $grpc.Service {
  $core.String get $name => 'inno.event.InnoEventSessionService';

  InnoEventSessionServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListInnoEventSessionsRequest,
            $0.ListInnoEventSessionsResponse>(
        'ListInnoEventSessions',
        listInnoEventSessions_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ListInnoEventSessionsRequest.fromBuffer(value),
        ($0.ListInnoEventSessionsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetInnoEventSessionRequest, $1.InnoEventSession>(
            'GetInnoEventSession',
            getInnoEventSession_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetInnoEventSessionRequest.fromBuffer(value),
            ($1.InnoEventSession value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateInnoEventSessionRequest,
            $1.InnoEventSession>(
        'CreateInnoEventSession',
        createInnoEventSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateInnoEventSessionRequest.fromBuffer(value),
        ($1.InnoEventSession value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateInnoEventSessionRequest,
            $1.InnoEventSession>(
        'UpdateInnoEventSession',
        updateInnoEventSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateInnoEventSessionRequest.fromBuffer(value),
        ($1.InnoEventSession value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteInnoEventSessionRequest, $2.Empty>(
        'DeleteInnoEventSession',
        deleteInnoEventSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteInnoEventSessionRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListInnoEventSessionsResponse> listInnoEventSessions_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListInnoEventSessionsRequest> request) async {
    return listInnoEventSessions(call, await request);
  }

  $async.Future<$1.InnoEventSession> getInnoEventSession_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetInnoEventSessionRequest> request) async {
    return getInnoEventSession(call, await request);
  }

  $async.Future<$1.InnoEventSession> createInnoEventSession_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.CreateInnoEventSessionRequest> request) async {
    return createInnoEventSession(call, await request);
  }

  $async.Future<$1.InnoEventSession> updateInnoEventSession_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.UpdateInnoEventSessionRequest> request) async {
    return updateInnoEventSession(call, await request);
  }

  $async.Future<$2.Empty> deleteInnoEventSession_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteInnoEventSessionRequest> request) async {
    return deleteInnoEventSession(call, await request);
  }

  $async.Future<$0.ListInnoEventSessionsResponse> listInnoEventSessions(
      $grpc.ServiceCall call, $0.ListInnoEventSessionsRequest request);
  $async.Future<$1.InnoEventSession> getInnoEventSession(
      $grpc.ServiceCall call, $0.GetInnoEventSessionRequest request);
  $async.Future<$1.InnoEventSession> createInnoEventSession(
      $grpc.ServiceCall call, $0.CreateInnoEventSessionRequest request);
  $async.Future<$1.InnoEventSession> updateInnoEventSession(
      $grpc.ServiceCall call, $0.UpdateInnoEventSessionRequest request);
  $async.Future<$2.Empty> deleteInnoEventSession(
      $grpc.ServiceCall call, $0.DeleteInnoEventSessionRequest request);
}
