import 'package:grpc/grpc.dart';

class InnoGrpcServer extends Server {
  InnoGrpcServer(
    List<Service> services, [
    List<Interceptor> interceptors = const <Interceptor>[],
    CodecRegistry? codecRegistry,
  ]) : super(services, interceptors, codecRegistry);

  static Interceptor interceptor = (ServiceCall call, ServiceMethod method) {
    print('method:  ${method.name}');
    print('clientMetadata: ${call.clientMetadata!['auth']}');

    if (call.clientMetadata!['auth'] != 'office') {
      return GrpcError.permissionDenied('user not authorised');
    }
    return null;
  };

  // static Interceptor postgresInterceptor ..
}
