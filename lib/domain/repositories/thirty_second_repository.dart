import 'package:strategi_mobile_api/strategi_mobile_api.dart';

class ThirtySecondRepository {
  final StrategiMobileApi _strategiMobileApi;
  ThirtySecondRepository(this._strategiMobileApi);

  Future<List<Model30SecondsGet200ResponseDataInner>?> get30Seconds() async {
    try {
      final response =
          await _strategiMobileApi.getClass30SecondsApi().call30secondsGet();

      return response.data?.data?.toList();
    } catch (e) {
      throw Exception('Failed to fetch province: ${e.toString()}');
    }
  }
}
