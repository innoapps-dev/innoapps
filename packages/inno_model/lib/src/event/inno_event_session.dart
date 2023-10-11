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
