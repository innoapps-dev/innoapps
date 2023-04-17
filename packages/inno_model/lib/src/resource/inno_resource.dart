import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inno_model/src/service/inno_service.dart';

part 'inno_resource.freezed.dart';

@freezed
class InnoResource with _$InnoResource {
  const factory InnoResource({
    required String id,
    required String serviceId,
    required String tag,
  }) = _InnoResource;
}
