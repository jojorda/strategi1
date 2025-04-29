import 'package:intl/intl.dart';

extension NumberFormatExtension on DateFormat {
  String tryFormat(DateTime? date) {
    if (date == null) {
      return '';
    }

    return format(date);
  }
}
