///
//  Generated code. Do not modify.
//  source: inno/api/event/inno_event.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'inno_event.pb.dart' as $0;
import '../../model/inno_model.pb.dart' as $1;
import '../../../google/protobuf/empty.pb.dart' as $2;
export 'inno_event.pb.dart';

class InnoEventServiceClient extends $grpc.Client {
  static final _$listInnoEvents =
      $grpc.ClientMethod<$0.ListInnoEventsRequest, $0.ListInnoEventsResponse>(
          '/inno.event.InnoEventService/ListInnoEvents',
          ($0.ListInnoEventsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListInnoEventsResponse.fromBuffer(value));
  static final _$getInnoEvent =
      $grpc.ClientMethod<$0.GetInnoEventRequest, $1.InnoEvent>(
          '/inno.event.InnoEventService/GetInnoEvent',
          ($0.GetInnoEventRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoEvent.fromBuffer(value));
  static final _$createInnoEvent =
      $grpc.ClientMethod<$0.CreateInnoEventRequest, $1.InnoEvent>(
          '/inno.event.InnoEventService/CreateInnoEvent',
          ($0.CreateInnoEventRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoEvent.fromBuffer(value));
  static final _$updateInnoEvent =
      $grpc.ClientMethod<$0.UpdateInnoEventRequest, $1.InnoEvent>(
          '/inno.event.InnoEventService/UpdateInnoEvent',
          ($0.UpdateInnoEventRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoEvent.fromBuffer(value));
  static final _$deleteInnoEvent =
      $grpc.ClientMethod<$0.DeleteInnoEventRequest, $2.Empty>(
          '/inno.event.InnoEventService/DeleteInnoEvent',
          ($0.DeleteInnoEventRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  InnoEventServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ListInnoEventsResponse> listInnoEvents(
      $0.ListInnoEventsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listInnoEvents, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoEvent> getInnoEvent(
      $0.GetInnoEventRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInnoEvent, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoEvent> createInnoEvent(
      $0.CreateInnoEventRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createInnoEvent, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoEvent> updateInnoEvent(
      $0.UpdateInnoEventRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateInnoEvent, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> deleteInnoEvent(
      $0.DeleteInnoEventRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteInnoEvent, request, options: options);
  }
}

abstract class InnoEventServiceBase extends $grpc.Service {
  $core.String get $name => 'inno.event.InnoEventService';

  InnoEventServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListInnoEventsRequest,
            $0.ListInnoEventsResponse>(
        'ListInnoEvents',
        listInnoEvents_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ListInnoEventsRequest.fromBuffer(value),
        ($0.ListInnoEventsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetInnoEventRequest, $1.InnoEvent>(
        'GetInnoEvent',
        getInnoEvent_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetInnoEventRequest.fromBuffer(value),
        ($1.InnoEvent value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateInnoEventRequest, $1.InnoEvent>(
        'CreateInnoEvent',
        createInnoEvent_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateInnoEventRequest.fromBuffer(value),
        ($1.InnoEvent value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateInnoEventRequest, $1.InnoEvent>(
        'UpdateInnoEvent',
        updateInnoEvent_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateInnoEventRequest.fromBuffer(value),
        ($1.InnoEvent value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteInnoEventRequest, $2.Empty>(
        'DeleteInnoEvent',
        deleteInnoEvent_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteInnoEventRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListInnoEventsResponse> listInnoEvents_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListInnoEventsRequest> request) async {
    return listInnoEvents(call, await request);
  }

  $async.Future<$1.InnoEvent> getInnoEvent_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetInnoEventRequest> request) async {
    return getInnoEvent(call, await request);
  }

  $async.Future<$1.InnoEvent> createInnoEvent_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateInnoEventRequest> request) async {
    return createInnoEvent(call, await request);
  }

  $async.Future<$1.InnoEvent> updateInnoEvent_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateInnoEventRequest> request) async {
    return updateInnoEvent(call, await request);
  }

  $async.Future<$2.Empty> deleteInnoEvent_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteInnoEventRequest> request) async {
    return deleteInnoEvent(call, await request);
  }

  $async.Future<$0.ListInnoEventsResponse> listInnoEvents(
      $grpc.ServiceCall call, $0.ListInnoEventsRequest request);
  $async.Future<$1.InnoEvent> getInnoEvent(
      $grpc.ServiceCall call, $0.GetInnoEventRequest request);
  $async.Future<$1.InnoEvent> createInnoEvent(
      $grpc.ServiceCall call, $0.CreateInnoEventRequest request);
  $async.Future<$1.InnoEvent> updateInnoEvent(
      $grpc.ServiceCall call, $0.UpdateInnoEventRequest request);
  $async.Future<$2.Empty> deleteInnoEvent(
      $grpc.ServiceCall call, $0.DeleteInnoEventRequest request);
}
