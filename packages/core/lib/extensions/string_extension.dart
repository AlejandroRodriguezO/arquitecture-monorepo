import 'package:intl/intl.dart';

extension DateTimeFormatExtension on DateTime {
  String toFormattedString() => DateFormat('yyyy-MM-dd').format(this);
}

extension StringToDateTimeExtension on String {
  DateTime? toDateTime() {
    try {
      return DateFormat('dd-MM-yyyy').parse(this);
    } catch (_) {
      return null;
    }
  }
}
