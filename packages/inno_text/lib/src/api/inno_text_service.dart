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
import 'package:inno_text/src/generated/google/protobuf/empty.pb.dart';
import 'package:inno_text/src/generated/inno/api/text/inno_text.pbgrpc.dart';
import 'package:inno_text/src/generated/inno/model/inno_model.pb.dart' as grpc;
import 'package:uuid/uuid.dart';

class InnoTextService extends InnoTextServiceBase {
  final InnoConnectionPool connectionPool;
  final InnoTextDao innoTextDao;

  InnoTextService({required this.connectionPool})
      : innoTextDao = InnoTextDao(connectionPool: connectionPool);

  @override
  Future<ListInnoTextsResponse> listInnoTexts(
      ServiceCall call, ListInnoTextsRequest request) {
    // TODO: implement listInnoTexts
    throw UnimplementedError();
  }

  @override
  Future<grpc.InnoText> getInnoText(
      ServiceCall call, GetInnoTextRequest request) async {
    final innoText = await innoTextDao.select(id: request.id);

    return innoText.toGrpc();
  }

  @override
  Future<grpc.InnoText> createInnoText(
      ServiceCall call, CreateInnoTextRequest request) async {
    final values = {
      InnoTextDao.columnId: Uuid().v1(),
      InnoTextDao.columnTitle: request.title,
    };

    InnoText innoText = await innoTextDao.insert(values: values);

    return innoText.toGrpc();
  }

  @override
  Future<grpc.InnoText> updateInnoText(
      ServiceCall call, UpdateInnoTextRequest request) async {
    //inputs
    var columns = request.updateMask.paths;
    var innoText = request.innoText;

    //outputs
    var values = <String, dynamic>{};

    for (var column in columns) {
      if (column == InnoTextDao.columnTitle) {
        values[InnoTextDao.columnTitle] = innoText.title;
      }
      if (column == InnoTextDao.columnText) {
        values[InnoTextDao.columnText] = innoText.text;
      }
    }

    InnoText updatedInnoText =
        await innoTextDao.update(values: values, id: request.innoText.id);

    return updatedInnoText.toGrpc();
  }

  @override
  Future<Empty> deleteInnoText(
      ServiceCall call, DeleteInnoTextRequest request) async {
    await innoTextDao.delete(id: request.id);

    return Empty();
  }
}

extension AsGrpcInnoText on InnoText {
  grpc.InnoText toGrpc() {
    return grpc.InnoText(
      id: id,
      title: title,
      text: text,
    );
  }
}
