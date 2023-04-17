import 'package:freezed_annotation/freezed_annotation.dart';

part 'inno_text.freezed.dart';

@freezed
class InnoText with _$InnoText {
  const factory InnoText({
    required String id,
    required String title,
    required String text,
  }) = _InnoText;
}
