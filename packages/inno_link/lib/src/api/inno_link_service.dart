import 'package:grpc/grpc.dart';
import 'package:inno_database/inno_database.dart';
import 'package:inno_link/src/generated/google/protobuf/empty.pb.dart';
import 'package:inno_link/src/generated/inno/api/link/inno_link.pbgrpc.dart';
import 'package:inno_link/src/generated/inno/model/inno_model.pb.dart' as grpc;
import 'package:uuid/uuid.dart';

class InnoLinkService extends InnoLinkServiceBase {
  final InnoConnectionPool connectionPool;
  final InnoLinkDao innoLinkDao;

  InnoLinkService({required this.connectionPool})
      : innoLinkDao = InnoLinkDao(connectionPool: connectionPool);

  @override
  Future<ListInnoLinksResponse> listInnoLinks(
      ServiceCall call, ListInnoLinksRequest request) async {
    // TODO: implement listInnoLinks
    throw UnimplementedError();
  }

  @override
  Future<grpc.InnoLink> getInnoLink(
      ServiceCall call, GetInnoLinkRequest request) async {
    final innoLink = await innoLinkDao.select(id: request.id);

    return innoLink.toGrpc();
  }

  @override
  Future<grpc.InnoLink> createInnoLink(
      ServiceCall call, CreateInnoLinkRequest request) async {
    final values = {
      InnoLinkDao.columnId: Uuid().v1(),
      InnoLinkDao.columnTitle: request.title,
      InnoLinkDao.columnUrl: request.url,
    };

    InnoLink innoLink = await innoLinkDao.insert(values: values);

    return innoLink.toGrpc();
  }

  @override
  Future<grpc.InnoLink> updateInnoLink(
      ServiceCall call, UpdateInnoLinkRequest request) async {
    //inputs
    var columns = request.updateMask.paths;
    var innoLink = request.innoLink;

    //outputs
    var values = <String, dynamic>{};

    for (var column in columns) {
      if (column == InnoLinkDao.columnTitle) {
        values[InnoLinkDao.columnTitle] = innoLink.title;
      }
      if (column == InnoLinkDao.columnUrl) {
        values[InnoLinkDao.columnUrl] = innoLink.url;
      }
    }

    InnoLink updatedInnoLink =
        await innoLinkDao.update(values: values, id: request.innoLink.id);

    return updatedInnoLink.toGrpc();
  }

  @override
  Future<Empty> deleteInnoLink(
      ServiceCall call, DeleteInnoLinkRequest request) async {
    await innoLinkDao.delete(id: request.id);

    return Empty();
  }
}

extension AsGrpcInnoLink on InnoLink {
  grpc.InnoLink toGrpc() {
    return grpc.InnoLink(
      id: id,
      title: title,
      url: url,
    );
  }
}
