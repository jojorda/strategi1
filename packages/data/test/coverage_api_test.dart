import 'package:test/test.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';


/// tests for CoverageApi
void main() {
  final instance = StrategiMobileApi().getCoverageApi();

  group(CoverageApi, () {
    // Get the list of video coverage
    //
    // Retrieves a list of video coverage data with details like location, stream URL, and more. You can filter the results based on specific fields.
    //
    //Future<CoverageGet200Response> coverageGet({ Date tanggalAwal, Date tanggalAkhir, String matra, String kontributor, String tipeLokasi, String tipeMedia, String statusLive }) async
    test('test coverageGet', () async {
      // TODO
    });

  });
}
