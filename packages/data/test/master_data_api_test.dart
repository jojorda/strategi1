import 'package:test/test.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';


/// tests for MasterDataApi
void main() {
  final instance = StrategiMobileApi().getMasterDataApi();

  group(MasterDataApi, () {
    // Get the list of regencies
    //
    // Retrieves a list of regencies data from the database.
    //
    //Future<MasterKabupatenGet200Response> masterKabupatenGet({ num idProvinsi }) async
    test('test masterKabupatenGet', () async {
      // TODO
    });

    // Get the list of provinces
    //
    // Retrieves a list of provinces data from the database.
    //
    //Future<MasterProvinsiGet200Response> masterProvinsiGet() async
    test('test masterProvinsiGet', () async {
      // TODO
    });

    // Get the list of user approval
    //
    // Retrieves a list of user approval data from the database.
    //
    //Future<MasterUserApprovalGet200Response> masterUserApprovalGet() async
    test('test masterUserApprovalGet', () async {
      // TODO
    });

  });
}
