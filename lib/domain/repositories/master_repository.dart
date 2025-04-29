import 'package:flutter/material.dart';
import 'package:strategi_hub_app/data/local/local_storage_keys.dart';
import 'package:strategi_hub_app/data/local/local_storage_service.dart';
import 'package:strategi_hub_app/domain/entities/district_data.dart';
import 'package:strategi_hub_app/domain/entities/province_data.dart';
import 'package:strategi_hub_app/domain/entities/user.dart';
import 'package:strategi_hub_app/domain/mappers/district.dart';
import 'package:strategi_hub_app/domain/mappers/province.dart';
import 'package:strategi_hub_app/domain/mappers/user.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

class MasterRepository {
  final StrategiMobileApi _strategiMobileApi;
  final LocalStorageService _localStorageService;

  MasterRepository(this._strategiMobileApi, this._localStorageService);

  Stream<List<ProvinceData>> getProvinces() async* {
    try {
      // Emit locally stored data first
      final data = _localStorageService.getList<ProvinceData>(
          LocalStorageKeys.province, ProvinceData.fromJson);
      if (data != null) {
        yield data;
      }

      // Perform network call to get up-to-date data
      final response =
          await _strategiMobileApi.getMasterDataApi().masterProvinsiGet();
      final provinceList = ProvinceMapper()
          .convertList<MasterProvinsiGet200ResponseDataInner, ProvinceData>(
              response.data?.data ?? []);

      // Update local storage with new data
      await _localStorageService.setList(
          LocalStorageKeys.province, provinceList, (e) => e.toJson());
      final datas = _localStorageService.getList<ProvinceData>(
          LocalStorageKeys.province, ProvinceData.fromJson);

      // Emit the new data
      yield datas ?? [];
    } catch (e) {
      debugPrint('Failed to fetch provinces: ${e.toString()}');
      yield [];
    }
  }

  Stream<List<DistrictData>> getDistricts(int provinceId) async* {
    try {
      // Emit locally stored data first
      final data = _localStorageService.getList<DistrictData>(
          LocalStorageKeys.district + provinceId.toString(),
          DistrictData.fromJson);
      if (data != null) {
        yield data;
      }

      // Perform network call to get up-to-date data
      final response = await _strategiMobileApi
          .getMasterDataApi()
          .masterKabupatenGet(idProvinsi: provinceId);
      final districtList = DistrictMapper()
          .convertList<MasterKabupatenGet200ResponseDataInner, DistrictData>(
              response.data?.data ?? []);

      // Update local storage with new data
      await _localStorageService.setList(
          LocalStorageKeys.district + provinceId.toString(),
          districtList,
          (e) => e.toJson());
      final datas = _localStorageService.getList<DistrictData>(
          LocalStorageKeys.district + provinceId.toString(),
          DistrictData.fromJson);

      // Emit the new data
      yield datas ?? [];
    } catch (e) {
      debugPrint('Failed to fetch districts: ${e.toString()}');
      yield [];
    }
  }

  Stream<List<User>> getUserApproval() async* {
    try {
      // Emit locally stored data first
      final data = _localStorageService.getList<User>(
          LocalStorageKeys.userApproval, User.fromJson);
      if (data != null) {
        yield data;
      }
      final response =
          await _strategiMobileApi.getMasterDataApi().masterUserApprovalGet();
      final userApprovalList = UserMapper()
          .convertList<MasterUserApprovalGet200ResponseDataInner, User>(
              response.data?.data ?? []);

      await _localStorageService.setList(
          LocalStorageKeys.userApproval, userApprovalList, (e) => e.toJson());

      final datas = _localStorageService.getList<User>(
          LocalStorageKeys.userApproval, User.fromJson);
      yield datas ?? [];
    } catch (e) {
      debugPrint('Failed to fetch user approval: ${e.toString()}');
      yield [];
    }
  }
}
