import 'package:test/test.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';


/// tests for PoskoApi
void main() {
  final instance = StrategiMobileApi().getPoskoApi();

  group(PoskoApi, () {
    // Get a paginated list of Posko records with optional filtering
    //
    //Future<PaginatedPoskoResponse> poskoGet({ int page, int limit, int idJenisPosko, String namaPosko, String idEvent, Date masaPantauAwal, Date masaPantauAkhir, String titikPantau }) async
    test('test poskoGet', () async {
      // TODO
    });

    // Delete a specific Posko record
    //
    // Deletes a specific Posko record identified by ID.
    //
    //Future poskoIdDelete(int id) async
    test('test poskoIdDelete', () async {
      // TODO
    });

    // Get a specific Posko record by ID
    //
    //Future<PoskoResponse> poskoIdGet(int id) async
    test('test poskoIdGet', () async {
      // TODO
    });

    // Update an existing Posko record
    //
    // Updates a specific Posko record identified by ID.
    //
    //Future poskoIdPut(int id, PoskoIdPutRequest poskoIdPutRequest) async
    test('test poskoIdPut', () async {
      // TODO
    });

    // Get list of Posko type
    //
    //Future<PoskoParticipantGet200Response> poskoParticipantGet() async
    test('test poskoParticipantGet', () async {
      // TODO
    });

    // Create a new Posko record
    //
    // Adds a new Posko record to the system.
    //
    //Future poskoPost(PoskoPostRequest poskoPostRequest) async
    test('test poskoPost', () async {
      // TODO
    });

    // Get list of Posko type
    //
    //Future<PoskoTypeGet200Response> poskoTypeGet() async
    test('test poskoTypeGet', () async {
      // TODO
    });

  });
}
