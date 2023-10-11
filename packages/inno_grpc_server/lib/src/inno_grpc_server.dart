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
