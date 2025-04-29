import 'package:intl/intl.dart';

class DateUtilsHelper {
  // Custom comparator function for date formats
  static int compareDateLabels(String a, String b) {
    // Normalize input
    a = a.toLowerCase().trim();
    b = b.toLowerCase().trim();

    final hMinusPattern = RegExp(r'^h\s*-\s*(\d+)$');
    final hPlusPattern = RegExp(r'^h\s*\+\s*(\d+)$');
    final hNeutralPattern = RegExp(r'^h\s+(\d+)$');

    // Check if both are "H -"
    final aMinusMatch = hMinusPattern.firstMatch(a);
    final bMinusMatch = hMinusPattern.firstMatch(b);
    if (aMinusMatch != null && bMinusMatch != null) {
      return int.parse(bMinusMatch.group(1)!)
          .compareTo(int.parse(aMinusMatch.group(1)!));
    }

    // If one is H - and the other is H neutral or H +
    if (aMinusMatch != null) return -1;
    if (bMinusMatch != null) return 1;

    // Check if both are "H {num}" (neutral)
    final aNeutralMatch = hNeutralPattern.firstMatch(a);
    final bNeutralMatch = hNeutralPattern.firstMatch(b);
    if (aNeutralMatch != null && bNeutralMatch != null) {
      return int.parse(aNeutralMatch.group(1)!)
          .compareTo(int.parse(bNeutralMatch.group(1)!));
    }

    // If one is H neutral and the other is H +
    final aPlusMatch = hPlusPattern.firstMatch(a);
    final bPlusMatch = hPlusPattern.firstMatch(b);
    if (aNeutralMatch != null && bPlusMatch != null) return -1;
    if (bNeutralMatch != null && aPlusMatch != null) return 1;

    // If both are H +
    if (aPlusMatch != null && bPlusMatch != null) {
      return int.parse(aPlusMatch.group(1)!)
          .compareTo(int.parse(bPlusMatch.group(1)!));
    }

    // Fallback for other types (e.g. week, month, full date)
    if (a.contains('-w') && b.contains('-w')) {
      // Split into year and week components
      final aParts = a.split('-w');
      final bParts = b.split('-w');

      // Compare years first
      final yearComparison =
          int.parse(aParts[0]).compareTo(int.parse(bParts[0]));
      if (yearComparison != 0) {
        return yearComparison;
      }

      // If years are the same, compare week numbers
      return int.parse(aParts[1]).compareTo(int.parse(bParts[1]));
    }

    // Handle year-month format (e.g., "2025-01")
    else if (a.contains('-') &&
        b.contains('-') &&
        a.length <= 7 &&
        b.length <= 7) {
      final aParts = a.split('-');
      final bParts = b.split('-');

      // Compare years first
      final yearComparison =
          int.parse(aParts[0]).compareTo(int.parse(bParts[0]));
      if (yearComparison != 0) {
        return yearComparison;
      }

      // If years are the same, compare month numbers
      return int.parse(aParts[1]).compareTo(int.parse(bParts[1]));
    }

    // Handle date format (e.g., "2025-12-10")
    else if (a.contains('-') && b.contains('-')) {
      // Try to parse as DateTime objects
      try {
        final aDate = DateTime.parse(a);
        final bDate = DateTime.parse(b);
        return aDate.compareTo(bDate);
      } catch (e) {
        // If parsing fails, fall back to string comparison
        return a.compareTo(b);
      }
    }

    // Default to string comparison for other formats
    return a.compareTo(b);
  }

  static String formatDateToIndo(String input) {
    try {
      if (input.isEmpty) return '';
      final DateTime date = DateTime.parse(input);
      final DateFormat formatter = DateFormat("d MMM", "id");
      return formatter.format(date);
    } catch (e) {
      return '';
    }
  }
}
