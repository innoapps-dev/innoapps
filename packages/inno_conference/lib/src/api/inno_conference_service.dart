// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:grpc/grpc.dart';
import 'package:inno_conference/inno_conference.dart';
import 'package:inno_conference/src/generated/google/protobuf/empty.pb.dart';
import 'package:inno_conference/src/generated/inno/api/conference/inno_conference.pbgrpc.dart';
import 'package:inno_conference/src/generated/inno/model/inno_model.pb.dart'
    as grpc;
import 'package:inno_database/inno_database.dart';
import 'package:uuid/uuid.dart';

class InnoConferenceService extends InnoConferenceServiceBase {
  final InnoConnectionPool connectionPool;
  late InnoConferenceDao innoConferenceDao;

  InnoConferenceService({
    required this.connectionPool,
  }) : innoConferenceDao = InnoConferenceDao(connectionPool: connectionPool);

  @override
  Future<grpc.InnoConference> createInnoConference(
    ServiceCall call,
    CreateInnoConferenceRequest request,
  ) async {
    final innoConference = await innoConferenceDao.insert(
      values: {
        InnoConferenceDao.columnId: Uuid().v1(),
        InnoConferenceDao.columnProviderId: request.providerId,
        InnoConferenceDao.columnTitle: request.title,
      },
    );
    return innoConference.toGrpc();
  }

  @override
  Future<Empty> deleteInnoConference(
    ServiceCall call,
    DeleteInnoConferenceRequest request,
  ) async {
    await innoConferenceDao.delete(id: request.id);
    return Empty();
  }

  @override
  Future<grpc.InnoConference> getInnoConference(
    ServiceCall call,
    GetInnoConferenceRequest request,
  ) async {
    final innoConference = await innoConferenceDao.select(id: request.id);
    return innoConference.toGrpc();
  }

  @override
  Future<ListInnoConferencesResponse> listInnoConferences(
    ServiceCall call,
    ListInnoConferencesRequest request,
  ) async {
    final innoConferences = await innoConferenceDao.selectAll();
    return ListInnoConferencesResponse(
      innoConferences: innoConferences.map((e) => e.toGrpc()).toList(),
    );
  }

  @override
  Future<grpc.InnoConference> updateInnoConference(
    ServiceCall call,
    UpdateInnoConferenceRequest request,
  ) async {
    final innoConference = request.innoConference;
    final updateMaskPaths = request.updateMask.paths;
    final values = <String, dynamic>{};
    for (var path in updateMaskPaths) {
      if (path == InnoConferenceDao.columnProviderId) {
        values[InnoConferenceDao.columnProviderId] = innoConference.provider.id;
      }
      if (path == InnoConferenceDao.columnTitle) {
        values[InnoConferenceDao.columnTitle] = innoConference.title;
      }
    }
    final updatedConference = await innoConferenceDao.update(
      values: values,
      id: innoConference.id,
    );
    return updatedConference.toGrpc();
  }
}

extension _AsGrpc on InnoConference {
  grpc.InnoConference toGrpc() {
    return grpc.InnoConference(
      id: id,
      title: title,
      provider: provider.toGrpc(),
      fields: fields.map((e) => e.toGrpc()).toList(),
    );
  }
}
