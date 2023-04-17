import 'package:freezed_annotation/freezed_annotation.dart';

part 'inno_event.freezed.dart';

@freezed
class InnoEvent with _$InnoEvent {
  const factory InnoEvent({
    required String id,
    required String title,
    // required List<InnoEventSession> eventSessions,
  }) = _InnoEvent;
}
