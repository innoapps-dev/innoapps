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
import 'package:inno_user/src/generated/google/protobuf/empty.pb.dart';
import 'package:inno_user/src/generated/inno/api/user/inno_user.pbgrpc.dart';
import 'package:inno_user/src/generated/inno/model/inno_model.pb.dart' as grpc;

class InnoUserService extends InnoUserServiceBase {
  final InnoConnectionPool connectionPool;
  final InnoUserDao innoUserDao;

  InnoUserService({required this.connectionPool})
      : innoUserDao = InnoUserDao(connectionPool: connectionPool);

  @override
  Future<ListInnoUsersResponse> listInnoUsers(
      ServiceCall call, ListInnoUsersRequest request) async {
    List<InnoUser> innoUsers = await innoUserDao.selectAll();

    ListInnoUsersResponse response = ListInnoUsersResponse(
      innoUsers: innoUsers.map((innoUser) => innoUser.toGrpc()).toList(),
    );
    return response;
  }

  @override
  Future<grpc.InnoUser> getInnoUser(
      ServiceCall call, GetInnoUserRequest request) async {
    final innoUser = await innoUserDao.select(id: request.uid);

    return innoUser.toGrpc();
  }

  @override
  Future<grpc.InnoUser> createInnoUser(
      ServiceCall call, CreateInnoUserRequest request) async {
    final values = {
      InnoUserDao.columnUid: request.uid,
      InnoUserDao.columnFirstName: request.firstName,
      InnoUserDao.columnLastName: request.lastName,
      InnoUserDao.columnEmail: request.email,
      InnoUserDao.columnMainRoleId: request.mainRoleId,
    };

    InnoUser innoUser = await innoUserDao.insert(values: values);

    return innoUser.toGrpc();
  }

  @override
  Future<grpc.InnoUser> updateInnoUser(
      ServiceCall call, UpdateInnoUserRequest request) async {
    //inputs
    var columns = request.updateMask.paths;
    var innoUser = request.innoUser;

    //outputs
    var values = <String, dynamic>{};

    for (var column in columns) {
      if (column == InnoUserDao.columnFirstName) {
        values[InnoUserDao.columnFirstName] = innoUser.firstName;
      }
      if (column == InnoUserDao.columnLastName) {
        values[InnoUserDao.columnLastName] = innoUser.lastName;
      }
      if (column == InnoUserDao.columnEmail) {
        values[InnoUserDao.columnEmail] = innoUser.email;
      }
      if (column == InnoUserDao.columnPhone) {
        values[InnoUserDao.columnPhone] = innoUser.phone;
      }
      if (column == InnoUserDao.columnMainRoleId) {
        values[InnoUserDao.columnMainRoleId] = innoUser.mainRoleId;
      }
    }

    InnoUser updatedInnoUser =
        await innoUserDao.update(values: values, id: request.innoUser.uid);

    return updatedInnoUser.toGrpc();
  }

  @override
  Future<Empty> deleteInnoUser(
      ServiceCall call, DeleteInnoUserRequest request) async {
    await innoUserDao.delete(id: request.uid);

    return Empty();
  }
}

extension AsGrpcInnoUser on InnoUser {
  grpc.InnoUser toGrpc() {
    return grpc.InnoUser(
      uid: uid,
      firstName: firstName,
      lastName: lastName,
      email: email,
      phone: phone,
      mainRoleId: mainRoleId,
      roles: roles.map((e) => e.toGrpc()).toList(),
    );
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
