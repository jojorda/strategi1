import 'package:strategi_hub_app/data/local/local_storage_service.dart';
import 'package:strategi_hub_app/data/models/request/cctv_request.dart';
import 'package:strategi_hub_app/domain/entities/cctv_data.dart';
import 'package:strategi_hub_app/domain/entities/stream.dart';
import 'package:strategi_hub_app/domain/mappers/cctv.dart';
import 'package:strategi_hub_app/domain/mappers/stream.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

class CctvRepository {
  final StrategiMobileApi _strategiMobileApi;
  final LocalStorageService _localStorageService;
  CctvRepository(this._strategiMobileApi, this._localStorageService);

  Stream<List<CctvData>?> getCCTV(CctvRequest request) async* {
    final key = 'cctv_list_${request.toJson()}';
    try {
      final localCctvData = _localStorageService.getList<CctvData>(
        key,
        CctvData.fromJson,
      );
      if (localCctvData != null) {
        yield localCctvData;
      }

      final cctv = _strategiMobileApi.getCCTVApi();
      final response = await cctv.cctvGet(
        matra: request.mode,
        namaProvinsi: request.provinceName,
        namaKabupatenKota: request.cityName,
        search: request.search,
      );

      var data = CctvMapper()
          .convertList<CctvGet200ResponseDataInner, CctvData>(
              response.data?.data ?? []);

      await _localStorageService.setList<CctvData>(
        key,
        data,
        (e) => e.toJson(),
      );

      yield data;
    } catch (e) {
      yield null;
    }
  }

  Future<List<StreamData>?> getLiputan(CctvRequest request) async {
    try {
      final coverageApi = _strategiMobileApi.getCoverageApi();
      final response = await coverageApi.coverageGet();
      return StreamMapper()
          .convertList<Streaming, StreamData>(response.data?.data ?? []);
    } catch (e) {
      throw Exception('Failed to fetch province: ${e.toString()}');
    }
  }
}
