///
//  Generated code. Do not modify.
//  source: inno/api/user/inno_user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'inno_user.pb.dart' as $0;
import '../../model/inno_model.pb.dart' as $1;
import '../../../google/protobuf/empty.pb.dart' as $2;
export 'inno_user.pb.dart';

class InnoUserServiceClient extends $grpc.Client {
  static final _$listInnoUsers =
      $grpc.ClientMethod<$0.ListInnoUsersRequest, $0.ListInnoUsersResponse>(
          '/inno.user.InnoUserService/ListInnoUsers',
          ($0.ListInnoUsersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListInnoUsersResponse.fromBuffer(value));
  static final _$getInnoUser =
      $grpc.ClientMethod<$0.GetInnoUserRequest, $1.InnoUser>(
          '/inno.user.InnoUserService/GetInnoUser',
          ($0.GetInnoUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoUser.fromBuffer(value));
  static final _$createInnoUser =
      $grpc.ClientMethod<$0.CreateInnoUserRequest, $1.InnoUser>(
          '/inno.user.InnoUserService/CreateInnoUser',
          ($0.CreateInnoUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoUser.fromBuffer(value));
  static final _$updateInnoUser =
      $grpc.ClientMethod<$0.UpdateInnoUserRequest, $1.InnoUser>(
          '/inno.user.InnoUserService/UpdateInnoUser',
          ($0.UpdateInnoUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoUser.fromBuffer(value));
  static final _$deleteInnoUser =
      $grpc.ClientMethod<$0.DeleteInnoUserRequest, $2.Empty>(
          '/inno.user.InnoUserService/DeleteInnoUser',
          ($0.DeleteInnoUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  InnoUserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ListInnoUsersResponse> listInnoUsers(
      $0.ListInnoUsersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listInnoUsers, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoUser> getInnoUser($0.GetInnoUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInnoUser, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoUser> createInnoUser(
      $0.CreateInnoUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createInnoUser, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoUser> updateInnoUser(
      $0.UpdateInnoUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateInnoUser, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> deleteInnoUser(
      $0.DeleteInnoUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteInnoUser, request, options: options);
  }
}

abstract class InnoUserServiceBase extends $grpc.Service {
  $core.String get $name => 'inno.user.InnoUserService';

  InnoUserServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.ListInnoUsersRequest, $0.ListInnoUsersResponse>(
            'ListInnoUsers',
            listInnoUsers_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ListInnoUsersRequest.fromBuffer(value),
            ($0.ListInnoUsersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetInnoUserRequest, $1.InnoUser>(
        'GetInnoUser',
        getInnoUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetInnoUserRequest.fromBuffer(value),
        ($1.InnoUser value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateInnoUserRequest, $1.InnoUser>(
        'CreateInnoUser',
        createInnoUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateInnoUserRequest.fromBuffer(value),
        ($1.InnoUser value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateInnoUserRequest, $1.InnoUser>(
        'UpdateInnoUser',
        updateInnoUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateInnoUserRequest.fromBuffer(value),
        ($1.InnoUser value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteInnoUserRequest, $2.Empty>(
        'DeleteInnoUser',
        deleteInnoUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteInnoUserRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListInnoUsersResponse> listInnoUsers_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListInnoUsersRequest> request) async {
    return listInnoUsers(call, await request);
  }

  $async.Future<$1.InnoUser> getInnoUser_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetInnoUserRequest> request) async {
    return getInnoUser(call, await request);
  }

  $async.Future<$1.InnoUser> createInnoUser_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateInnoUserRequest> request) async {
    return createInnoUser(call, await request);
  }

  $async.Future<$1.InnoUser> updateInnoUser_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateInnoUserRequest> request) async {
    return updateInnoUser(call, await request);
  }

  $async.Future<$2.Empty> deleteInnoUser_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteInnoUserRequest> request) async {
    return deleteInnoUser(call, await request);
  }

  $async.Future<$0.ListInnoUsersResponse> listInnoUsers(
      $grpc.ServiceCall call, $0.ListInnoUsersRequest request);
  $async.Future<$1.InnoUser> getInnoUser(
      $grpc.ServiceCall call, $0.GetInnoUserRequest request);
  $async.Future<$1.InnoUser> createInnoUser(
      $grpc.ServiceCall call, $0.CreateInnoUserRequest request);
  $async.Future<$1.InnoUser> updateInnoUser(
      $grpc.ServiceCall call, $0.UpdateInnoUserRequest request);
  $async.Future<$2.Empty> deleteInnoUser(
      $grpc.ServiceCall call, $0.DeleteInnoUserRequest request);
}
