import 'package:freezed_annotation/freezed_annotation.dart';

part 'inno_file.freezed.dart';

@freezed
class InnoFile with _$InnoFile {
  const factory InnoFile({
    required String id,
    required String title,
    required String url,
  }) = _InnoFile;
}
