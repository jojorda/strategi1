import 'package:flutter/material.dart';
import 'package:strategi_hub_app/core/base/base_provider.dart';
import 'package:strategi_hub_app/core/constants/endpoints.dart';
import 'package:strategi_hub_app/data/models/request/cctv_request.dart';
import 'package:strategi_hub_app/data/models/response/cctv_response.dart';

class CCTVRemoteSource extends ApiProvider {
  Future<List<CCTVResponse>> getCCTV(CctvRequest request) async {
    try {
      final response = await get(Endpoints.cctv, query: request.toJson());

      if (response.status.hasError) {
        throw Exception(response.statusText!);
      }
      final List<dynamic> data = response.body['data'];

      return data.map((e) => CCTVResponse.fromJson(e)).toList();
    } catch (e) {
      debugPrint('Failed to fetch cctv: ${e.toString()}');
      throw Exception('Failed to fetch cctv: ${e.toString()}');
    }
  }
}
