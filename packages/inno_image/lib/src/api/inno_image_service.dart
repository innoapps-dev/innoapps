/// Copyright 2023 Ariwa Pre Ltd
/// 
/// Licensed under the Apache License, Version 2.0 (the "License");
/// you may not use this file except in compliance with the License.
/// You may obtain a copy of the License at
/// 
///   http://www.apache.org/licenses/LICENSE-2.0
/// 
/// Unless required by applicable law or agreed to in writing, software
/// distributed under the License is distributed on an "AS IS" BASIS,
/// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
/// See the License for the specific language governing permissions and
/// limitations under the License.
/// 

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
