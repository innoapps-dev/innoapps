import 'package:freezed_annotation/freezed_annotation.dart';

part 'inno_conference_field.freezed.dart';

@freezed
class InnoConferenceField with _$InnoConferenceField {
  const factory InnoConferenceField({
    required String id, //inno_conf_value_id
    required String conferenceId, //inno_conf_id
    required String title, //call_id
    required String value, //ubc-miya-yeb
  }) = _InnoConferenceField;
}
