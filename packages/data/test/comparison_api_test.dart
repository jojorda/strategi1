import 'package:test/test.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';


/// tests for ComparisonApi
void main() {
  final instance = StrategiMobileApi().getComparisonApi();

  group(ComparisonApi, () {
    // Compare transportation data
    //
    // Fetches transportation comparison data based on routine or seasonal inputs.
    //
    //Future<ComparisonGet200Response> comparisonGet(int idLocation, String moda, { Date tanggalAwal1, Date tanggalAkhir1, String event }) async
    test('test comparisonGet', () async {
      // TODO
    });

  });
}
