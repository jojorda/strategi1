extension NumberFormatExtension on int {
  String toDotSeparated({int maxLength = 8, bool wrap = false}) {
    if (wrap && toString().length > maxLength) {
      double shortened = this / 1000;
      String formatted = shortened.toStringAsFixed(0).replaceAllMapped(
            RegExp(r'(\d)(?=(\d{3})+(?!\d))'),
            (match) => '${match[1]}.',
          );
      return '$formatted' ' RB';
    } else {
      return toString().replaceAllMapped(
        RegExp(r'(\d)(?=(\d{3})+(?!\d))'),
        (match) => '${match[1]}.',
      );
    }
  }

  String toPeopleCount() {
    return '$this Orang';
  }
}

extension DoubleFormatExtension on double {
  double roundUp50k() {
    if (toInt().toString().length <= 4) {
      return (((this + 99) ~/ 100) * 100).toDouble();
    }
    if (toInt().toString().length <= 5) {
      return (((this + 999) ~/ 1000) * 1000).toDouble();
    }
    int step = this < 10000 ? 10000 : 50000;
    return (((this + step - 1) ~/ step) * step).toDouble();
  }

  String toDotSeparated({int maxLength = 8, bool wrap = false}) {
    if (wrap && toString().length > maxLength) {
      double shortened = this / 1000;
      String formatted = shortened.toStringAsFixed(0).replaceAllMapped(
            RegExp(r'(\d)(?=(\d{3})+(?!\d))'),
            (match) => '${match[1]}.',
          );
      return '$formatted' ' RB';
    } else {
      return toString().replaceAllMapped(
        RegExp(r'(\d)(?=(\d{3})+(?!\d))'),
        (match) => '${match[1]}.',
      );
    }
  }
}
