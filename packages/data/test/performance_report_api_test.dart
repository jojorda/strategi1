import 'package:test/test.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';


/// tests for PerformanceReportApi
void main() {
  final instance = StrategiMobileApi().getPerformanceReportApi();

  group(PerformanceReportApi, () {
    // Fetch Performance Report Data
    //
    // Retrieves and parses Performance Report data from the specified URL.
    //
    //Future<PerformanceReportGet200Response> performanceReportGet(String tahun, String moda) async
    test('test performanceReportGet', () async {
      // TODO
    });

  });
}
