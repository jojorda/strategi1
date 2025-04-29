enum UdaraEnum {
  agregat,
  wilayah,
  simpul,
  od,
  operator,
  kecelakaan,
  kejadianMenonjol,
}

class UdaraEnumValue {
  static int toIndex(UdaraEnum type) {
    switch (type) {
      case UdaraEnum.agregat:
        return 0;
      case UdaraEnum.wilayah:
        return 1;
      case UdaraEnum.simpul:
        return 2;
      case UdaraEnum.od:
        return 3;
      case UdaraEnum.operator:
        return 4;
      case UdaraEnum.kecelakaan:
        return 5;
      case UdaraEnum.kejadianMenonjol:
        return 6;
    }
  }
}
