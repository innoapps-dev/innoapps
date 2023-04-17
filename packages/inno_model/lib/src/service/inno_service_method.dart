import 'package:freezed_annotation/freezed_annotation.dart';

part 'inno_service_method.freezed.dart';

@freezed
class InnoServiceMethod with _$InnoServiceMethod {
  const factory InnoServiceMethod({
    required String id,
    required String serviceId,
    required String title,
  }) = _InnoServiceMethod;
}
