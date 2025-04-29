import 'package:built_collection/built_collection.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:strategi_hub_app/core/base/network_status_notifier.dart';
import 'package:strategi_hub_app/data/local/local_storage_service.dart';
import 'package:strategi_hub_app/data/models/request/pending_request.dart';
import 'package:strategi_hub_app/domain/entities/posko.dart' as domain;
import 'package:strategi_hub_app/domain/mappers/posko.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

class PoskoRepository {
  final StrategiMobileApi _strategiMobileApi;
  final LocalStorageService _localStorageService;

  PoskoRepository(this._strategiMobileApi, this._localStorageService);

  Future<domain.PaginatedPosko> getPaginatedPosko({
    int? page,
    int? limit,
    int? idJenisPosko,
    String? namaPosko,
    String? idEvent,
    Date? masaPantau,
  }) async {
    final key =
        'posko_${page}_${limit}_${idJenisPosko != null ? '_$idJenisPosko' : ''}${namaPosko != null ? '_$namaPosko' : ''}${idEvent != null ? '_$idEvent' : ''}${masaPantau != null ? '_$masaPantau' : ''}';
    try {
      final poskoApi = _strategiMobileApi.getPoskoApi();
      final response = await poskoApi.poskoGet(
        page: page,
        limit: limit,
        idJenisPosko: idJenisPosko,
        namaPosko: namaPosko,
        idEvent: idEvent,
      );
      final result = PoskoMapper()
          .convert<PaginatedPoskoResponse, domain.PaginatedPosko>(
              response.data);

      await _localStorageService.setObject<domain.PaginatedPosko>(
        key,
        result.toJson(),
      );
      return result;
    } catch (e) {
      final localData = _localStorageService.getObject<domain.PaginatedPosko>(
        key,
        domain.PaginatedPosko.fromJson,
      );
      if (localData != null) {
        return localData;
      }
      throw Exception('Failed to get posko: $e');
    }
  }

  Future<domain.Posko?> getPoskoDetail(int id) async {
    final key = 'posko_detail_$id';
    try {
      final poskoApi = _strategiMobileApi.getPoskoApi();
      final response = await poskoApi.poskoIdGet(id: id);
      final result =
          PoskoMapper().convert<Posko, domain.Posko>(response.data?.data);

      await _localStorageService.setObject<domain.Posko>(
        key,
        result.toJson(),
      );

      return result;
    } catch (e) {
      final localData = _localStorageService.getObject<domain.Posko>(
        key,
        domain.Posko.fromJson,
      );
      if (localData != null) {
        return localData;
      }
      throw Exception('Failed to get posko: $e');
    }
  }

  Future<List<String>> getFokusPantau() async {
    return <String>[
      'Mobilitas Penumpang',
      'Mobilitas Barang',
      'Mobilitas Sarana Angkutan',
      'Kelancaran Transportasi pada Jaringan',
      'Kecelakaan Transportasi',
      'Kejadian Menonjol',
      'Cuaca dan Peringatan Dini',
      'Bencana',
      'Ramp Check',
    ];
  }

  Future<List<domain.PoskoParticipant>> getPoskoParticipants({
    String? status,
  }) async {
    final key = 'posko_participants_${status ?? 'all'}';
    try {
      final poskoApi = _strategiMobileApi.getPoskoApi();
      final response = await poskoApi.poskoParticipantGet();
      final data = response.data?.data?.toList() ?? [];
      final result = PoskoMapper()
          .convertList<PesertaPosko, domain.PoskoParticipant>(data);

      await _localStorageService.setList<domain.PoskoParticipant>(
        key,
        result,
        (e) => e.toJson(),
      );

      return result;
    } catch (e) {
      final localData = _localStorageService.getList<domain.PoskoParticipant>(
        key,
        domain.PoskoParticipant.fromJson,
      );
      if (localData != null) {
        return localData;
      }
      throw Exception('Failed to get posko participants: $e');
    }
  }

  Future<List<domain.PoskoType>> getPoskoTypes() async {
    final key = 'posko_types';
    try {
      final poskoApi = _strategiMobileApi.getPoskoApi();
      final response = await poskoApi.poskoTypeGet();
      final data = response.data?.data?.toList() ?? [];
      final result =
          PoskoMapper().convertList<JenisPosko, domain.PoskoType>(data);

      await _localStorageService.setList<domain.PoskoType>(
        key,
        result,
        (e) => e.toJson(),
      );

      return result;
    } catch (e, s) {
      final localData = _localStorageService.getList<domain.PoskoType>(
        key,
        domain.PoskoType.fromJson,
      );

      if (localData != null) {
        return localData;
      }

      throw Exception('Failed to get posko types: $e, StackTrace: $s');
    }
  }

  Future<void> postPosko(domain.PoskoRequest poskoPostRequest,
      {int retryCount = 0}) async {
    try {
      var request = PoskoPostRequest((b) => b
        ..namaPosko = poskoPostRequest.namaPosko
        ..idJenisPosko = poskoPostRequest.idJenisPosko
        ..idEvent = poskoPostRequest.idEvent
        ..idPesertaPosko = poskoPostRequest.idPesertaPosko
        ..koordinatPosko = poskoPostRequest.koordinatPoskoStr
        ..ketuaPosko = poskoPostRequest.ketuaPosko
        ..noTelpKetuaPosko = poskoPostRequest.noTelpKetuaPosko
        ..picPosko = poskoPostRequest.picPosko
        ..noTelpPosko = poskoPostRequest.noTelpPosko
        ..alamatPosko = poskoPostRequest.alamatPosko
        ..titikPantau = poskoPostRequest.titikPantau
        ..fokusPantau = ListBuilder<String>(poskoPostRequest.fokusPantau ?? [])
        ..masaPantauAwal = Date(
          poskoPostRequest.masaPantauAwal?.year ?? 0,
          poskoPostRequest.masaPantauAwal?.month ?? 0,
          poskoPostRequest.masaPantauAwal?.day ?? 0,
        )
        ..masaPantauAkhir = Date(
          poskoPostRequest.masaPantauAkhir?.year ?? 0,
          poskoPostRequest.masaPantauAkhir?.month ?? 0,
          poskoPostRequest.masaPantauAkhir?.day ?? 0,
        )
        ..unitKerjaKoordinator = poskoPostRequest.unitKerjaKoordinator);

      final poskoApi = _strategiMobileApi.getPoskoApi();
      await poskoApi.poskoPost(poskoPostRequest: request);
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
                type: 'posko',
                request: poskoPostRequest,
                retryCount: retryCount + 1,
              ),
            );

          try {
            await _localStorageService.setList<PendingRequest>(
              'pending_post_request',
              existingPending,
              (e) => e.toJson(),
            );
            return;
          } catch (e) {
            throw Exception('Failed to create posko: $e');
          }
        }
      }
      throw Exception('Failed to create posko: $e');
    }
  }
}
