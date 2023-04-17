///
//  Generated code. Do not modify.
//  source: inno/api/image/inno_image.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'inno_image.pb.dart' as $0;
import '../../model/inno_model.pb.dart' as $1;
import '../../../google/protobuf/empty.pb.dart' as $2;
export 'inno_image.pb.dart';

class InnoImageServiceClient extends $grpc.Client {
  static final _$listInnoImages =
      $grpc.ClientMethod<$0.ListInnoImagesRequest, $0.ListInnoImagesResponse>(
          '/inno.image.InnoImageService/ListInnoImages',
          ($0.ListInnoImagesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListInnoImagesResponse.fromBuffer(value));
  static final _$getInnoImage =
      $grpc.ClientMethod<$0.GetInnoImageRequest, $1.InnoImage>(
          '/inno.image.InnoImageService/GetInnoImage',
          ($0.GetInnoImageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoImage.fromBuffer(value));
  static final _$createInnoImage =
      $grpc.ClientMethod<$0.CreateInnoImageRequest, $1.InnoImage>(
          '/inno.image.InnoImageService/CreateInnoImage',
          ($0.CreateInnoImageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoImage.fromBuffer(value));
  static final _$updateInnoImage =
      $grpc.ClientMethod<$0.UpdateInnoImageRequest, $1.InnoImage>(
          '/inno.image.InnoImageService/UpdateInnoImage',
          ($0.UpdateInnoImageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoImage.fromBuffer(value));
  static final _$deleteInnoImage =
      $grpc.ClientMethod<$0.DeleteInnoImageRequest, $2.Empty>(
          '/inno.image.InnoImageService/DeleteInnoImage',
          ($0.DeleteInnoImageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  InnoImageServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ListInnoImagesResponse> listInnoImages(
      $0.ListInnoImagesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listInnoImages, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoImage> getInnoImage(
      $0.GetInnoImageRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInnoImage, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoImage> createInnoImage(
      $0.CreateInnoImageRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createInnoImage, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoImage> updateInnoImage(
      $0.UpdateInnoImageRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateInnoImage, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> deleteInnoImage(
      $0.DeleteInnoImageRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteInnoImage, request, options: options);
  }
}

abstract class InnoImageServiceBase extends $grpc.Service {
  $core.String get $name => 'inno.image.InnoImageService';

  InnoImageServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListInnoImagesRequest,
            $0.ListInnoImagesResponse>(
        'ListInnoImages',
        listInnoImages_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ListInnoImagesRequest.fromBuffer(value),
        ($0.ListInnoImagesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetInnoImageRequest, $1.InnoImage>(
        'GetInnoImage',
        getInnoImage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetInnoImageRequest.fromBuffer(value),
        ($1.InnoImage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateInnoImageRequest, $1.InnoImage>(
        'CreateInnoImage',
        createInnoImage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateInnoImageRequest.fromBuffer(value),
        ($1.InnoImage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateInnoImageRequest, $1.InnoImage>(
        'UpdateInnoImage',
        updateInnoImage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateInnoImageRequest.fromBuffer(value),
        ($1.InnoImage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteInnoImageRequest, $2.Empty>(
        'DeleteInnoImage',
        deleteInnoImage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteInnoImageRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListInnoImagesResponse> listInnoImages_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListInnoImagesRequest> request) async {
    return listInnoImages(call, await request);
  }

  $async.Future<$1.InnoImage> getInnoImage_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetInnoImageRequest> request) async {
    return getInnoImage(call, await request);
  }

  $async.Future<$1.InnoImage> createInnoImage_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateInnoImageRequest> request) async {
    return createInnoImage(call, await request);
  }

  $async.Future<$1.InnoImage> updateInnoImage_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateInnoImageRequest> request) async {
    return updateInnoImage(call, await request);
  }

  $async.Future<$2.Empty> deleteInnoImage_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteInnoImageRequest> request) async {
    return deleteInnoImage(call, await request);
  }

  $async.Future<$0.ListInnoImagesResponse> listInnoImages(
      $grpc.ServiceCall call, $0.ListInnoImagesRequest request);
  $async.Future<$1.InnoImage> getInnoImage(
      $grpc.ServiceCall call, $0.GetInnoImageRequest request);
  $async.Future<$1.InnoImage> createInnoImage(
      $grpc.ServiceCall call, $0.CreateInnoImageRequest request);
  $async.Future<$1.InnoImage> updateInnoImage(
      $grpc.ServiceCall call, $0.UpdateInnoImageRequest request);
  $async.Future<$2.Empty> deleteInnoImage(
      $grpc.ServiceCall call, $0.DeleteInnoImageRequest request);
}
