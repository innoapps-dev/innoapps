///
//  Generated code. Do not modify.
//  source: inno/api/file/inno_file.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'inno_file.pb.dart' as $0;
import '../../model/inno_model.pb.dart' as $1;
import '../../../google/protobuf/empty.pb.dart' as $2;
export 'inno_file.pb.dart';

class InnoFileServiceClient extends $grpc.Client {
  static final _$listInnoFiles =
      $grpc.ClientMethod<$0.ListInnoFilesRequest, $0.ListInnoFilesResponse>(
          '/inno.file.InnoFileService/ListInnoFiles',
          ($0.ListInnoFilesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListInnoFilesResponse.fromBuffer(value));
  static final _$getInnoFile =
      $grpc.ClientMethod<$0.GetInnoFileRequest, $1.InnoFile>(
          '/inno.file.InnoFileService/GetInnoFile',
          ($0.GetInnoFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoFile.fromBuffer(value));
  static final _$createInnoFile =
      $grpc.ClientMethod<$0.CreateInnoFileRequest, $1.InnoFile>(
          '/inno.file.InnoFileService/CreateInnoFile',
          ($0.CreateInnoFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoFile.fromBuffer(value));
  static final _$updateInnoFile =
      $grpc.ClientMethod<$0.UpdateInnoFileRequest, $1.InnoFile>(
          '/inno.file.InnoFileService/UpdateInnoFile',
          ($0.UpdateInnoFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoFile.fromBuffer(value));
  static final _$deleteInnoFile =
      $grpc.ClientMethod<$0.DeleteInnoFileRequest, $2.Empty>(
          '/inno.file.InnoFileService/DeleteInnoFile',
          ($0.DeleteInnoFileRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  InnoFileServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ListInnoFilesResponse> listInnoFiles(
      $0.ListInnoFilesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listInnoFiles, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoFile> getInnoFile($0.GetInnoFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInnoFile, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoFile> createInnoFile(
      $0.CreateInnoFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createInnoFile, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoFile> updateInnoFile(
      $0.UpdateInnoFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateInnoFile, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> deleteInnoFile(
      $0.DeleteInnoFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteInnoFile, request, options: options);
  }
}

abstract class InnoFileServiceBase extends $grpc.Service {
  $core.String get $name => 'inno.file.InnoFileService';

  InnoFileServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.ListInnoFilesRequest, $0.ListInnoFilesResponse>(
            'ListInnoFiles',
            listInnoFiles_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ListInnoFilesRequest.fromBuffer(value),
            ($0.ListInnoFilesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetInnoFileRequest, $1.InnoFile>(
        'GetInnoFile',
        getInnoFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetInnoFileRequest.fromBuffer(value),
        ($1.InnoFile value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateInnoFileRequest, $1.InnoFile>(
        'CreateInnoFile',
        createInnoFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateInnoFileRequest.fromBuffer(value),
        ($1.InnoFile value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateInnoFileRequest, $1.InnoFile>(
        'UpdateInnoFile',
        updateInnoFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateInnoFileRequest.fromBuffer(value),
        ($1.InnoFile value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteInnoFileRequest, $2.Empty>(
        'DeleteInnoFile',
        deleteInnoFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteInnoFileRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListInnoFilesResponse> listInnoFiles_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListInnoFilesRequest> request) async {
    return listInnoFiles(call, await request);
  }

  $async.Future<$1.InnoFile> getInnoFile_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetInnoFileRequest> request) async {
    return getInnoFile(call, await request);
  }

  $async.Future<$1.InnoFile> createInnoFile_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateInnoFileRequest> request) async {
    return createInnoFile(call, await request);
  }

  $async.Future<$1.InnoFile> updateInnoFile_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateInnoFileRequest> request) async {
    return updateInnoFile(call, await request);
  }

  $async.Future<$2.Empty> deleteInnoFile_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteInnoFileRequest> request) async {
    return deleteInnoFile(call, await request);
  }

  $async.Future<$0.ListInnoFilesResponse> listInnoFiles(
      $grpc.ServiceCall call, $0.ListInnoFilesRequest request);
  $async.Future<$1.InnoFile> getInnoFile(
      $grpc.ServiceCall call, $0.GetInnoFileRequest request);
  $async.Future<$1.InnoFile> createInnoFile(
      $grpc.ServiceCall call, $0.CreateInnoFileRequest request);
  $async.Future<$1.InnoFile> updateInnoFile(
      $grpc.ServiceCall call, $0.UpdateInnoFileRequest request);
  $async.Future<$2.Empty> deleteInnoFile(
      $grpc.ServiceCall call, $0.DeleteInnoFileRequest request);
}
