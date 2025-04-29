extension StringFormatter on String {
  String get chartYLabel {
    if (startsWith('H ')) {
      return this;
    }
    return substring(2);
  }
}
