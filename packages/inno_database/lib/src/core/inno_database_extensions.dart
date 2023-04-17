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
