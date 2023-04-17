import 'package:freezed_annotation/freezed_annotation.dart';

part 'inno_service.freezed.dart';

@freezed
class InnoService with _$InnoService {
  const factory InnoService({
    required String id,
    required String title,
    required String version,
    required String organisation,
  }) = _InnoService;
}
