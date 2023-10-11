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

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:grpc/grpc.dart';
import 'package:inno_conference/src/generated/google/protobuf/empty.pb.dart';
import 'package:inno_conference/src/generated/inno/api/conference/inno_conference_field.pbgrpc.dart';
import 'package:inno_conference/src/generated/inno/model/inno_model.pb.dart'
    as grpc;
import 'package:inno_database/inno_database.dart';
import 'package:uuid/uuid.dart';

class InnoConferenceFieldService extends InnoConferenceFieldServiceBase {
  final InnoConnectionPool connectionPool;
  late InnoConferenceFieldDao conferenceFieldDao;

  InnoConferenceFieldService({
    required this.connectionPool,
  }) : conferenceFieldDao =
            InnoConferenceFieldDao(connectionPool: connectionPool);

  @override
  Future<grpc.InnoConferenceField> createInnoConferenceField(
    ServiceCall call,
    CreateInnoConferenceFieldRequest request,
  ) async {
    final conferenceField = await conferenceFieldDao.insert(
      values: {
        InnoConferenceFieldDao.columnId: Uuid().v1(),
        InnoConferenceFieldDao.columnTitle: request.title,
        InnoConferenceFieldDao.columnConferenceId: request.conferenceId,
        InnoConferenceFieldDao.columnValue: request.value,
      },
    );
    return conferenceField.toGrpc();
  }

  @override
  Future<Empty> deleteInnoConferenceField(
    ServiceCall call,
    DeleteInnoConferenceFieldRequest request,
  ) async {
    await conferenceFieldDao.delete(id: request.id);
    return Empty();
  }

  @override
  Future<grpc.InnoConferenceField> getInnoConferenceField(
    ServiceCall call,
    GetInnoConferenceFieldRequest request,
  ) async {
    final conferenceField = await conferenceFieldDao.select(id: request.id);
    return conferenceField.toGrpc();
  }

  @override
  Future<ListInnoConferenceFieldsResponse> listInnoConferenceFields(
    ServiceCall call,
    ListInnoConferenceFieldsRequest request,
  ) async {
    final conferenceFields = await conferenceFieldDao.selectAll();
    return ListInnoConferenceFieldsResponse(
      innoConferenceFields: conferenceFields.map((e) => e.toGrpc()).toList(),
    );
  }

  @override
  Future<grpc.InnoConferenceField> updateInnoConferenceField(
    ServiceCall call,
    UpdateInnoConferenceFieldRequest request,
  ) async {
    final conferenceField = request.innoConferenceField;
    final updateMaskPaths = request.updateMask.paths;
    final values = <String, dynamic>{};
    for (var path in updateMaskPaths) {
      if (path == InnoConferenceFieldDao.columnConferenceId) {
        // values[InnoConferenceFieldDao.columnConferenceId] = conferenceField;
      } else if (path == InnoConferenceFieldDao.columnTitle) {
        values[InnoConferenceFieldDao.columnTitle] = conferenceField.name;
      } else if (path == InnoConferenceFieldDao.columnTitle) {
        values[InnoConferenceFieldDao.columnValue] = conferenceField.value;
      }
    }
    final updated = await conferenceFieldDao.update(
      values: values,
      id: conferenceField.id,
    );
    return updated.toGrpc();
  }
}

extension AsGrpcInnoConferenceField on InnoConferenceField {
  grpc.InnoConferenceField toGrpc() {
    return grpc.InnoConferenceField(
      id: id,
      name: title,
      value: value,
    );
  }
}
