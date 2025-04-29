enum ModaType { all, jalan, laut, asdp, arteri, udara, stasiun, toll }

extension ModaTypeExtension on ModaType {
  String getModaName() {
    switch (this) {
      case ModaType.udara:
        return "Angkutan Udara";
      case ModaType.asdp:
        return "Angkutan Penyebrangan";
      case ModaType.laut:
        return "Angkutan Laut";
      case ModaType.stasiun:
        return "Angkutan Perkeretaapian";
      case ModaType.jalan:
        return "Angkutan Jalan";
      default:
        return "Semua";
    }
  }

  static ModaType getModaType(String modaName) {
    switch (modaName) {
      case "Angkutan Udara":
        return ModaType.udara;
      case "Angkutan Penyebrangan":
        return ModaType.asdp;
      case "Angkutan Laut":
        return ModaType.laut;
      case "Angkutan Perkeretaapian":
        return ModaType.stasiun;
      case "Angkutan Jalan":
        return ModaType.jalan;
      default:
        return ModaType.all;
    }
  }
}
