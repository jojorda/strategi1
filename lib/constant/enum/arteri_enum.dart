enum ArteriEnum {
  agregat,
  wilayah,
  od,
  operator,
  kecelakaan,
  kejadianMenonjol,
}

class ArteriEnumValue {
  static int toIndex(ArteriEnum type) {
    switch (type) {
      case ArteriEnum.agregat:
        return 0;
      case ArteriEnum.wilayah:
        return 1;
      case ArteriEnum.od:
        return 2;
      case ArteriEnum.operator:
        return 3;
      case ArteriEnum.kecelakaan:
        return 4;
      case ArteriEnum.kejadianMenonjol:
        return 5;
    }
  }
}
