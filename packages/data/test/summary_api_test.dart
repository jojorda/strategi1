import 'package:test/test.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';


/// tests for SummaryApi
void main() {
  final instance = StrategiMobileApi().getSummaryApi();

  group(SummaryApi, () {
    // Get seasonal production data
    //
    // Fetches data related to seasonal production and returns the summarized data.
    //
    //Future<SummaryRoutineGet200Response> summaryRoutineGet(String tanggalAwal1, String tanggalAkhir1, { String provinsi, String moda }) async
    test('test summaryRoutineGet', () async {
      // TODO
    });

    // Retrieve seasonal routine monitoring data
    //
    // Fetches seasonal routine data based on given date ranges and optional filters.
    //
    //Future<SummarySeasonalGet200Response> summarySeasonalGet(String event, { String provinsi, String moda }) async
    test('test summarySeasonalGet', () async {
      // TODO
    });

  });
}
