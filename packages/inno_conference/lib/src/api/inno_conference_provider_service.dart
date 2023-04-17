import 'package:inno_conference/src/generated/google/protobuf/empty.pb.dart';
import 'package:grpc/grpc.dart';
import 'package:inno_conference/src/generated/inno/api/conference/inno_conference_provider.pbgrpc.dart';
import 'package:inno_conference/src/generated/inno/model/inno_model.pb.dart'
    as grpc;
import 'package:inno_database/inno_database.dart';
import 'package:uuid/uuid.dart';

class InnoConferenceProviderService extends InnoConferenceProviderServiceBase {
  final InnoConnectionPool connectionPool;
  late InnoConferenceProviderDao innoConferenceProviderDao;

  InnoConferenceProviderService({
    required this.connectionPool,
  }) : innoConferenceProviderDao =
            InnoConferenceProviderDao(connectionPool: connectionPool);

  @override
  Future<grpc.InnoConferenceProvider> createInnoConferenceProvider(
    ServiceCall call,
    CreateInnoConferenceProviderRequest request,
  ) async {
    final conferenceProvider = await innoConferenceProviderDao.insert(
      values: {
        InnoConferenceProviderDao.columnId: Uuid().v1(),
        InnoConferenceProviderDao.columnTitle: request.title,
      },
    );
    return conferenceProvider.toGrpc();
  }

  @override
  Future<Empty> deleteInnoConferenceProvider(
    ServiceCall call,
    DeleteInnoConferenceProviderRequest request,
  ) async {
    await innoConferenceProviderDao.delete(id: request.id);
    return Empty();
  }

  @override
  Future<grpc.InnoConferenceProvider> getInnoConferenceProvider(
    ServiceCall call,
    GetInnoConferenceProviderRequest request,
  ) async {
    final conferenceProvider = await innoConferenceProviderDao.select(
      id: request.id,
    );
    return conferenceProvider.toGrpc();
  }

  @override
  Future<ListInnoConferenceProvidersResponse> listInnoConferenceProviders(
    ServiceCall call,
    ListInnoConferenceProvidersRequest request,
  ) async {
    final providers = await innoConferenceProviderDao.selectAll();
    return ListInnoConferenceProvidersResponse(
      innoConferenceProviders: providers.map((e) => e.toGrpc()).toList(),
    );
  }

  @override
  Future<grpc.InnoConferenceProvider> updateInnoConferenceProvider(
    ServiceCall call,
    UpdateInnoConferenceProviderRequest request,
  ) async {
    final conferenceProvider = request.innoConferenceProvider;
    final updateMaskPaths = request.updateMask.paths;
    final values = <String, dynamic>{};
    for (var path in updateMaskPaths) {
      if (path == InnoConferenceProviderDao.columnTitle) {
        values[InnoConferenceProviderDao.columnTitle] =
            conferenceProvider.title;
      }
    }
    final updated = await innoConferenceProviderDao.update(
      values: values,
      id: conferenceProvider.id,
    );
    return updated.toGrpc();
  }
}

extension AsGrpcInnoConferenceProvider on InnoConferenceProvider {
  grpc.InnoConferenceProvider toGrpc() {
    return grpc.InnoConferenceProvider(id: id, title: title);
  }
}
