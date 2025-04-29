import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:strategi_hub_app/core/base/base_provider.dart';
import 'package:strategi_hub_app/core/constants/endpoints.dart';
import 'package:strategi_hub_app/data/models/enum/event_type.dart';
import 'package:strategi_hub_app/data/models/response/event_response.dart';
import 'package:strategi_hub_app/data/models/response/pantau_response.dart';
import 'package:strategi_hub_app/data/models/response/province_response.dart';

class StrategiRemoteSource extends ApiProvider {
  @override
  void onInit() {
    super.onInit();

    httpClient.baseUrl = dotenv.env['STRATEGI_API_URL'];
  }

  Future<List<EventResponse>> getEvent(
    EventType type,
  ) async {
    try {
      final String url = switch (type) {
        EventType.all => Endpoints.getEvent,
        EventType.jalan => Endpoints.getEventJalan,
        EventType.asdp => Endpoints.getEventAsdp,
        EventType.stasiun => Endpoints.getEventStasiun,
        EventType.toll => Endpoints.getEventToll,
        EventType.arteri => Endpoints.getEventArteri,
        EventType.laut => Endpoints.getEventLaut,
        EventType.udara => Endpoints.getEventUdara,
      };

      final response = await post(url, {});
      if (response.status.hasError) {
        throw Exception(response.statusText!);
      }

      final List<dynamic> data = response.body['data'];

      return data.map((e) => EventResponse.fromJson(e)).toList();
    } catch (e) {
      throw Exception('Failed to fetch summary: ${e.toString()}');
    }
  }

  Future<List<ProvinceResponse>> getProvince() async {
    try {
      final response = await post(Endpoints.getProvince, {});
      if (response.status.hasError) {
        throw Exception(response.statusText!);
      }

      final List<dynamic> data = response.body['data'];

      return data.map((e) => ProvinceResponse.fromJson(e)).toList();
    } catch (e) {
      throw Exception('Failed to fetch summary: ${e.toString()}');
    }
  }

  Future<List<PantauResponse>> getDataPantau() async {
    try {
      final response = await post(Endpoints.getDataPantau, {});
      if (response.status.hasError) {
        throw Exception(response.statusText!);
      }

      final List<dynamic> data = response.body['data'];

      return data.map((e) => PantauResponse.fromJson(e)).toList();
    } catch (e) {
      throw Exception('Failed to fetch summary: ${e.toString()}');
    }
  }
}
