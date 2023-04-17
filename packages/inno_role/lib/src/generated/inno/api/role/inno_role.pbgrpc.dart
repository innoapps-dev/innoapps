///
//  Generated code. Do not modify.
//  source: inno/api/role/inno_role.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'inno_role.pb.dart' as $0;
import '../../model/inno_model.pb.dart' as $1;
import '../../../google/protobuf/empty.pb.dart' as $2;
export 'inno_role.pb.dart';

class InnoRoleServiceClient extends $grpc.Client {
  static final _$listInnoRoles =
      $grpc.ClientMethod<$0.ListInnoRolesRequest, $0.ListInnoRolesResponse>(
          '/inno.role.InnoRoleService/ListInnoRoles',
          ($0.ListInnoRolesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListInnoRolesResponse.fromBuffer(value));
  static final _$getInnoRole =
      $grpc.ClientMethod<$0.GetInnoRoleRequest, $1.InnoRole>(
          '/inno.role.InnoRoleService/GetInnoRole',
          ($0.GetInnoRoleRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoRole.fromBuffer(value));
  static final _$createInnoRole =
      $grpc.ClientMethod<$0.CreateInnoRoleRequest, $1.InnoRole>(
          '/inno.role.InnoRoleService/CreateInnoRole',
          ($0.CreateInnoRoleRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoRole.fromBuffer(value));
  static final _$updateInnoRole =
      $grpc.ClientMethod<$0.UpdateInnoRoleRequest, $1.InnoRole>(
          '/inno.role.InnoRoleService/UpdateInnoRole',
          ($0.UpdateInnoRoleRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoRole.fromBuffer(value));
  static final _$deleteInnoRole =
      $grpc.ClientMethod<$0.DeleteInnoRoleRequest, $2.Empty>(
          '/inno.role.InnoRoleService/DeleteInnoRole',
          ($0.DeleteInnoRoleRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  InnoRoleServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ListInnoRolesResponse> listInnoRoles(
      $0.ListInnoRolesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listInnoRoles, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoRole> getInnoRole($0.GetInnoRoleRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInnoRole, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoRole> createInnoRole(
      $0.CreateInnoRoleRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createInnoRole, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoRole> updateInnoRole(
      $0.UpdateInnoRoleRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateInnoRole, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> deleteInnoRole(
      $0.DeleteInnoRoleRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteInnoRole, request, options: options);
  }
}

abstract class InnoRoleServiceBase extends $grpc.Service {
  $core.String get $name => 'inno.role.InnoRoleService';

  InnoRoleServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.ListInnoRolesRequest, $0.ListInnoRolesResponse>(
            'ListInnoRoles',
            listInnoRoles_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ListInnoRolesRequest.fromBuffer(value),
            ($0.ListInnoRolesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetInnoRoleRequest, $1.InnoRole>(
        'GetInnoRole',
        getInnoRole_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetInnoRoleRequest.fromBuffer(value),
        ($1.InnoRole value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateInnoRoleRequest, $1.InnoRole>(
        'CreateInnoRole',
        createInnoRole_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateInnoRoleRequest.fromBuffer(value),
        ($1.InnoRole value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateInnoRoleRequest, $1.InnoRole>(
        'UpdateInnoRole',
        updateInnoRole_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateInnoRoleRequest.fromBuffer(value),
        ($1.InnoRole value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteInnoRoleRequest, $2.Empty>(
        'DeleteInnoRole',
        deleteInnoRole_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteInnoRoleRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListInnoRolesResponse> listInnoRoles_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListInnoRolesRequest> request) async {
    return listInnoRoles(call, await request);
  }

  $async.Future<$1.InnoRole> getInnoRole_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetInnoRoleRequest> request) async {
    return getInnoRole(call, await request);
  }

  $async.Future<$1.InnoRole> createInnoRole_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateInnoRoleRequest> request) async {
    return createInnoRole(call, await request);
  }

  $async.Future<$1.InnoRole> updateInnoRole_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateInnoRoleRequest> request) async {
    return updateInnoRole(call, await request);
  }

  $async.Future<$2.Empty> deleteInnoRole_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteInnoRoleRequest> request) async {
    return deleteInnoRole(call, await request);
  }

  $async.Future<$0.ListInnoRolesResponse> listInnoRoles(
      $grpc.ServiceCall call, $0.ListInnoRolesRequest request);
  $async.Future<$1.InnoRole> getInnoRole(
      $grpc.ServiceCall call, $0.GetInnoRoleRequest request);
  $async.Future<$1.InnoRole> createInnoRole(
      $grpc.ServiceCall call, $0.CreateInnoRoleRequest request);
  $async.Future<$1.InnoRole> updateInnoRole(
      $grpc.ServiceCall call, $0.UpdateInnoRoleRequest request);
  $async.Future<$2.Empty> deleteInnoRole(
      $grpc.ServiceCall call, $0.DeleteInnoRoleRequest request);
}
