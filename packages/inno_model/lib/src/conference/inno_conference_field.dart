/// Copyright 2023 Ariwa Pre Ltd
/// 
/// Licensed under the Apache License, Version 2.0 (the "License");
/// you may not use this file except in compliance with the License.
/// You may obtain a copy of the License at
/// 
///   http://www.apache.org/licenses/LICENSE-2.0
/// 
/// Unless required by applicable law or agreed to in writing, software
/// distributed under the License is distributed on an "AS IS" BASIS,
/// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
/// See the License for the specific language governing permissions and
/// limitations under the License.
/// 

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
