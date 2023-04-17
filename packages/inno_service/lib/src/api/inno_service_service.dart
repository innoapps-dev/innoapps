import 'package:grpc/grpc.dart';
import 'package:inno_database/inno_database.dart';
import 'package:inno_service/src/generated/google/protobuf/empty.pb.dart';
import 'package:inno_service/src/generated/inno/api/service/inno_service.pbgrpc.dart';
import 'package:inno_service/src/generated/inno/model/inno_model.pb.dart'
    as grpc;

class InnoServiceService extends InnoServiceServiceBase {
  final InnoConnectionPool connectionPool;
  final InnoServiceDao innoServiceDao;

  InnoServiceService({required this.connectionPool})
      : innoServiceDao = InnoServiceDao(connectionPool: connectionPool);

  @override
  Future<ListInnoServicesResponse> listInnoServices(
      ServiceCall call, ListInnoServicesRequest request) async {
    // TODO: implement listInnoServices
    throw UnimplementedError();
  }

  @override
  Future<grpc.InnoService> getInnoService(
      ServiceCall call, GetInnoServiceRequest request) async {
    final innoService = await innoServiceDao.select(id: request.id);

    return innoService.toGrpc();
  }

  @override
  Future<grpc.InnoService> createInnoService(
      ServiceCall call, CreateInnoServiceRequest request) async {
    final values = {
      InnoServiceDao.columnId: request.id,
      InnoServiceDao.columnTitle: request.title,
    };

    InnoService innoService = await innoServiceDao.insert(values: values);

    return innoService.toGrpc();
  }

  @override
  Future<grpc.InnoService> updateInnoService(
      ServiceCall call, UpdateInnoServiceRequest request) async {
    //inputs
    var columns = request.updateMask.paths;
    var innoService = request.innoService;

    //outputs
    var values = <String, dynamic>{};

    for (var column in columns) {
      if (column == InnoServiceDao.columnTitle) {
        values[InnoServiceDao.columnTitle] = innoService.title;
      }
      if (column == InnoServiceDao.columnVersion) {
        values[InnoServiceDao.columnVersion] = innoService.version;
      }
      if (column == InnoServiceDao.columnOrganisation) {
        values[InnoServiceDao.columnOrganisation] = innoService.organisation;
      }
    }

    InnoService updatedInnoService =
        await innoServiceDao.update(values: values, id: request.innoService.id);

    return updatedInnoService.toGrpc();
  }

  @override
  Future<Empty> deleteInnoService(
      ServiceCall call, DeleteInnoServiceRequest request) async {
    await innoServiceDao.delete(id: request.id);

    return Empty();
  }
}

extension AsGrpcInnoService on InnoService {
  grpc.InnoService toGrpc() {
    return grpc.InnoService(
      id: id,
      title: title,
      version: version,
      organisation: organisation,
    );
  }
}
