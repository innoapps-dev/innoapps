import 'package:freezed_annotation/freezed_annotation.dart';

part 'inno_conference_provider.freezed.dart';

@freezed
class InnoConferenceProvider with _$InnoConferenceProvider {
  const factory InnoConferenceProvider({
    required String id,
    required String title,
  }) = _InnoConferenceProvider;
}
