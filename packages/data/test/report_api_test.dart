import 'package:test/test.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';


/// tests for ReportApi
void main() {
  final instance = StrategiMobileApi().getReportApi();

  group(ReportApi, () {
    // Get all reports need to approve
    //
    // Retrieves a list of all reports with optional filtering
    //
    //Future<ReportGet200Response> reportApprovalGet({ String type, String search, String poskoTerpadu, String event, Date dateFrom, Date dateTo, String isApproved, int page, int limit }) async
    test('test reportApprovalGet', () async {
      // TODO
    });

    // Get all reports
    //
    // Retrieves a list of all reports with optional filtering
    //
    //Future<ReportGet200Response> reportGet({ String type, String search, String poskoTerpadu, String event, Date dateFrom, Date dateTo, String isApproved, int page, int limit }) async
    test('test reportGet', () async {
      // TODO
    });

    // Approve an report
    //
    //Future<ReportIdApprovePost200Response> reportIdApprovePost(String id, ReportIdApprovePostRequest reportIdApprovePostRequest) async
    test('test reportIdApprovePost', () async {
      // TODO
    });

    // Delete a report
    //
    // Deletes a specific report by its ID
    //
    //Future reportIdDelete(int id) async
    test('test reportIdDelete', () async {
      // TODO
    });

    // Get report by ID
    //
    // Retrieves a specific report by its ID
    //
    //Future<ReportPost201Response> reportIdGet(int id) async
    test('test reportIdGet', () async {
      // TODO
    });

    // Get weather information for a report
    //
    // Retrieves weather information associated with a specific report
    //
    //Future<ReportIdLaporanPantauCuacaGet200Response> reportIdLaporanPantauCuacaGet(int idLaporanPantau) async
    test('test reportIdLaporanPantauCuacaGet', () async {
      // TODO
    });

    // Create weather information
    //
    // Creates weather information associated with an existing report
    //
    //Future<ReportIdLaporanPantauCuacaPost201Response> reportIdLaporanPantauCuacaPost(int idLaporanPantau, Cuaca cuaca) async
    test('test reportIdLaporanPantauCuacaPost', () async {
      // TODO
    });

    // Get all accident reports for a report
    //
    // Retrieves all accident reports associated with a specific report
    //
    //Future<ReportIdLaporanPantauKecelakaanGet200Response> reportIdLaporanPantauKecelakaanGet(int idLaporanPantau) async
    test('test reportIdLaporanPantauKecelakaanGet', () async {
      // TODO
    });

    // Create or update a new accident report
    //
    // Creates or updates a new accident report associated with an existing report
    //
    //Future<ReportIdLaporanPantauKecelakaanPost201Response> reportIdLaporanPantauKecelakaanPost(int idLaporanPantau, Kecelakaan kecelakaan) async
    test('test reportIdLaporanPantauKecelakaanPost', () async {
      // TODO
    });

    // Update a report
    //
    // Updates an existing report with new information
    //
    //Future<ReportPost201Response> reportIdPut(int id, { String type, String matra, String event, String nama, String personil, String pengikut, Date tanggal, String provinsi, String kabupaten, String angkutan, String unitPelayanan, String deskripsi, bool isKejadianMenonjol, String kejadianMenonjol, String koordinatKejadianMenonjol, bool isKecelakaan, String kecelakaan, String koordinatKecelakaan, String lokasiKecelakaan, String pembuat, String persetujuan, MultipartFile file, MultipartFile photo, String captionPhoto }) async
    test('test reportIdPut', () async {
      // TODO
    });

    // Reject an report
    //
    //Future<ReportIdRejectPost200Response> reportIdRejectPost(String id, ReportIdRejectPostRequest reportIdRejectPostRequest) async
    test('test reportIdRejectPost', () async {
      // TODO
    });

    // Create a new report
    //
    // Creates a new report with the provided information
    //
    //Future<ReportPost201Response> reportPost({ String type, String matra, String event, String nama, String personil, String pengikut, Date tanggal, String provinsi, String kabupaten, String angkutan, String unitPelayanan, String deskripsi, bool isKejadianMenonjol, String kejadianMenonjol, String koordinatKejadianMenonjol, bool isKecelakaan, String kecelakaan, String koordinatKecelakaan, String lokasiKecelakaan, String pembuat, String persetujuan, MultipartFile file, MultipartFile photo, String captionPhoto }) async
    test('test reportPost', () async {
      // TODO
    });

  });
}
