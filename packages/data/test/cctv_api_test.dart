import 'package:test/test.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';


/// tests for CCTVApi
void main() {
  final instance = StrategiMobileApi().getCCTVApi();

  group(CCTVApi, () {
    // Get the list of CCTV streams
    //
    // Retrieves a list of CCTV stream data with details like location, stream URL, and more. You can filter the results based on specific fields.
    //
    //Future<CctvGet200Response> cctvGet({ String matra, String namaProvinsi, String namaKabupatenKota, String search }) async
    test('test cctvGet', () async {
      // TODO
    });

  });
}
