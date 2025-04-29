import 'package:dio/dio.dart';
import 'package:get/get.dart' hide MultipartFile;
import 'package:provider/provider.dart';
import 'package:strategi_hub_app/constant/enum/laporan_enum.dart';
import 'package:strategi_hub_app/core/base/network_status_notifier.dart';
import 'package:strategi_hub_app/data/local/local_storage_service.dart';
import 'package:strategi_hub_app/data/models/enum/laporan_type.dart';
import 'package:strategi_hub_app/data/models/enum/moda_type.dart';
import 'package:strategi_hub_app/data/models/request/moda_request.dart';
import 'package:strategi_hub_app/data/models/request/pending_request.dart';
import 'package:strategi_hub_app/data/models/response/report_data_response.dart';
import 'package:strategi_hub_app/data/remote/strategi_doc_remote_source.dart';
import 'package:strategi_hub_app/domain/entities/matrix_report.dart';
import 'package:strategi_hub_app/domain/entities/performance_report.dart';
import 'package:strategi_hub_app/domain/entities/report_approval.dart';
import 'package:strategi_hub_app/domain/mappers/report.dart';
import 'package:strategi_hub_app/domain/mappers/report_approval.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';
import 'package:path/path.dart';

class ReportRepository {
  final StrategiMobileApi _strategiMobileApi;
  final LocalStorageService _localStorageService;
  final StrategiDocRemoteSource _strategiDocRemoteSource;

  ReportRepository(this._strategiMobileApi, this._localStorageService,
      this._strategiDocRemoteSource);

  Stream<List<PerformanceReport?>> getReport(String tahun, String moda) async* {
    final key = 'report_${moda}_$tahun';
    try {
      final localReportData = _localStorageService.getList<PerformanceReport?>(
        key,
        PerformanceReport.fromJson,
      );

      if (localReportData != null) {
        yield localReportData;
      }

      final reportApi = _strategiMobileApi.getPerformanceReportApi();
      final response = await reportApi.performanceReportGet(
        tahun: tahun,
        moda: moda,
      );
      final reportData = response.data?.data?.toList() ?? [];

      final newReportData = ReportMapper().convertList<
          PerformanceReportGet200ResponseDataInner,
          PerformanceReport>(reportData);

      await _localStorageService.setList<PerformanceReport>(
        key,
        newReportData,
        (e) {
          return e.toJson();
        },
      );

      yield newReportData;
    } catch (e) {
      yield [];
    }
  }

  Future<List<ReportData>> getReportList(LaporanEnum type) async {
    try {
      final result = await _strategiDocRemoteSource.getReportList(type);

      return result;
    } catch (e) {
      throw Exception('Repo: Failed to fetch incident report: ${e.toString()}');
    }
  }

  Future<List<ReportApproval>> getReportApprovalList({
    ReportType? reportType,
    int page = 1,
    int limit = 20,
    DateTime? dateFrom,
    DateTime? dateTo,
    String? poskoTerpadu,
    String? search,
    String? event,
  }) async {
    try {
      final api = _strategiMobileApi.getReportApi();
      final response = await api.reportApprovalGet(
        type: reportType?.name,
        poskoTerpadu: poskoTerpadu,
        event: event,
        dateFrom: dateFrom?.toDate(),
        dateTo: dateTo?.toDate(),
        search: search != null && search.isNotEmpty ? search : null,
        page: page,
        limit: limit,
      );

      return ReportApprovalMapper().convertList<Report, ReportApproval>(
          response.data?.data?.toList() ?? []);
    } catch (e) {
      throw Exception('Repo: Failed to fetch incident report: ${e.toString()}');
    }
  }

  Future<Report?> getReportDetail({
    required int id,
  }) async {
    try {
      final api = _strategiMobileApi.getReportApi();
      final response = await api.reportIdGet(id: id);

      return response.data?.data;
    } catch (e) {
      throw Exception('Repo: Failed to fetch report: ${e.toString()}');
    }
  }

  Future<bool?> approveReport({
    required String id,
  }) async {
    try {
      final api = _strategiMobileApi.getReportApi();
      final response = await api.reportIdApprovePost(
        id: id,
        reportIdApprovePostRequest:
            ReportIdApprovePostRequest((b) => b..notes = '-'),
      );

      return response.data?.success ?? false;
    } catch (e) {
      throw Exception('Repo: Failed to fetch report: ${e.toString()}');
    }
  }

  Future<bool?> rejectReport({
    required String id,
  }) async {
    try {
      final api = _strategiMobileApi.getReportApi();
      final response = await api.reportIdRejectPost(
        id: id,
        reportIdRejectPostRequest: ReportIdRejectPostRequest(
          (b) => b
            ..additionalComments = '-'
            ..reason = '-',
        ),
      );

      return response.data?.success ?? false;
    } catch (e) {
      throw Exception('Repo: Failed to fetch report: ${e.toString()}');
    }
  }

  Future<void> postReport(ReportRequest reportRequest,
      {int retryCount = 0}) async {
    try {
      await Future.delayed(Duration(seconds: 3));
      // Convert file to MultipartFile
      MultipartFile? fileMultipart = reportRequest.filePath != null
          ? await MultipartFile.fromFile(
              reportRequest.filePath ?? '',
              filename: basename(reportRequest.filePath ?? ''),
              contentType: DioMediaType('application', 'pdf'),
            )
          : null;

      MultipartFile? photoMultipart = reportRequest.photoPath != null
          ? await MultipartFile.fromFile(
              reportRequest.photoPath ?? '',
              filename: basename(reportRequest.photoPath ?? ''),
              contentType: DioMediaType('image', 'png'),
            )
          : null;

      final poskoApi = _strategiMobileApi.getReportApi();
      await poskoApi.reportPost(
        type: reportRequest.type,
        matra: reportRequest.matra,
        pengikut: reportRequest.pengikut,
        nama: reportRequest.namaReport,
        tanggal: reportRequest.tanggalReport?.toDate(),
        deskripsi: reportRequest.deskripsiReport,
        personil: reportRequest.personil,
        event: reportRequest.event,
        provinsi: reportRequest.provinsi,
        kabupaten: reportRequest.kabupaten,
        angkutan: reportRequest.angkutan,
        unitPelayanan: reportRequest.unitPelayanan,
        isKejadianMenonjol: reportRequest.isKejadianMenonjol,
        kejadianMenonjol: reportRequest.kejadianMenonjol,
        koordinatKejadianMenonjol: reportRequest.koordinatKejadianMenonjol,
        kecelakaan: reportRequest.kecelakaan,
        isKecelakaan: reportRequest.isKecelakaan,
        koordinatKecelakaan: reportRequest.koordinatKecelakaan,
        lokasiKecelakaan: reportRequest.lokasiKecelakaan,
        pembuat: reportRequest.pembuatReport,
        persetujuan: reportRequest.persetujuan,
        file: fileMultipart,
        photo: photoMultipart,
        captionPhoto: reportRequest.captionPhoto,
      );
    } catch (e) {
      if (Get.context != null) {
        final isConnected =
            Provider.of<NetworkStatusNotifier>(Get.context!, listen: false)
                .isConnected;
        if (!isConnected && retryCount < 3) {
          List<PendingRequest>? existingPending =
              _localStorageService.getList<PendingRequest>(
            'pending_post_request',
            PendingRequest.fromJson,
          );

          existingPending = (existingPending ?? <PendingRequest>[])
            ..add(
              PendingRequest(
                type: 'report',
                request: reportRequest,
                retryCount: retryCount + 1,
              ),
            );

          try {
            await _localStorageService.setList<PendingRequest>(
              'pending_post_request',
              existingPending,
              (e) => e.toJson(),
            );
            return;
          } catch (e) {
            throw Exception('Failed to create report: $e');
          }
        }
      }
      throw Exception('Failed to create report: $e');
    }
  }

  Future<MatrixReportEntity> getMatrixReportList(ModaType typeReport, ModaRequest request) async {
    try {
      final result =
          await _strategiDocRemoteSource.getMatrixReportList(typeReport, request);

      return result;
    } catch (e) {
      throw Exception('Repo: Failed to fetch incident report: ${e.toString()}');
    }
  }
}
