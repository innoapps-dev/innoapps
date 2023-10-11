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
import 'package:inno_service/src/generated/google/protobuf/empty.pb.dart';
import 'package:inno_service/src/generated/inno/api/service/inno_service_method.pbgrpc.dart';
import 'package:inno_service/src/generated/inno/model/inno_model.pb.dart'
    as grpc;

class InnoServiceMethodService extends InnoServiceMethodServiceBase {
  final InnoConnectionPool connectionPool;
  final InnoServiceMethodDao innoServiceMethodDao;

  InnoServiceMethodService({required this.connectionPool})
      : innoServiceMethodDao =
            InnoServiceMethodDao(connectionPool: connectionPool);

  @override
  Future<ListInnoServiceMethodsResponse> listInnoServiceMethods(
      ServiceCall call, ListInnoServiceMethodsRequest request) async {
    // TODO: implement listInnoServiceMethods
    throw UnimplementedError();
  }

  @override
  Future<grpc.InnoServiceMethod> getInnoServiceMethod(
      ServiceCall call, GetInnoServiceMethodRequest request) async {
    final innoServiceMethod = await innoServiceMethodDao.select(id: request.id);

    return innoServiceMethod.toGrpc();
  }

  @override
  Future<grpc.InnoServiceMethod> createInnoServiceMethod(
      ServiceCall call, CreateInnoServiceMethodRequest request) async {
    final values = {
      InnoServiceMethodDao.columnId: request.id,
      InnoServiceMethodDao.columnServiceId: request.serviceId,
      InnoServiceMethodDao.columnTitle: request.title,
    };

    InnoServiceMethod innoServiceMethod =
        await innoServiceMethodDao.insert(values: values);

    return innoServiceMethod.toGrpc();
  }

  @override
  Future<grpc.InnoServiceMethod> updateInnoServiceMethod(
      ServiceCall call, UpdateInnoServiceMethodRequest request) async {
    //inputs
    var columns = request.updateMask.paths;
    var innoServiceMethod = request.innoServiceMethod;

    //outputs
    var values = <String, dynamic>{};

    for (var column in columns) {
      if (column == InnoServiceMethodDao.columnTitle) {
        values[InnoServiceMethodDao.columnTitle] = innoServiceMethod.title;
      }
    }

    InnoServiceMethod updatedInnoServiceMethod = await innoServiceMethodDao
        .update(values: values, id: request.innoServiceMethod.id);

    return updatedInnoServiceMethod.toGrpc();
  }

  @override
  Future<Empty> deleteInnoServiceMethod(
      ServiceCall call, DeleteInnoServiceMethodRequest request) async {
    await innoServiceMethodDao.delete(id: request.id);

    return Empty();
  }
}

extension AsGrpcInnoServiceMethod on InnoServiceMethod {
  grpc.InnoServiceMethod toGrpc() {
    return grpc.InnoServiceMethod(
      id: id,
      serviceId: serviceId,
    );
  }
}
