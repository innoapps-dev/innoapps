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
