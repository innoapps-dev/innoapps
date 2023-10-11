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
import 'package:inno_file/src/generated/google/protobuf/empty.pb.dart';
import 'package:inno_file/src/generated/inno/api/file/inno_file.pbgrpc.dart';
import 'package:inno_file/src/generated/inno/model/inno_model.pb.dart' as grpc;
import 'package:uuid/uuid.dart';

class InnoFileService extends InnoFileServiceBase {
  final InnoConnectionPool connectionPool;
  final InnoFileDao innoFileDao;

  InnoFileService({required this.connectionPool})
      : innoFileDao = InnoFileDao(connectionPool: connectionPool);

  @override
  Future<ListInnoFilesResponse> listInnoFiles(
      ServiceCall call, ListInnoFilesRequest request) async {
    // TODO: implement listInnoFiles
    throw UnimplementedError();
  }

  @override
  Future<grpc.InnoFile> getInnoFile(
      ServiceCall call, GetInnoFileRequest request) async {
    final innoFile = await innoFileDao.select(id: request.id);

    return innoFile.toGrpc();
  }

  @override
  Future<grpc.InnoFile> createInnoFile(
      ServiceCall call, CreateInnoFileRequest request) async {
    final values = {
      InnoFileDao.columnId: Uuid().v1(),
      InnoFileDao.columnTitle: request.title,
      InnoFileDao.columnUrl: request.url,
    };

    InnoFile innoFile = await innoFileDao.insert(values: values);

    return innoFile.toGrpc();
  }

  @override
  Future<grpc.InnoFile> updateInnoFile(
      ServiceCall call, UpdateInnoFileRequest request) async {
    //inputs
    var columns = request.updateMask.paths;
    var innoFile = request.innoFile;

    //outputs
    var values = <String, dynamic>{};

    for (var column in columns) {
      if (column == InnoFileDao.columnTitle) {
        values[InnoFileDao.columnTitle] = innoFile.title;
      }
      if (column == InnoFileDao.columnUrl) {
        values[InnoFileDao.columnUrl] = innoFile.url;
      }
    }

    InnoFile updatedInnoFile =
        await innoFileDao.update(values: values, id: request.innoFile.id);

    return updatedInnoFile.toGrpc();
  }

  @override
  Future<Empty> deleteInnoFile(
      ServiceCall call, DeleteInnoFileRequest request) async {
    await innoFileDao.delete(id: request.id);

    return Empty();
  }
}

extension AsGrpcInnoFile on InnoFile {
  grpc.InnoFile toGrpc() {
    return grpc.InnoFile(
      id: id,
      title: title,
      url: url,
    );
  }
}
