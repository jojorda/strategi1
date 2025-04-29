import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:intl/intl.dart';
import 'package:strategi_hub_app/constant/enum/laporan_enum.dart';
import 'package:strategi_hub_app/core/base/base_provider.dart';
import 'package:strategi_hub_app/core/constants/endpoints.dart';
import 'package:strategi_hub_app/data/models/enum/moda_type.dart';
import 'package:strategi_hub_app/data/models/request/moda_request.dart';
import 'package:strategi_hub_app/data/models/response/matrix_report_response.dart';
import 'package:strategi_hub_app/data/models/response/report_data_response.dart';
import 'package:strategi_hub_app/domain/entities/matrix_report.dart';
import 'package:strategi_hub_app/domain/mappers/matrix_report.dart';
import 'package:strategi_hub_app/utils/extentions/dateformat_extentions.dart';

class StrategiDocRemoteSource extends ApiProvider {
  final mappr = MatrixReportMappr();

  @override
  void onInit() {
    super.onInit();
    httpClient.baseUrl = dotenv.env['STRATEGI_API'];
    httpClient.addRequestModifier<dynamic>((request) async {
      request.headers['Authorization'] =
          dotenv.env['STRATEGI_WEB_ACCESS_TOKEN'] ?? '';
      return request;
    });
  }

  Future<List<ReportData>> getReportList(LaporanEnum type) async {
    try {
      final String url = _getReportUrl(type);
      final response = type == LaporanEnum.laporanData
          ? await post(url, {})
          : await get(url);

      if (response.status.hasError) {
        throw Exception(response.statusText!);
      }

      final dynamic data = response.body;
      return mapReportDataResponse(data, type);
    } catch (e) {
      throw Exception('Failed to fetch summary: ${e.toString()}');
    }
  }

  String _getReportUrl(LaporanEnum type) {
    return switch (type) {
      LaporanEnum.laporanData => Endpoints.getReport,
      LaporanEnum.laporan2Jam => Endpoints.getTwoHourReport,
      LaporanEnum.laporanShift => Endpoints.getShiftReport,
      LaporanEnum.laporanDaily => Endpoints.getDailyReport,
      LaporanEnum.laporanWeekly => Endpoints.getWeeklyReport,
      _ => Endpoints.getShiftReport,
    };
  }

  static List<ReportData> mapReportDataResponse(
      dynamic data, LaporanEnum type) {
    if (type == LaporanEnum.laporanData) {
      return (data['data'] as List<dynamic>)
          .map((e) => ReportData.fromJson(e))
          .toList();
    } else {
      return (data['data_complete'] as List<dynamic>)
          .map((e) => ReportData(
                namaData: e['keterangan'],
                url: e['url'],
              ))
          .toList();
    }
  }

  static String mapDateTime(String name) {
    final DateTime dateTime =
        DateTime.parse('${name.substring(0, 8)}T${name.substring(9)}');
    return DateFormat("d MMMM yyyy HH:mm", "id_ID").tryFormat(dateTime);
  }

  static String mapDate(String name) {
    final DateTime dateTime = DateTime.parse(name.substring(0, 8));
    return DateFormat("d MMMM yyyy", "id_ID").tryFormat(dateTime);
  }

  static String transformModaType(ModaType type) {
    switch (type) {
      case ModaType.asdp:
        return 'asdp';
      case ModaType.laut:
        return 'laut';
      case ModaType.jalan:
        return 'terminal';
      default:
        return 'terminal';
    }
  }

  Future<MatrixReportEntity> getMatrixReportList(
      ModaType typeReport, ModaRequest request) async {
    try {
      final endpointType = transformModaType(typeReport);
      final String url = '${Endpoints.getMatrixReport}/$endpointType';
      final response = await post(url, {
        "event": request.event,
        "tanggal_mulai": DateFormat('yyyy-MM-dd')
            .format(DateTime.parse(request.tanggalAwal1.toString())),
        "tanggal_selesai": DateFormat('yyyy-MM-dd')
            .format(DateTime.parse(request.tanggalAkhir1.toString())),
      });

      if (response.status.hasError) {
        throw Exception(response.statusText!);
      }

      final Map<String, dynamic> dataMap = response.body;
      final MatrixReportResponse responseModel =
          MatrixReportResponse.fromJson(dataMap);

      final entity = mappr
          .convert<MatrixReportResponse, MatrixReportEntity>(responseModel);

      return entity;
    } catch (e) {
      throw Exception('Failed to fetch summary: ${e.toString()}');
    }
  }
}
