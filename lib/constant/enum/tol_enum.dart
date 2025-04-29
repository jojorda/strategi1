enum TolEnum {
  agregat,
  operator,
  kecelakaan,
}

class TolEnumValue {
  static int toIndex(TolEnum type) {
    switch (type) {
      case TolEnum.agregat:
        return 0;
      case TolEnum.operator:
        return 1;
      case TolEnum.kecelakaan:
        return 2;
    }
  }
}
