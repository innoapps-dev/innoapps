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
import 'package:inno_role/src/generated/google/protobuf/empty.pb.dart';
import 'package:inno_role/src/generated/inno/api/role/inno_role.pbgrpc.dart';
import 'package:inno_role/src/generated/inno/model/inno_model.pb.dart' as grpc;

class InnoRoleService extends InnoRoleServiceBase {
  final InnoConnectionPool connectionPool;
  final InnoRoleDao innoRoleDao;

  InnoRoleService({required this.connectionPool})
      : innoRoleDao = InnoRoleDao(connectionPool: connectionPool);

  @override
  Future<ListInnoRolesResponse> listInnoRoles(
      ServiceCall call, ListInnoRolesRequest request) async {
    // TODO: implement listInnoRoles
    throw UnimplementedError();
  }

  @override
  Future<grpc.InnoRole> getInnoRole(
      ServiceCall call, GetInnoRoleRequest request) async {
    final innoRole = await innoRoleDao.select(id: request.id);

    return innoRole.toGrpc();
  }

  @override
  Future<grpc.InnoRole> createInnoRole(
      ServiceCall call, CreateInnoRoleRequest request) async {
    final values = {
      InnoRoleDao.columnId: request.id,
      InnoRoleDao.columnTitle: request.title,
    };

    InnoRole innoRole = await innoRoleDao.insert(values: values);

    return innoRole.toGrpc();
  }

  @override
  Future<grpc.InnoRole> updateInnoRole(
      ServiceCall call, UpdateInnoRoleRequest request) async {
    //inputs
    var columns = request.updateMask.paths;
    var innoRole = request.innoRole;

    //outputs
    var values = <String, dynamic>{};

    for (var column in columns) {
      if (column == InnoRoleDao.columnTitle) {
        values[InnoRoleDao.columnTitle] = innoRole.title;
      }
    }

    InnoRole updatedInnoRole =
        await innoRoleDao.update(values: values, id: request.innoRole.id);

    return updatedInnoRole.toGrpc();
  }

  @override
  Future<Empty> deleteInnoRole(
      ServiceCall call, DeleteInnoRoleRequest request) async {
    await innoRoleDao.delete(id: request.id);

    return Empty();
  }
}

extension AsGrpcInnoRole on InnoRole {
  grpc.InnoRole toGrpc() {
    return grpc.InnoRole(
      id: id,
      title: title,
    );
  }
}
