enum MenuEnum {
  komparasi,
  fokus,
  jalan,
  penyeberangan,
  laut,
  udara,
  perkeretaapian,
  tol,
  arteri,
  cctv,
  liputan,
  thirtySecond,
}

class MenuEnumValue {
  static int toIndex(MenuEnum type) {
    switch (type) {
      case MenuEnum.komparasi:
        return 0;
      case MenuEnum.fokus:
        return 1;
      case MenuEnum.jalan:
        return 2;
      case MenuEnum.penyeberangan:
        return 3;
      case MenuEnum.laut:
        return 4;
      case MenuEnum.udara:
        return 5;
      case MenuEnum.perkeretaapian:
        return 6;
      case MenuEnum.tol:
        return 7;
      case MenuEnum.arteri:
        return 8;
      case MenuEnum.cctv:
        return 9;
      case MenuEnum.liputan:
        return 10;
      case MenuEnum.thirtySecond:
        return 11;
    }
  }
}
