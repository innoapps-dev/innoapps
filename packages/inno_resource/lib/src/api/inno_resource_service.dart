import 'package:grpc/grpc.dart';
import 'package:inno_database/inno_database.dart';
import 'package:inno_resource/src/generated/google/protobuf/empty.pb.dart';
import 'package:inno_resource/src/generated/inno/api/resource/inno_resource.pbgrpc.dart';
import 'package:inno_resource/src/generated/inno/model/inno_model.pb.dart'
    as grpc;
import 'package:uuid/uuid.dart';

class InnoResourceService extends InnoResourceServiceBase {
  final InnoConnectionPool connectionPool;
  final InnoResourceDao innoResourceDao;

  InnoResourceService({required this.connectionPool})
      : innoResourceDao = InnoResourceDao(connectionPool: connectionPool);

  @override
  Future<ListInnoResourcesResponse> listInnoResources(
      ServiceCall call, ListInnoResourcesRequest request) async {
    // TODO: implement listInnoResources
    throw UnimplementedError();
  }

  @override
  Future<grpc.InnoResource> getInnoResource(
      ServiceCall call, GetInnoResourceRequest request) async {
    final innoResource = await innoResourceDao.select(id: request.id);

    return innoResource.toGrpc();
  }

  @override
  Future<grpc.InnoResource> createInnoResource(
      ServiceCall call, CreateInnoResourceRequest request) async {
    final values = {
      InnoResourceDao.columnId: Uuid().v1(),
      InnoResourceDao.columnServiceId: request.serviceId,
    };

    InnoResource innoResource = await innoResourceDao.insert(values: values);

    return innoResource.toGrpc();
  }

  @override
  Future<grpc.InnoResource> updateInnoResource(
      ServiceCall call, UpdateInnoResourceRequest request) async {
    //inputs
    var columns = request.updateMask.paths;
    var innoResource = request.innoResource;

    //outputs
    var values = <String, dynamic>{};

    for (var column in columns) {
      if (column == InnoResourceDao.columnTag) {
        values[InnoResourceDao.columnTag] = innoResource.tag;
      }
    }

    InnoResource updatedInnoResource = await innoResourceDao.update(
        values: values, id: request.innoResource.id);

    return updatedInnoResource.toGrpc();
  }

  @override
  Future<Empty> deleteInnoResource(
      ServiceCall call, DeleteInnoResourceRequest request) async {
    await innoResourceDao.delete(id: request.id);

    return Empty();
  }
}

extension AsGrpcInnoResource on InnoResource {
  grpc.InnoResource toGrpc() {
    return grpc.InnoResource(
      id: id,
      serviceId: serviceId,
      tag: tag,
    );
  }
}
