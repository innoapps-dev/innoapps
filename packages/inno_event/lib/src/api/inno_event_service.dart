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
import 'package:inno_event/src/generated/google/protobuf/empty.pb.dart';
import 'package:grpc/grpc.dart';
import 'package:inno_event/src/generated/google/protobuf/timestamp.pb.dart';
import 'package:inno_event/src/generated/inno/api/event/inno_event.pbgrpc.dart';
import 'package:inno_event/src/generated/inno/model/inno_model.pb.dart' as grpc;
import 'package:uuid/uuid.dart';

class InnoEventService extends InnoEventServiceBase {
  final InnoEventDao innoEventDao;
  final InnoEventSessionDao innoEventSessionDao;

  InnoEventService({
    required InnoConnectionPool connectionPool,
  })  : innoEventDao = InnoEventDao(connectionPool: connectionPool),
        innoEventSessionDao =
            InnoEventSessionDao(connectionPool: connectionPool);

  @override
  Future<grpc.InnoEvent> createInnoEvent(
    ServiceCall call,
    CreateInnoEventRequest request,
  ) async {
    final title = request.title;
    final id = Uuid().v1();
    final event = await innoEventDao.insert(
      values: InnoEvent(id: id, title: title).asDbMap(),
    );
    //TODO(Ask): should we select by the uid?
    final eventSessions = await innoEventSessionDao.selectBy(id: id);
    return event.toGrpc(eventSessions);
  }

  @override
  Future<Empty> deleteInnoEvent(
    ServiceCall call,
    DeleteInnoEventRequest request,
  ) async {
    await innoEventDao.delete(id: request.id);
    // TODO(Ask): Should we delete its corresponding event sessions?
    return Empty();
  }

  @override
  Future<grpc.InnoEvent> getInnoEvent(
    ServiceCall call,
    GetInnoEventRequest request,
  ) async {
    final event = await innoEventDao.select(id: request.id);
    //TODO(Ask): should we select by the access level?
    final eventSessions = await innoEventSessionDao.selectBy(id: request.id);
    return event.toGrpc([]);
  }

  @override
  Future<ListInnoEventsResponse> listInnoEvents(
    ServiceCall call,
    ListInnoEventsRequest request,
  ) async {
    final events = await innoEventDao.selectAll();
    final innoEvents = await Future.wait(
      events.map(
        (e) async {
          final eventSessions = await innoEventSessionDao.selectBy(id: e.id);

          return e.toGrpc(eventSessions);
        },
      ),
    );
    return ListInnoEventsResponse(innoEvents: innoEvents);
  }

  @override
  Future<grpc.InnoEvent> updateInnoEvent(
    ServiceCall call,
    UpdateInnoEventRequest request,
  ) async {
    final event = request.innoEvent;
    final fieldMaskPaths = request.updateMask.paths;

    var values = <String, dynamic>{};

    for (var path in fieldMaskPaths) {
      if (path == InnoEventDao.columnTitle) {
        values[InnoEventDao.columnTitle] = event.title;
      }
    }
    final updated = await innoEventDao.update(values: values, id: event.id);
    //TODO(Ask): should we select by the access level?
    final eventSessions = await innoEventSessionDao.selectBy(
      id: event.id,
    );
    return updated.toGrpc(eventSessions);
  }
}

extension _AsGrpcEvent on InnoEvent {
  grpc.InnoEvent toGrpc(
    List<InnoEventSession> sessions,
  ) {
    return grpc.InnoEvent(
      id: id,
      title: title,
      sessions: sessions.map((e) => e.toGrpc()).toList(),
    );
  }
}

extension AsGrpcSession on InnoEventSession {
  grpc.InnoEventSession toGrpc() {
    return grpc.InnoEventSession(
      id: id,
      title: title,
      description: description,
      endDateTime: Timestamp.fromDateTime(endDateTime),
      startDateTime: Timestamp.fromDateTime(startDateTime),
      eventId: eventId,
      texts: [], //TODO(Ask): Which texts need to be added
      conferences: conferences.map((e) => grpc.InnoConference()).toList(),
      links: [], //TODO(Ask): Which links need to be specified
    );
  }
}
