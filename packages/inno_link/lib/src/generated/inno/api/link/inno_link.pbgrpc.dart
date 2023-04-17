///
//  Generated code. Do not modify.
//  source: inno/api/link/inno_link.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'inno_link.pb.dart' as $0;
import '../../model/inno_model.pb.dart' as $1;
import '../../../google/protobuf/empty.pb.dart' as $2;
export 'inno_link.pb.dart';

class InnoLinkServiceClient extends $grpc.Client {
  static final _$listInnoLinks =
      $grpc.ClientMethod<$0.ListInnoLinksRequest, $0.ListInnoLinksResponse>(
          '/inno.link.InnoLinkService/ListInnoLinks',
          ($0.ListInnoLinksRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListInnoLinksResponse.fromBuffer(value));
  static final _$getInnoLink =
      $grpc.ClientMethod<$0.GetInnoLinkRequest, $1.InnoLink>(
          '/inno.link.InnoLinkService/GetInnoLink',
          ($0.GetInnoLinkRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoLink.fromBuffer(value));
  static final _$createInnoLink =
      $grpc.ClientMethod<$0.CreateInnoLinkRequest, $1.InnoLink>(
          '/inno.link.InnoLinkService/CreateInnoLink',
          ($0.CreateInnoLinkRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoLink.fromBuffer(value));
  static final _$updateInnoLink =
      $grpc.ClientMethod<$0.UpdateInnoLinkRequest, $1.InnoLink>(
          '/inno.link.InnoLinkService/UpdateInnoLink',
          ($0.UpdateInnoLinkRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.InnoLink.fromBuffer(value));
  static final _$deleteInnoLink =
      $grpc.ClientMethod<$0.DeleteInnoLinkRequest, $2.Empty>(
          '/inno.link.InnoLinkService/DeleteInnoLink',
          ($0.DeleteInnoLinkRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  InnoLinkServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ListInnoLinksResponse> listInnoLinks(
      $0.ListInnoLinksRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listInnoLinks, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoLink> getInnoLink($0.GetInnoLinkRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInnoLink, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoLink> createInnoLink(
      $0.CreateInnoLinkRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createInnoLink, request, options: options);
  }

  $grpc.ResponseFuture<$1.InnoLink> updateInnoLink(
      $0.UpdateInnoLinkRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateInnoLink, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> deleteInnoLink(
      $0.DeleteInnoLinkRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteInnoLink, request, options: options);
  }
}

abstract class InnoLinkServiceBase extends $grpc.Service {
  $core.String get $name => 'inno.link.InnoLinkService';

  InnoLinkServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.ListInnoLinksRequest, $0.ListInnoLinksResponse>(
            'ListInnoLinks',
            listInnoLinks_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ListInnoLinksRequest.fromBuffer(value),
            ($0.ListInnoLinksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetInnoLinkRequest, $1.InnoLink>(
        'GetInnoLink',
        getInnoLink_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetInnoLinkRequest.fromBuffer(value),
        ($1.InnoLink value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateInnoLinkRequest, $1.InnoLink>(
        'CreateInnoLink',
        createInnoLink_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateInnoLinkRequest.fromBuffer(value),
        ($1.InnoLink value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateInnoLinkRequest, $1.InnoLink>(
        'UpdateInnoLink',
        updateInnoLink_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateInnoLinkRequest.fromBuffer(value),
        ($1.InnoLink value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteInnoLinkRequest, $2.Empty>(
        'DeleteInnoLink',
        deleteInnoLink_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteInnoLinkRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListInnoLinksResponse> listInnoLinks_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListInnoLinksRequest> request) async {
    return listInnoLinks(call, await request);
  }

  $async.Future<$1.InnoLink> getInnoLink_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetInnoLinkRequest> request) async {
    return getInnoLink(call, await request);
  }

  $async.Future<$1.InnoLink> createInnoLink_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateInnoLinkRequest> request) async {
    return createInnoLink(call, await request);
  }

  $async.Future<$1.InnoLink> updateInnoLink_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateInnoLinkRequest> request) async {
    return updateInnoLink(call, await request);
  }

  $async.Future<$2.Empty> deleteInnoLink_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteInnoLinkRequest> request) async {
    return deleteInnoLink(call, await request);
  }

  $async.Future<$0.ListInnoLinksResponse> listInnoLinks(
      $grpc.ServiceCall call, $0.ListInnoLinksRequest request);
  $async.Future<$1.InnoLink> getInnoLink(
      $grpc.ServiceCall call, $0.GetInnoLinkRequest request);
  $async.Future<$1.InnoLink> createInnoLink(
      $grpc.ServiceCall call, $0.CreateInnoLinkRequest request);
  $async.Future<$1.InnoLink> updateInnoLink(
      $grpc.ServiceCall call, $0.UpdateInnoLinkRequest request);
  $async.Future<$2.Empty> deleteInnoLink(
      $grpc.ServiceCall call, $0.DeleteInnoLinkRequest request);
}
