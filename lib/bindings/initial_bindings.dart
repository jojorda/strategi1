import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:requests_inspector/requests_inspector.dart';
import 'package:strategi_hub_app/core/interceptor/auth_interceptor.dart';
import 'package:strategi_hub_app/data/local/local_storage_service.dart';
import 'package:strategi_hub_app/data/remote/auth_remote_source.dart';
import 'package:strategi_hub_app/data/remote/cctv_remote_source.dart';
import 'package:strategi_hub_app/data/remote/hubnet_remote_source.dart';
import 'package:strategi_hub_app/data/remote/moda_remote_source.dart';
import 'package:strategi_hub_app/data/remote/news_remote_source.dart';
import 'package:strategi_hub_app/data/remote/strategi_doc_remote_source.dart';
import 'package:strategi_hub_app/data/remote/strategi_remote_source.dart';
import 'package:strategi_hub_app/domain/repositories/auth_repository.dart';
import 'package:strategi_hub_app/domain/repositories/cctv_repository.dart';
import 'package:strategi_hub_app/domain/repositories/focus_repository.dart';
import 'package:strategi_hub_app/domain/repositories/master_repository.dart';
import 'package:strategi_hub_app/domain/repositories/moda_repository.dart';
import 'package:strategi_hub_app/domain/repositories/news_repository.dart';
import 'package:strategi_hub_app/domain/repositories/posko_repository.dart';
import 'package:strategi_hub_app/domain/repositories/report_repository.dart';
import 'package:strategi_hub_app/domain/repositories/strategi_repository.dart';
import 'package:strategi_hub_app/domain/repositories/thirty_second_repository.dart';
import 'package:strategi_hub_app/modules/arteri/controllers/arteri_controller.dart';
import 'package:strategi_hub_app/modules/cctv/controllers/cctv_controller.dart';
import 'package:strategi_hub_app/modules/fokus/controllers/fokus_controller.dart';
import 'package:strategi_hub_app/modules/fokus/controllers/fokus_input_controller.dart';
import 'package:strategi_hub_app/modules/home/controllers/home_controller.dart';
import 'package:strategi_hub_app/modules/index/controllers/index_controller.dart';
import 'package:strategi_hub_app/modules/jalan/Korlantas/controllers/jalan_korlantas_controller.dart';
import 'package:strategi_hub_app/modules/jalan/controllers/jalan_controller.dart';
import 'package:strategi_hub_app/modules/jalan/kecelakaan/controller/detail_kecelakaan_controller.dart';
import 'package:strategi_hub_app/modules/jalan/od/controllers/jalan_od_detail_controller.dart';
import 'package:strategi_hub_app/modules/jalan/operator/controllers/jalan_operator_controller.dart';
import 'package:strategi_hub_app/modules/jalan/wilayah/controllers/detail_kota_controller.dart';
import 'package:strategi_hub_app/modules/jalan/wilayah/controllers/detail_prov_controller.dart';
import 'package:strategi_hub_app/modules/laporan/controllers/add_laporan_controller.dart';
import 'package:strategi_hub_app/modules/laporan/controllers/approval_laporan_controller.dart';
import 'package:strategi_hub_app/modules/laporan/controllers/detail_laporan_controller.dart';
import 'package:strategi_hub_app/modules/laporan/controllers/kinerja_laporan_controller.dart';
import 'package:strategi_hub_app/modules/komparasi/controllers/komparasi_controller.dart';
import 'package:strategi_hub_app/modules/laporan/controllers/laporan_controller.dart';
import 'package:strategi_hub_app/modules/laporan/controllers/status_laporan_controller.dart';
import 'package:strategi_hub_app/modules/laut/controllers/laut_controller.dart';
import 'package:strategi_hub_app/modules/laut/od/controllers/laut_od_controller.dart';
import 'package:strategi_hub_app/modules/laut/operator/controllers/laut_operator_controller.dart';
import 'package:strategi_hub_app/modules/laut/wilayah/controllers/detail_maps_controller.dart';
import 'package:strategi_hub_app/modules/liputan/controllers/liputan_controller.dart';
import 'package:strategi_hub_app/modules/main_menu/controllers/main_menu_controller.dart';
import 'package:strategi_hub_app/modules/penyeberangan/controllers/penyeberangan_controller.dart';
import 'package:strategi_hub_app/modules/penyeberangan/od/controllers/penyeberangan_od_detail_controller.dart';
import 'package:strategi_hub_app/modules/penyeberangan/operator/controllers/penyeberangan_operator_controller.dart';
import 'package:strategi_hub_app/modules/perkeretaapian/controllers/perkeretaapian_controller.dart';
import 'package:strategi_hub_app/modules/perkeretaapian/od/controllers/detail_perkeretaapian_od_controller.dart';
import 'package:strategi_hub_app/modules/perkeretaapian/operator/controllers/perkeretaapian_operator_controller.dart';
import 'package:strategi_hub_app/modules/posko/controllers/posko_controller.dart';
import 'package:strategi_hub_app/modules/posko/controllers/posko_detail_controller.dart';
import 'package:strategi_hub_app/modules/posko/controllers/register_posko_controller.dart';
import 'package:strategi_hub_app/modules/settings/controller/setting_controller.dart';
import 'package:strategi_hub_app/modules/thirty_second/controller/thirty_second_controller.dart';
import 'package:strategi_hub_app/modules/tol/controllers/tol_controller.dart';
import 'package:strategi_hub_app/modules/tol/operator/controllers/tol_operator_controller.dart';
import 'package:strategi_hub_app/modules/udara/controllers/udara_controller.dart';
import 'package:strategi_hub_app/modules/udara/od/controllers/udara_od_detail_controller.dart';
import 'package:strategi_hub_app/modules/udara/operator/controllers/udara_operator_controller.dart';
import 'package:strategi_hub_app/modules/welcome/controllers/login_controller.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    // Remote sources
    Get.lazyPut(() => AuthRemoteSource(), fenix: true);
    Get.lazyPut(() => NewsRemoteSource(), fenix: true);
    Get.lazyPut(() => ModaRemoteSource(), fenix: true);
    Get.lazyPut(() => StrategiRemoteSource(), fenix: true);
    Get.lazyPut(() => StrategiDocRemoteSource(), fenix: true);
    Get.lazyPut(() => HubnetRemoteSource(), fenix: true);
    Get.lazyPut(() => CCTVRemoteSource(), fenix: true);

    // Open Api client
    Get.lazyPut(
      () {
        String? baseUrl = dotenv.env['API_URL'];
        final api = StrategiMobileApi(
          dio: Dio(
            BaseOptions(
              baseUrl: baseUrl ?? '',
              connectTimeout: const Duration(seconds: 180),
              receiveTimeout: const Duration(seconds: 180),
            ),
          ),
          interceptors: [
            AuthInterceptor(
              baseUrl: baseUrl ?? '',
              localStorageService: Get.find<LocalStorageService>(),
            ),
            RequestsInspectorInterceptor(),
          ],
        );
        return api;
      },
      fenix: true,
    );

    // Repositories
    Get.lazyPut(
      () => AuthRepository(
        Get.find<AuthRemoteSource>(),
        Get.find<LocalStorageService>(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => NewsRepository(
        Get.find<NewsRemoteSource>(),
        Get.find<StrategiMobileApi>(),
        Get.find<LocalStorageService>(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => ModaRepository(
        Get.find<ModaRemoteSource>(),
        Get.find<StrategiMobileApi>(),
        Get.find<LocalStorageService>(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => StrategiRepository(
        Get.find<StrategiRemoteSource>(),
        Get.find<HubnetRemoteSource>(),
        Get.find<LocalStorageService>(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => CctvRepository(
        Get.find<StrategiMobileApi>(),
        Get.find<LocalStorageService>(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => PoskoRepository(
        Get.find<StrategiMobileApi>(),
        Get.find<LocalStorageService>(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => FocusRepository(
        Get.find<StrategiMobileApi>(),
        Get.find<LocalStorageService>(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => ThirtySecondRepository(
        Get.find<StrategiMobileApi>(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => ReportRepository(
        Get.find<StrategiMobileApi>(),
        Get.find<LocalStorageService>(),
        Get.find<StrategiDocRemoteSource>(),
      ),
      fenix: true,
    );
    Get.lazyPut(
        () => MasterRepository(
              Get.find<StrategiMobileApi>(),
              Get.find<LocalStorageService>(),
            ),
        fenix: true);

    // Controllers
    Get.lazyPut(() => IndexController(), fenix: true);
    Get.lazyPut(() => LoginController(Get.find<AuthRepository>()), fenix: true);
    Get.lazyPut(
      () => HomeController(
        Get.find<NewsRepository>(),
        Get.find<ModaRepository>(),
        Get.find<StrategiRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<SettingController>(
      () => SettingController(
        Get.find<AuthRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<JalanController>(
      () => JalanController(
        Get.find<ModaRepository>(),
        Get.find<StrategiRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<JalanOperatorController>(
      () => JalanOperatorController(
        Get.find<ModaRepository>(),
        Get.find<StrategiRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<JalanOdDetailController>(
      () => JalanOdDetailController(
        Get.find<ModaRepository>(),
        Get.find<StrategiRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => LaporanController(
        Get.find<ReportRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => DetailIncidentController(
        Get.find<ModaRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => DetailLaporanController(
        Get.find<ReportRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<PenyeberanganController>(
      () => PenyeberanganController(
        Get.find<ModaRepository>(),
        Get.find<StrategiRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<PenyeberanganOperatorController>(
      () => PenyeberanganOperatorController(
        Get.find<ModaRepository>(),
        Get.find<StrategiRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<PenyeberanganOdDetailController>(
      () => PenyeberanganOdDetailController(
        Get.find<ModaRepository>(),
        Get.find<StrategiRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<PerkeretaapianController>(
      () => PerkeretaapianController(
        Get.find<ModaRepository>(),
        Get.find<StrategiRepository>(),
        Get.find<PerkeretaapianOperatorController>(),
      ),
      fenix: true,
    );
    Get.lazyPut<PerkeretaapianOdDetailController>(
      () => PerkeretaapianOdDetailController(
        Get.find<ModaRepository>(),
        Get.find<StrategiRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<PerkeretaapianOperatorController>(
      () => PerkeretaapianOperatorController(
        Get.find<ModaRepository>(),
        Get.find<StrategiRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => DetailProvController(
        Get.find<ModaRepository>(),
        Get.find<StrategiRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<UdaraController>(
      () => UdaraController(Get.find<ModaRepository>(),
          Get.find<StrategiRepository>(), Get.find<UdaraOperatorController>()),
      fenix: true,
    );

    Get.lazyPut<UdaraOperatorController>(
      () => UdaraOperatorController(
        Get.find<ModaRepository>(),
        Get.find<StrategiRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<KomparasiController>(
      () => KomparasiController(
        Get.find<StrategiRepository>(),
        Get.find<ModaRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<DetailMapsController>(
      () => DetailMapsController(),
      fenix: true,
    );
    Get.lazyPut<UdaraOdDetailController>(
      () => UdaraOdDetailController(
        Get.find<ModaRepository>(),
        Get.find<StrategiRepository>(),
      ),
      fenix: true,
    );

    Get.lazyPut<LautController>(
      () => LautController(
        Get.find<ModaRepository>(),
        Get.find<StrategiRepository>(),
      ),
      fenix: true,
    );

    Get.lazyPut<LautOperatorController>(
      () => LautOperatorController(
        Get.find<ModaRepository>(),
        Get.find<StrategiRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<LautOdController>(
      () => LautOdController(
        Get.find<ModaRepository>(),
        Get.find<StrategiRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<CctvController>(
      () => CctvController(
        Get.find<CctvRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<TolController>(
      () => TolController(
        Get.find<ModaRepository>(),
        Get.find<StrategiRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<TolOperatorController>(
      () => TolOperatorController(
        Get.find<ModaRepository>(),
        Get.find<StrategiRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<PoskoController>(
      () => PoskoController(
        Get.find<PoskoRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<PoskoDetailController>(
      () => PoskoDetailController(
        Get.find<PoskoRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<FokusController>(
      () => FokusController(
        Get.find<ModaRepository>(),
        Get.find<FocusRepository>(),
        Get.find<CctvRepository>(),
        Get.find<StrategiRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<FokusInputController>(
      () => FokusInputController(
        Get.find<ModaRepository>(),
        Get.find<FocusRepository>(),
        Get.find<CctvRepository>(),
        Get.find<StrategiRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<ThirtySecondController>(
      () => ThirtySecondController(
        Get.find<ThirtySecondRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<RegisterPoskoController>(
      () => RegisterPoskoController(
        Get.find<PoskoRepository>(),
        Get.find<StrategiRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<LiputanController>(
      () => LiputanController(
        Get.find<CctvRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<ArteriController>(
      () => ArteriController(
        Get.find<ModaRepository>(),
        Get.find<StrategiRepository>(),
      ),
      fenix: true,
    );

    Get.lazyPut<KinerjaLaporanController>(
      () => KinerjaLaporanController(
        Get.find<ReportRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<AddLaporanController>(
      () => AddLaporanController(
        Get.find<ReportRepository>(),
        Get.find<MasterRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<DetailKotaController>(
      () => DetailKotaController(
        Get.find<ModaRepository>(),
        Get.find<StrategiRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut<ApprovalLaporanController>(
      () => ApprovalLaporanController(
        Get.find<ReportRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => StatusLaporanController(
        Get.find<StrategiRepository>(),
        Get.find<ReportRepository>(),
      ),
      fenix: true,
    );
    Get.lazyPut(
      () => JalanKorlantasController(),
      fenix: true,
    );
  }
}
