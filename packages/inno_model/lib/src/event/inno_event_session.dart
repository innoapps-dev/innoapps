import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inno_model/src/conference/inno_conference.dart';
import 'package:inno_model/src/link/inno_link.dart'; //TODO: shall we import inno_model?
import 'package:inno_model/src/text/inno_text.dart'; //TODO: shall we import inno_model?

part 'inno_event_session.freezed.dart';

@freezed
class InnoEventSession with _$InnoEventSession {
  const factory InnoEventSession({
    required String id,
    required String eventId,
    required String title,
    String? description,
    required DateTime startDateTime,
    required DateTime endDateTime,
    required List<InnoConference> conferences,
    required List<InnoText> texts,
    required List<InnoLink> links,
  }) = _InnoEventSession;
}
