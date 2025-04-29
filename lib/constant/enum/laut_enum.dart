enum LautEnum {
  agregat,
  wilayah,
  simpul,
  od,
  operator,
  kecelakaan,
  kejadianMenonjol,
}

class LautEnumValue {
  static int toIndex(LautEnum type) {
    switch (type) {
      case LautEnum.agregat:
        return 0;
      case LautEnum.wilayah:
        return 1;
      case LautEnum.simpul:
        return 2;
      case LautEnum.od:
        return 3;
      case LautEnum.operator:
        return 4;
      case LautEnum.kecelakaan:
        return 5;
      case LautEnum.kejadianMenonjol:
        return 6;
    }
  }
}
