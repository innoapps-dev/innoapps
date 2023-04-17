import 'package:freezed_annotation/freezed_annotation.dart';

part 'inno_image.freezed.dart';

@freezed
class InnoImage with _$InnoImage {
  const factory InnoImage({
    required String id,
    required String title,
    required String url,
  }) = _InnoImage;
}
