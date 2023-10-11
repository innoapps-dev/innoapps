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

import 'package:inno_database/inno_database.dart';
import 'package:inno_event/inno_event.dart';
import 'package:inno_event/src/generated/google/protobuf/empty.pb.dart';
import 'package:grpc/grpc.dart';
import 'package:inno_event/src/generated/inno/api/event/inno_event_session.pbgrpc.dart';
import 'package:inno_event/src/generated/inno/model/inno_model.pb.dart' as grpc;
import 'package:uuid/uuid.dart';

class InnoEventSessionService extends InnoEventSessionServiceBase {
  final InnoEventSessionDao eventSessionDao;

  InnoEventSessionService({
    required InnoConnectionPool connectionPool,
  }) : eventSessionDao = InnoEventSessionDao(connectionPool: connectionPool);

  @override
  Future<grpc.InnoEventSession> createInnoEventSession(
    ServiceCall call,
    CreateInnoEventSessionRequest request,
  ) async {
    final eventId = request.innoEventId;
    final title = request.title;
    final description = request.description;
    final startDateTime = request.startDateTime.toDateTime();
    final endDateTime = request.endDateTime.toDateTime();
    var session = InnoEventSession(
      conferences: [],
      endDateTime: endDateTime,
      startDateTime: startDateTime,
      eventId: eventId,
      id: Uuid().v1(),
      links: [],
      texts: [],
      title: title,
      description: description,
    );
    session = await eventSessionDao.insert(
      values: session.asDbMap(eventId: eventId),
    );
    return session.toGrpc();
  }

  @override
  Future<Empty> deleteInnoEventSession(
    ServiceCall call,
    DeleteInnoEventSessionRequest request,
  ) async {
    await eventSessionDao.delete(id: request.id);
    return Empty();
    throw UnimplementedError();
  }

  @override
  Future<grpc.InnoEventSession> getInnoEventSession(
    ServiceCall call,
    GetInnoEventSessionRequest request,
  ) async {
    final session = await eventSessionDao.select(id: request.id);
    return session.toGrpc();
    throw UnimplementedError();
  }

  @override
  Future<ListInnoEventSessionsResponse> listInnoEventSessions(
    ServiceCall call,
    ListInnoEventSessionsRequest request,
  ) async {
    final eventSessions = await eventSessionDao.selectBy(
      id: request.innoEventId,
    );
    return ListInnoEventSessionsResponse(
      innoEventSessions: eventSessions.map((e) => e.toGrpc()).toList(),
    );
  }

  @override
  Future<grpc.InnoEventSession> updateInnoEventSession(
    ServiceCall call,
    UpdateInnoEventSessionRequest request,
  ) async {
    final eventSession = request.innoEventSession;
    final updateMaskPaths = request.updateMask.paths;
    final values = <String, dynamic>{};

    for (var path in updateMaskPaths) {
      if (path == InnoEventSessionDao.columnTitle) {
        values[InnoEventSessionDao.columnTitle] = eventSession.title;
      }
      if (path == InnoEventSessionDao.columnDescription) {
        values[InnoEventSessionDao.columnDescription] =
            eventSession.description;
      }
      if (path == InnoEventSessionDao.columnEndTime) {
        values[InnoEventSessionDao.columnEndTime] =
            eventSession.endDateTime.toDateTime();
      }
      if (path == InnoEventSessionDao.columnStartTime) {
        values[InnoEventSessionDao.columnStartTime] =
            eventSession.startDateTime;
      }
    }
    final updatedSession = await eventSessionDao.update(
      values: values,
      id: eventSession.id,
    );
    return updatedSession.toGrpc();
  }
}
