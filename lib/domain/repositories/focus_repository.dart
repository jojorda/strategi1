import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:strategi_hub_app/core/base/network_status_notifier.dart';
import 'package:strategi_hub_app/data/local/local_storage_service.dart';
import 'package:strategi_hub_app/data/models/request/pending_request.dart';
import 'package:strategi_hub_app/domain/entities/focus.dart';
import 'package:strategi_hub_app/domain/mappers/focus.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

class FocusRepository {
  final StrategiMobileApi _strategiMobileApi;
  final LocalStorageService _localStorageService;

  FocusRepository(this._strategiMobileApi, this._localStorageService);

  Future<FocusData> getFokus(
    String? tanggalAwal1,
    String? tanggalAkhir1,
    String? event,
  ) async {
    final key =
        'fokus${event != null ? '_$event' : ''}${tanggalAwal1 != null ? '_$tanggalAwal1' : ''}${tanggalAkhir1 != null ? '_$tanggalAkhir1' : ''}';
    try {
      final response = await _strategiMobileApi.getFocusApi().focusGet(
            event: event,
            tanggalAkhir1: tanggalAkhir1,
            tanggalAwal1: tanggalAwal1,
          );

      final data = response.data?.data;
      if (data == null) {
        throw Exception('Failed to fetch fokus: response is empty');
      }
      final result = FocusMapper().convert<Focus, FocusData>(data);

      await _localStorageService.setObject<FocusData>(
        key,
        result.toJson(),
      );

      return result;
    } catch (e) {
      final localData = _localStorageService.getObject<FocusData>(
        key,
        FocusData.fromJson,
      );
      if (localData != null) {
        return localData;
      }
      throw Exception('Failed to fetch fokus: ${e.toString()}');
    }
  }

  Future<bool> createFocus(CreateFocusRequest focus,
      {int retryCount = 0}) async {
    try {
      await _strategiMobileApi
          .getFocusApi()
          .focusPost(createFocusRequest: focus);
      return true;
    } catch (e) {
      if (Get.context != null) {
        final isConnected =
            Provider.of<NetworkStatusNotifier>(Get.context!, listen: false)
                .isConnected;
        if (!isConnected && retryCount < 3) {
          List<PendingRequest>? existingPending =
              _localStorageService.getList<PendingRequest>(
            'pending_post_request',
            PendingRequest.fromJson,
          );

          existingPending = (existingPending ?? <PendingRequest>[])
            ..add(
              PendingRequest(
                type: 'focus',
                request: focus,
                retryCount: retryCount + 1,
              ),
            );

          try {
            await _localStorageService.setList<PendingRequest>(
              'pending_post_request',
              existingPending,
              (e) => e.toJson(),
            );
            return true;
          } catch (e) {
            throw Exception('Failed to create posko: $e');
          }
        }
      }
      throw Exception('Failed to create fokus: ${e.toString()}');
    }
  }
}
