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

import 'dart:typed_data';

// Unhandled postgresql-dart packages get returned as List<int>
// We need to convert them to custom date objects.
// Sourced from https://github.com/isoos/postgresql-dart/blob/1e25f901b512699d533908a71705e276447ef9e4/lib/src/binary_codec.dart
extension TimeAsDateExtension on Uint8List {
  DateTime withDate(DateTime dateTime) {
    final byteData = ByteData.view(
      buffer,
      offsetInBytes,
      lengthInBytes,
    );
    return dateTime.add(
      Duration(microseconds: byteData.getInt64(0)),
    );
  }

  DateTime get asDateTime {
    final byteData = ByteData.view(
      buffer,
      offsetInBytes,
      lengthInBytes,
    );
    return DateTime.utc(2000).add(
      Duration(microseconds: byteData.getInt64(0)),
    );
  }
}
