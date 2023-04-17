import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inno_model/src/conference/inno_conference_field.dart';
import 'package:inno_model/src/conference/inno_conference_provider.dart';

part 'inno_conference.freezed.dart';

@freezed
class InnoConference with _$InnoConference {
  const factory InnoConference({
    required String id, //inno_conf_id
    required String title, // Room 1
    required InnoConferenceProvider provider, // Zoom
    required List<InnoConferenceField> fields,
  }) = _InnoConference;
}
