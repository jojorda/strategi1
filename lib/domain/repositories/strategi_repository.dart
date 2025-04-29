import 'package:flutter/material.dart';
import 'package:strategi_hub_app/data/local/local_storage_keys.dart';
import 'package:strategi_hub_app/data/local/local_storage_service.dart';
import 'package:strategi_hub_app/data/models/enum/event_type.dart';
import 'package:strategi_hub_app/data/models/response/event_response.dart';
import 'package:strategi_hub_app/data/models/response/jalan_korlantas_response.dart';
import 'package:strategi_hub_app/data/models/response/pantau_response.dart';
import 'package:strategi_hub_app/data/models/response/province_response.dart';
import 'package:strategi_hub_app/data/remote/hubnet_remote_source.dart';
import 'package:strategi_hub_app/data/remote/strategi_remote_source.dart';
import 'package:strategi_hub_app/domain/entities/event.dart';
import 'package:strategi_hub_app/domain/entities/jalan_korlantas.dart';
import 'package:strategi_hub_app/domain/entities/pantau.dart';
import 'package:strategi_hub_app/domain/entities/province_data.dart';
import 'package:strategi_hub_app/domain/mappers/event.dart';
import 'package:strategi_hub_app/domain/mappers/jalan_korlantas.dart';
import 'package:strategi_hub_app/domain/mappers/pantau.dart';
import 'package:strategi_hub_app/domain/mappers/province.dart';

class StrategiRepository {
  final StrategiRemoteSource _eventRemoteSource;
  final HubnetRemoteSource _hubnetRemoteSource;
  final LocalStorageService _localStorageService;
  StrategiRepository(this._eventRemoteSource, this._hubnetRemoteSource,
      this._localStorageService);

  Stream<List<Event>> getEvent(EventType type) async* {
    // Emit locally stored data first
    final data = _localStorageService.getList<Event>(
        '${LocalStorageKeys.events}_${type.name}', Event.fromJson);
    if (data != null) {
      yield data;
    }
    try {
      // Perform network call to get up-to-date data
      final response = await _eventRemoteSource.getEvent(type);
      final eventList =
          EventMapper().convertList<EventResponse, Event>(response);

      // Update local storage with new data
      await _localStorageService
          .setList('${LocalStorageKeys.events}_${type.name}', eventList, (e) {
        return e.toJson();
      });
      final updatedData = _localStorageService.getList<Event>(
          '${LocalStorageKeys.events}_${type.name}', Event.fromJson);

      // Emit the new data
      yield updatedData ?? [];
    } catch (e) {
      yield data ?? [];
    }
  }

  Stream<List<ProvinceData>> getProvince() async* {
    try {
      final data = _localStorageService.getList<ProvinceData>(
          LocalStorageKeys.province, ProvinceData.fromJson);

      if (data != null) {
        final filteredData = data
            .where((province) => province.id != '10')
            .toList(); //takeout irian jaya
        yield filteredData;
      }
      // Perform network call to get up-to-date data
      final response = await _eventRemoteSource.getProvince();
      final provinceList = ProvinceMapper()
          .convertList<ProvinceResponse, ProvinceData>(response)
          .where((province) => province.id != '10') //takeout irian jaya
          .toList();

      // Check if the existing data and the response are the same
      if (data != null &&
          data.length == provinceList.length &&
          data.every((element) => provinceList.contains(element))) {
        return;
      }

      // Update local storage with new data
      await _localStorageService.setList(
          LocalStorageKeys.province, provinceList, (e) => e.toJson());

      // Emit the new data
      yield provinceList;
    } catch (e) {
      debugPrint('Failed to fetch province: ${e.toString()}');
      yield [];
    }
  }

  Stream<Simpul?> getDataPantau() async* {
    final key = 'pantau_data';
    try {
      final localPantauData = _localStorageService.getObject<Simpul>(
        key,
        Simpul.fromJson,
      );
      if (localPantauData != null) {
        yield localPantauData;
      }

      final response = await _hubnetRemoteSource.getDataPantau();
      final data = PantauMapper().convert<PantauResponse, Simpul>(response);

      await _localStorageService.setObject<Simpul>(
        key,
        data.toJson(),
      );

      yield data;
    } catch (e) {
      yield null;
    }
  }

  Future<JalanKorlantasDataEntity> getDataJalanKorlantas(
      int page, String selectedDate) async {
    try {
      final response =
          await _hubnetRemoteSource.getDataJalanKorlantas(page, selectedDate);
      final data = JalanKorlantasMappr()
          .convert<JalanKorlantasResponse, JalanKorlantasDataEntity>(response);

      return data;
    } catch (e) {
      throw Exception('Repo: Failed to fetch data korlantas: ${e.toString()}');
    }
  }
}
