import 'package:freezed_annotation/freezed_annotation.dart';

part 'inno_link.freezed.dart';

@freezed
class InnoLink with _$InnoLink {
  const factory InnoLink({
    required String id,
    required String title,
    required String url,
  }) = _InnoLink;
}
