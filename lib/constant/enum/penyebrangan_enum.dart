enum PenyebranganEnum {
  agregat,
  wilayah,
  simpul,
  od,
  operator,
  kecelakaan,
  kejadianMenonjol,
}

class PenyebranganEnumValue {
  static int toIndex(PenyebranganEnum type) {
    switch (type) {
      case PenyebranganEnum.agregat:
        return 0;
      case PenyebranganEnum.wilayah:
        return 1;
      case PenyebranganEnum.simpul:
        return 2;
      case PenyebranganEnum.od:
        return 3;
      case PenyebranganEnum.operator:
        return 4;
      case PenyebranganEnum.kecelakaan:
        return 5;
      case PenyebranganEnum.kejadianMenonjol:
        return 6;
    }
  }
}
