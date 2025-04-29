import 'package:strategi_hub_app/constant/enum/arteri_enum.dart';
import 'package:strategi_hub_app/constant/enum/jalan_enum.dart';
import 'package:strategi_hub_app/constant/enum/laut_enum.dart';
import 'package:strategi_hub_app/constant/enum/menu_enum.dart';
import 'package:strategi_hub_app/constant/enum/penyebrangan_enum.dart';
import 'package:strategi_hub_app/constant/enum/perkeretaapian_enum.dart';
import 'package:strategi_hub_app/constant/enum/tol_enum.dart';
import 'package:strategi_hub_app/constant/enum/udara_enum.dart';

class MainMenuArgument {
  MenuEnum menuEnum;
  JalanEnum? jalanEnum;
  PenyebranganEnum? penyebranganEnum;
  PerkeretaapianEnum? perkeretaapianEnum;
  UdaraEnum? udaraEnum;
  TolEnum? tolEnum;
  ArteriEnum? arteriEnum;
  LautEnum? lautEnum;

  MainMenuArgument({
    required this.menuEnum,
    this.jalanEnum,
    this.penyebranganEnum,
    this.perkeretaapianEnum,
    this.udaraEnum,
    this.tolEnum,
    this.arteriEnum,
    this.lautEnum,
  });
}
