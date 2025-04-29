import 'package:test/test.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';


/// tests for FocusApi
void main() {
  final instance = StrategiMobileApi().getFocusApi();

  group(FocusApi, () {
    // Get a paginated list of focus records with optional filtering
    //
    //Future<FocusResponse> focusGet({ String tanggalAwal1, String tanggalAkhir1, String event }) async
    test('test focusGet', () async {
      // TODO
    });

    // Create a new focus record
    //
    // Adds a new focus record to the system.
    //
    //Future focusPost(CreateFocusRequest createFocusRequest) async
    test('test focusPost', () async {
      // TODO
    });

  });
}
