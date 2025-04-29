import 'package:get/get.dart';
import 'package:strategi_hub_app/components/Fokus/input_fokus_screen.dart';
import 'package:strategi_hub_app/components/Posko/posko_screen.dart';
import 'package:strategi_hub_app/components/Posko/register_posko_screen.dart';
import 'package:strategi_hub_app/core/middleware/auth_middleware.dart';
import 'package:strategi_hub_app/data/local/local_storage_service.dart';
import 'package:strategi_hub_app/modules/arteri/od/views/detail_arteri_od_page.dart';
import 'package:strategi_hub_app/modules/cctv/views/detail_cctv_page.dart';
import 'package:strategi_hub_app/modules/fokus/views/fokus_page.dart';
import 'package:strategi_hub_app/modules/index/views/index_page.dart';
import 'package:strategi_hub_app/modules/jalan/kecelakaan/views/detail_kecelakaan.dart';
import 'package:strategi_hub_app/modules/jalan/od/views/detail_jalan_od_page.dart';
import 'package:strategi_hub_app/modules/jalan/operator/views/detail_jalan_operator_page.dart';
import 'package:strategi_hub_app/modules/jalan/operator/views/origin_destination_page.dart';
import 'package:strategi_hub_app/modules/jalan/operator/views/perizinan_page.dart';
import 'package:strategi_hub_app/modules/jalan/operator/views/sarana_page.dart';
import 'package:strategi_hub_app/modules/jalan/wilayah/views/detail_kota_page.dart';
import 'package:strategi_hub_app/modules/jalan/wilayah/views/detail_prov_page.dart';
import 'package:strategi_hub_app/modules/komparasi/views/komparasi_page.dart';
import 'package:strategi_hub_app/modules/laporan/views/add_laporan_mingguan_page.dart';
import 'package:strategi_hub_app/modules/laporan/views/add_laporan_page.dart';
import 'package:strategi_hub_app/modules/laporan/views/add_laporan_piket_page.dart';
import 'package:strategi_hub_app/modules/laporan/views/add_laporan_posko_page.dart';
import 'package:strategi_hub_app/modules/laporan/views/approval_laporan_page.dart';
import 'package:strategi_hub_app/modules/laporan/views/detail_approval_laporan_page.dart';
import 'package:strategi_hub_app/modules/laporan/views/detail_laporan_page.dart';
import 'package:strategi_hub_app/modules/laporan/views/detail_laporan_piketIm_page.dart';
import 'package:strategi_hub_app/modules/laporan/views/edit_laporan_page.dart';
import 'package:strategi_hub_app/modules/laporan/views/laporan_page.dart';
import 'package:strategi_hub_app/modules/laporan/views/laporan_pdf_page.dart';
import 'package:strategi_hub_app/modules/laporan/views/status_laporan.dart';
import 'package:strategi_hub_app/modules/laut/od/views/detail_laut_od_page.dart';
import 'package:strategi_hub_app/modules/laut/operator/views/detail_laut_operator_page.dart';
import 'package:strategi_hub_app/modules/laut/wilayah/views/detail_maps_page.dart';
import 'package:strategi_hub_app/modules/login/views/login_page.dart';
import 'package:strategi_hub_app/modules/main_menu/views/main_menu_page.dart';
import 'package:strategi_hub_app/modules/penyeberangan/od/views/detail_penyeberangan_od_page.dart';
import 'package:strategi_hub_app/modules/penyeberangan/operator/views/detail_penyeberangan_operator_page.dart';
import 'package:strategi_hub_app/modules/penyeberangan/operator/views/penyeberangan_origin_destination_page.dart';
import 'package:strategi_hub_app/modules/penyeberangan/operator/views/penyeberangan_perizinan_page.dart';
import 'package:strategi_hub_app/modules/penyeberangan/operator/views/penyeberangan_sarana_page.dart';
import 'package:strategi_hub_app/modules/perkeretaapian/od/views/detail_perkeretaapian_od_page.dart';
import 'package:strategi_hub_app/modules/perkeretaapian/operator/views/detail_perkeretaapian_operator_page.dart';
import 'package:strategi_hub_app/modules/perkeretaapian/operator/views/perkeretaapian_origin_destination_page.dart';
import 'package:strategi_hub_app/modules/perkeretaapian/operator/views/perkeretaapian_perizinan_page.dart';
import 'package:strategi_hub_app/modules/perkeretaapian/operator/views/perkeretaapian_sarana_page.dart';
import 'package:strategi_hub_app/modules/posko/views/posko_detail_screen.dart';
import 'package:strategi_hub_app/modules/tol/operator/views/detail_tol_operator_page.dart';
import 'package:strategi_hub_app/modules/udara/od/views/detail_udara_od_page.dart';
import 'package:strategi_hub_app/modules/udara/operator/views/detail_udara_operator_page.dart';
import 'package:strategi_hub_app/modules/udara/operator/views/udara_origin_destination_page.dart';
import 'package:strategi_hub_app/modules/udara/operator/views/udara_perizinan_page.dart';
import 'package:strategi_hub_app/modules/udara/operator/views/udara_sarana_page.dart';
import 'package:strategi_hub_app/modules/welcome/views/sso_page.dart';
import 'package:strategi_hub_app/modules/welcome/views/welcome_page.dart';

class AppRoutes {
  static final pages = [
    GetPage(
      name: WelcomePage.routeName,
      page: () => const WelcomePage(),
      children: [
        GetPage(
          name: SSOLoginPage.routeName,
          page: () => const SSOLoginPage(),
        ),
      ],
    ),
    GetPage(
      name: LoginPage.routeName,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: IndexPage.routeName,
      page: () => const IndexPage(),
      middlewares: [
        AuthMiddleware(
          Get.find<LocalStorageService>(),
        )
      ],
    ),
    GetPage(
      name: MainMenuPage.routeName,
      page: () => MainMenuPage(
        menuArgument: Get.arguments,
      ),
    ),
    GetPage(
      name: DetailProvPage.routeName,
      page: () => DetailProvPage(),
    ),

    GetPage(
      name: DetailKotaPage.routeName,
      page: () => DetailKotaPage(),
    ),
    GetPage(
      name: DetailMapsPage.routeName,
      page: () => DetailMapsPage(),
    ),
    GetPage(
      name: KomparasiPage.routeName,
      page: () => const KomparasiPage(),
    ),
    GetPage(
      name: FokusPage.routeName,
      page: () => const FokusPage(),
    ),

    GetPage(
      name: InputFokusScreen.routeName,
      page: () => InputFokusScreen(),
    ),

    // ========= LAPORAN ==========
    GetPage(
      name: LaporanPage.routeName,
      page: () => const LaporanPage(),
    ),
    GetPage(
      name: DetailLaporanPage.routeName,
      page: () => const DetailLaporanPage(),
    ),
    GetPage(
      name: DetailLaporanPiketIMPage.routeName,
      page: () => const DetailLaporanPiketIMPage(),
    ),
    GetPage(
      name: EditLaporanPage.routeName,
      page: () => const EditLaporanPage(),
    ),
    GetPage(
      name: LaporanPdfPage.routeName,
      page: () => const LaporanPdfPage(),
    ),
    GetPage(
      name: ApprovalLaporanPage.routeName,
      page: () => const ApprovalLaporanPage(),
    ),
    GetPage(
      name: DetailApprovalLaporanPage.routeName,
      page: () => const DetailApprovalLaporanPage(),
    ),
    GetPage(
      name: AddLaporanPage.routeName,
      page: () => const AddLaporanPage(),
    ),
    GetPage(
      name: AddLaporanMingguanPage.routeName,
      page: () => const AddLaporanMingguanPage(),
    ),
    GetPage(
      name: AddLaporanPiketPage.routeName,
      page: () => const AddLaporanPiketPage(),
    ),
    GetPage(
      name: AddLaporanPoskoPage.routeName,
      page: () => const AddLaporanPoskoPage(),
    ),
    GetPage(
      name: StatusPelaporanScreen.routeName,
      page: () => StatusPelaporanScreen(),
    ),

    GetPage(
      name: DetailCctvPage.routeName,
      page: () => const DetailCctvPage(),
    ),

    // JALAN OPERATOR
    GetPage(
      name: DetailJalanOperatorPage.routeName,
      page: () => const DetailJalanOperatorPage(),
    ),
    GetPage(
      name: SaranaPage.routeName,
      page: () => const SaranaPage(),
    ),
    GetPage(
      name: PerizinanPage.routeName,
      page: () => const PerizinanPage(),
    ),
    GetPage(
      name: OriginDestinationPage.routeName,
      page: () => const OriginDestinationPage(),
    ),
    GetPage(
      name: DetailJalanOdPage.routeName,
      page: () => const DetailJalanOdPage(),
    ),

    GetPage(
      name: AccidentReportPage.routeName,
      page: () => AccidentReportPage(),
      arguments: Get.arguments,
    ),

    // LAUT
    GetPage(
      name: DetailLautOperatorPage.routeName,
      page: () => const DetailLautOperatorPage(),
    ),
    // GetPage(
    //   name: SaranaPage.routeName,
    //   page: () => const SaranaPage(),
    // ),
    // GetPage(
    //   name: PerizinanPage.routeName,
    //   page: () => const PerizinanPage(),
    // ),
    GetPage(
      name: OriginDestinationPage.routeName,
      page: () => const OriginDestinationPage(),
    ),
    GetPage(
      name: DetailLautOdPage.routeName,
      page: () => const DetailLautOdPage(),
    ),

    // TOL
    GetPage(
      name: DetailTolOperatorPage.routeName,
      page: () => const DetailTolOperatorPage(),
    ),

// ========== UDARA =========

    // JALAN OPERATOR
    GetPage(
      name: DetailUdaraOperatorPage.routeName,
      page: () => const DetailUdaraOperatorPage(),
    ),
    GetPage(
      name: UdaraSaranaPage.routeName,
      page: () => const UdaraSaranaPage(),
    ),
    GetPage(
      name: UdaraPerizinanPage.routeName,
      page: () => const UdaraPerizinanPage(),
    ),
    GetPage(
      name: UdaraOriginDestinationPage.routeName,
      page: () => const UdaraOriginDestinationPage(),
    ),
    GetPage(
      name: DetailUdaraOdPage.routeName,
      page: () => const DetailUdaraOdPage(),
    ),

    // ========== PENYEBRANGAN =========
    GetPage(
      name: DetailPenyeberanganOperatorPage.routeName,
      page: () => const DetailPenyeberanganOperatorPage(),
    ),
    GetPage(
      name: PenyeberanganSaranaPage.routeName,
      page: () => const PenyeberanganSaranaPage(),
    ),
    GetPage(
      name: PenyeberanganPerizinanPage.routeName,
      page: () => const PenyeberanganPerizinanPage(),
    ),
    GetPage(
      name: PenyeberanganOriginDestinationPage.routeName,
      page: () => const PenyeberanganOriginDestinationPage(),
    ),
    GetPage(
      name: DetailPenyeberanganOdPage.routeName,
      page: () => const DetailPenyeberanganOdPage(),
    ),

    // ========== PERKERETAAPIAN =========
    GetPage(
      name: DetailPerkeretaapianOperatorPage.routeName,
      page: () => const DetailPerkeretaapianOperatorPage(),
    ),
    GetPage(
      name: PerkeretaapianSaranaPage.routeName,
      page: () => const PerkeretaapianSaranaPage(),
    ),
    GetPage(
      name: PerkeretaapianPerizinanPage.routeName,
      page: () => const PerkeretaapianPerizinanPage(),
    ),
    GetPage(
      name: PerkeretaapianOriginDestinationPage.routeName,
      page: () => const PerkeretaapianOriginDestinationPage(),
    ),
    GetPage(
      name: DetailPerkeretaapianOdPage.routeName,
      page: () => const DetailPerkeretaapianOdPage(),
    ),

    // ========== ARTERI =========
    GetPage(
      name: DetailArteriOdPage.routeName,
      page: () => const DetailArteriOdPage(),
    ),
    GetPage(
      name: DetailArteriOdPage.routeName,
      page: () => const DetailArteriOdPage(),
    ),

    // ========= POSKO ==========
    GetPage(
      name: PoskoScreen.routeName,
      page: () => const PoskoScreen(),
    ),
    GetPage(
      name: RegisterPoskoScreen.routeName,
      page: () => const RegisterPoskoScreen(),
    ),
    GetPage(
      name: PoskoDetailScreen.routeName,
      page: () => PoskoDetailScreen(),
      arguments: Get.arguments,
    ),
  ];
}
