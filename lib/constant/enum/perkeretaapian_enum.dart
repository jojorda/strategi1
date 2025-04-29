enum PerkeretaapianEnum {
  agregat,
  wilayah,
  simpul,
  od,
  operator,
  kecelakaan,
  kejadianMenonjol,
}

class PerkeretaapianEnumValue {
  static int toIndex(PerkeretaapianEnum type) {
    switch (type) {
      case PerkeretaapianEnum.agregat:
        return 0;
      case PerkeretaapianEnum.wilayah:
        return 1;
      case PerkeretaapianEnum.simpul:
        return 2;
      case PerkeretaapianEnum.od:
        return 3;
      case PerkeretaapianEnum.operator:
        return 4;
      case PerkeretaapianEnum.kecelakaan:
        return 5;
      case PerkeretaapianEnum.kejadianMenonjol:
        return 6;
    }
  }
}
