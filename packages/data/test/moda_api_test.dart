import 'package:test/test.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';


/// tests for ModaApi
void main() {
  final instance = StrategiMobileApi().getModaApi();

  group(ModaApi, () {
    // Aggregate routine data by date range
    //
    //Future<ModaAggregateModaRoutineGet200Response> modaAggregateModaRoutineGet(String moda, String tanggalAwal1, String tanggalAkhir1, { String provinsi }) async
    test('test modaAggregateModaRoutineGet', () async {
      // TODO
    });

    // Aggregate seasonal data for events
    //
    //Future<ModaAggregateModaSeasonalGet200Response> modaAggregateModaSeasonalGet(String moda, String event, { String provinsi }) async
    test('test modaAggregateModaSeasonalGet', () async {
      // TODO
    });

    // Get detail routine OD data for specified date range
    //
    //Future<ModaOdModaRoutineDetailGet200Response> modaOdModaRoutineDetailGet(String moda, Date tanggalAwal1, Date tanggalAkhir1, { String idOrigin, String idDestination }) async
    test('test modaOdModaRoutineDetailGet', () async {
      // TODO
    });

    // Get routine OD data for specified date range
    //
    //Future<ModaOdModaRoutineGet200Response> modaOdModaRoutineGet(String moda, Date tanggalAwal1, Date tanggalAkhir1, { String search, String type }) async
    test('test modaOdModaRoutineGet', () async {
      // TODO
    });

    // Get detail seasonal OD data for specified date range
    //
    //Future<ModaOdModaRoutineDetailGet200Response> modaOdModaSeasonalDetailGet(String moda, String event, { String idOrigin, String idDestination }) async
    test('test modaOdModaSeasonalDetailGet', () async {
      // TODO
    });

    // Get seasonal OD data for specified event
    //
    //Future<ModaOdModaRoutineGet200Response> modaOdModaSeasonalGet(String moda, String event, { String search, String type }) async
    test('test modaOdModaSeasonalGet', () async {
      // TODO
    });

    // Get list of fleet operators
    //
    //Future<ModaOperatorsModaFleetsGet200Response> modaOperatorsModaFleetsGet(String moda, String idOperator, { int page, int limit, String search, String sortColumn, String sortDirection }) async
    test('test modaOperatorsModaFleetsGet', () async {
      // TODO
    });

    // Get list of od operators
    //
    //Future<ModaOperatorsModaOdGet200Response> modaOperatorsModaOdGet(String moda, String idOperator, { int page, int limit, String search }) async
    test('test modaOperatorsModaOdGet', () async {
      // TODO
    });

    // Get list of transportation operators
    //
    //Future<BuiltList<ModaOperatorsModaRoutineGet200ResponseInner>> modaOperatorsModaRoutineGet(String moda, { Date dateStart, Date dateEnd, String period, String search, String sortColumn, String sortDirection }) async
    test('test modaOperatorsModaRoutineGet', () async {
      // TODO
    });

    // Get list of transportation operators
    //
    //Future<BuiltList<ModaOperatorsModaRoutineGet200ResponseInner>> modaOperatorsModaSeasonalGet(String moda, { String event, String search, String sortColumn, String sortDirection }) async
    test('test modaOperatorsModaSeasonalGet', () async {
      // TODO
    });

    // Get detail regional routine data for specified date range and id location
    //
    //Future<ModaRegionalIdLocationRoutineGet200Response> modaRegionalIdLocationRoutineGet(String idLocation, Date tanggalAwal1, Date tanggalAkhir1, { String type, String moda }) async
    test('test modaRegionalIdLocationRoutineGet', () async {
      // TODO
    });

    // Get detail seasonal regional data for specified event and id location
    //
    //Future<ModaRegionalIdLocationRoutineGet200Response> modaRegionalIdLocationSeasonalGet(String idLocation, String event, { String type, String moda }) async
    test('test modaRegionalIdLocationSeasonalGet', () async {
      // TODO
    });

    // Get regional routine data for specified date range and province
    //
    //Future<ModaRegionalRoutineGet200Response> modaRegionalRoutineGet(Date tanggalAwal1, Date tanggalAkhir1, String provinsi, { String type, String moda }) async
    test('test modaRegionalRoutineGet', () async {
      // TODO
    });

    // Get seasonal regional data for specified event and province
    //
    //Future<ModaRegionalRoutineGet200Response> modaRegionalSeasonalGet(String event, String provinsi, { String type, String moda }) async
    test('test modaRegionalSeasonalGet', () async {
      // TODO
    });

  });
}
