///
//  Generated code. Do not modify.
//  source: inno/api/conference/inno_conference_field.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'inno_conference_field.pb.dart' as $0;
import '../../model/inno_model.pb.dart' as $1;
import '../../../google/protobuf/empty.pb.dart' as $2;
export 'inno_conference_field.pb.dart';

class InnoConferenceFieldServiceClient extends $grpc.Client {
  static final _$listInnoConferenceFields = $grpc.ClientMethod<
          $0.ListInnoConferenceFieldsRequest,
          $0.ListInnoConferenceFieldsResponse>(
      '/inno.conference.InnoConferenceFieldService/ListInnoConferenceFields',
      ($0.ListInnoConferenceFieldsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ListInnoConferenceFieldsResponse.fromBuffer(value));
  static final _$getInnoConferenceField = $grpc.ClientMethod<
          $0.GetInnoConferenceFieldRequest, $1.InnoConferenceField>(
      '/inno.conference.InnoConferenceFieldService/GetInnoConferenceField',
      ($0.GetInnoConferenceFieldRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.InnoConferenceField.fromBuffer(value));
  static final _$createInnoConferenceField = $grpc.ClientMethod<
          $0.CreateInnoConferenceFieldRequest, $1.InnoConferenceField>(
      '/inno.conference.InnoConferenceFieldService/CreateInnoConferenceField',
      ($0.CreateInnoConferenceFieldRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.InnoConferenceField.fromBuffer(value));
  static final _$updateInnoConferenceField = $grpc.ClientMethod<
          $0.UpdateInnoConferenceFieldRequest, $1.InnoConferenceField>(
      '/inno.conference.InnoConferenceFieldService/UpdateInnoConferenceField',
      ($0.UpdateInnoConferenceFieldRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.InnoConferenceField.fromBuffer(value));
  static final _$deleteInnoConferenceField = $grpc.ClientMethod<
          $0.DeleteInnoConferenceFieldRequest, $2.Empty>(
      '/inno.conference.InnoConferenceFieldService/DeleteInnoConferenceField',
      ($0.DeleteInnoConferenceFieldRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  InnoConferenceFieldServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ListInnoConferenceFieldsResponse>
      listInnoConferenceFields($0.ListInnoConferenceFieldsRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listInnoConferenceFields, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.InnoConferenceField> getInnoConferenceField(
      $0.GetInnoConferenceFieldRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInnoConferenceField, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.InnoConferenceField> createInnoConferenceField(
      $0.CreateInnoConferenceFieldRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createInnoConferenceField, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.InnoConferenceField> updateInnoConferenceField(
      $0.UpdateInnoConferenceFieldRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateInnoConferenceField, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.Empty> deleteInnoConferenceField(
      $0.DeleteInnoConferenceFieldRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteInnoConferenceField, request,
        options: options);
  }
}

abstract class InnoConferenceFieldServiceBase extends $grpc.Service {
  $core.String get $name => 'inno.conference.InnoConferenceFieldService';

  InnoConferenceFieldServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListInnoConferenceFieldsRequest,
            $0.ListInnoConferenceFieldsResponse>(
        'ListInnoConferenceFields',
        listInnoConferenceFields_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ListInnoConferenceFieldsRequest.fromBuffer(value),
        ($0.ListInnoConferenceFieldsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetInnoConferenceFieldRequest,
            $1.InnoConferenceField>(
        'GetInnoConferenceField',
        getInnoConferenceField_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetInnoConferenceFieldRequest.fromBuffer(value),
        ($1.InnoConferenceField value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateInnoConferenceFieldRequest,
            $1.InnoConferenceField>(
        'CreateInnoConferenceField',
        createInnoConferenceField_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateInnoConferenceFieldRequest.fromBuffer(value),
        ($1.InnoConferenceField value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateInnoConferenceFieldRequest,
            $1.InnoConferenceField>(
        'UpdateInnoConferenceField',
        updateInnoConferenceField_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateInnoConferenceFieldRequest.fromBuffer(value),
        ($1.InnoConferenceField value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.DeleteInnoConferenceFieldRequest, $2.Empty>(
            'DeleteInnoConferenceField',
            deleteInnoConferenceField_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.DeleteInnoConferenceFieldRequest.fromBuffer(value),
            ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListInnoConferenceFieldsResponse>
      listInnoConferenceFields_Pre($grpc.ServiceCall call,
          $async.Future<$0.ListInnoConferenceFieldsRequest> request) async {
    return listInnoConferenceFields(call, await request);
  }

  $async.Future<$1.InnoConferenceField> getInnoConferenceField_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetInnoConferenceFieldRequest> request) async {
    return getInnoConferenceField(call, await request);
  }

  $async.Future<$1.InnoConferenceField> createInnoConferenceField_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.CreateInnoConferenceFieldRequest> request) async {
    return createInnoConferenceField(call, await request);
  }

  $async.Future<$1.InnoConferenceField> updateInnoConferenceField_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.UpdateInnoConferenceFieldRequest> request) async {
    return updateInnoConferenceField(call, await request);
  }

  $async.Future<$2.Empty> deleteInnoConferenceField_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteInnoConferenceFieldRequest> request) async {
    return deleteInnoConferenceField(call, await request);
  }

  $async.Future<$0.ListInnoConferenceFieldsResponse> listInnoConferenceFields(
      $grpc.ServiceCall call, $0.ListInnoConferenceFieldsRequest request);
  $async.Future<$1.InnoConferenceField> getInnoConferenceField(
      $grpc.ServiceCall call, $0.GetInnoConferenceFieldRequest request);
  $async.Future<$1.InnoConferenceField> createInnoConferenceField(
      $grpc.ServiceCall call, $0.CreateInnoConferenceFieldRequest request);
  $async.Future<$1.InnoConferenceField> updateInnoConferenceField(
      $grpc.ServiceCall call, $0.UpdateInnoConferenceFieldRequest request);
  $async.Future<$2.Empty> deleteInnoConferenceField(
      $grpc.ServiceCall call, $0.DeleteInnoConferenceFieldRequest request);
}
