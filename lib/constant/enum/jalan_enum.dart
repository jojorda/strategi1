enum JalanEnum {
  agregat,
  wilayah,
  simpul,
  od,
  operator,
  kecelakaan,
  kejadianMenonjol,
  lakaLantas,
}

class JalanEnumValue {
  static int toIndex(JalanEnum type) {
    switch (type) {
      case JalanEnum.agregat:
        return 0;
      case JalanEnum.wilayah:
        return 1;
      case JalanEnum.simpul:
        return 2;
      case JalanEnum.od:
        return 3;
      case JalanEnum.operator:
        return 4;
      case JalanEnum.kecelakaan:
        return 5;
      case JalanEnum.kejadianMenonjol:
        return 6;
      case JalanEnum.lakaLantas:
        return 7;
    }
  }
}
