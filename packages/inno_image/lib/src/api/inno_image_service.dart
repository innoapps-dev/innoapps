import 'package:grpc/grpc.dart';
import 'package:inno_database/inno_database.dart';
import 'package:inno_image/src/generated/google/protobuf/empty.pb.dart';
import 'package:inno_image/src/generated/inno/api/image/inno_image.pbgrpc.dart';
import 'package:inno_image/src/generated/inno/model/inno_model.pb.dart' as grpc;
import 'package:uuid/uuid.dart';

class InnoImageService extends InnoImageServiceBase {
  final InnoConnectionPool connectionPool;
  final InnoImageDao innoImageDao;

  InnoImageService({required this.connectionPool})
      : innoImageDao = InnoImageDao(connectionPool: connectionPool);

  @override
  Future<ListInnoImagesResponse> listInnoImages(
      ServiceCall call, ListInnoImagesRequest request) async {
    // TODO: implement listInnoImages
    throw UnimplementedError();
  }

  @override
  Future<grpc.InnoImage> getInnoImage(
      ServiceCall call, GetInnoImageRequest request) async {
    final innoImage = await innoImageDao.select(id: request.id);

    return innoImage.toGrpc();
  }

  @override
  Future<grpc.InnoImage> createInnoImage(
      ServiceCall call, CreateInnoImageRequest request) async {
    final values = {
      InnoImageDao.columnId: Uuid().v1(),
      InnoImageDao.columnTitle: request.title,
      InnoImageDao.columnUrl: request.url,
    };

    InnoImage innoImage = await innoImageDao.insert(values: values);

    return innoImage.toGrpc();
  }

  @override
  Future<grpc.InnoImage> updateInnoImage(
      ServiceCall call, UpdateInnoImageRequest request) async {
    //inputs
    var columns = request.updateMask.paths;
    var innoImage = request.innoImage;

    //outputs
    var values = <String, dynamic>{};

    for (var column in columns) {
      if (column == InnoImageDao.columnTitle) {
        values[InnoImageDao.columnTitle] = innoImage.title;
      }
      if (column == InnoImageDao.columnUrl) {
        values[InnoImageDao.columnUrl] = innoImage.url;
      }
    }

    InnoImage updatedInnoImage =
        await innoImageDao.update(values: values, id: request.innoImage.id);

    return updatedInnoImage.toGrpc();
  }

  @override
  Future<Empty> deleteInnoImage(
      ServiceCall call, DeleteInnoImageRequest request) async {
    await innoImageDao.delete(id: request.id);

    return Empty();
  }
}

extension AsGrpcInnoImage on InnoImage {
  grpc.InnoImage toGrpc() {
    return grpc.InnoImage(
      id: id,
      title: title,
      url: url,
    );
  }
}
