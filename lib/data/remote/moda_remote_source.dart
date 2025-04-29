import 'package:strategi_hub_app/core/base/base_provider.dart';
import 'package:strategi_hub_app/core/constants/endpoints.dart';
import 'package:strategi_hub_app/data/models/enum/moda_type.dart';
import 'package:strategi_hub_app/data/models/enum/data_type.dart';
import 'package:strategi_hub_app/data/models/request/incident_report_request.dart';
import 'package:strategi_hub_app/data/models/request/moda_request.dart';
import 'package:strategi_hub_app/data/models/request/update_laporan_request.dart';
import 'package:strategi_hub_app/data/models/response/aggregate_response.dart';
import 'package:strategi_hub_app/data/models/response/incident_report_response.dart';
import 'package:strategi_hub_app/data/models/response/regional_response.dart';
import 'package:strategi_hub_app/data/models/response/summary_response.dart';

class ModaRemoteSource extends ApiProvider {
  Future<SummaryResponse> getSummary(
    DataType type,
    ModaRequest request,
  ) async {
    try {
      final String url = type == DataType.routine
          ? Endpoints.getSummaryRoutine
          : Endpoints.getSummarySeasonal;

      final response = await get(url, query: request.toJson());
      if (response.status.hasError) {
        throw Exception(response.statusText!);
      }

      return SummaryResponse.fromJson(response.body['data']);
    } catch (e) {
      throw Exception('Failed to fetch summary: ${e.toString()}');
    }
  }

  Future<bool> editReport({
    required String id,
    required UpdateLaporanRequest request,
  }) async {
    try {
      final response =
          await put('${Endpoints.incidentReport}/$id', request.toJson());
      if (response.status.hasError) {
        throw Exception(response.statusText!);
      }

      return true;
    } catch (e) {
      throw Exception('Failed to fetch summary: ${e.toString()}');
    }
  }

  Future<AggregateResponse> getAggregate(
    ModaType type,
    DataType dataType,
    ModaRequest request,
  ) async {
    try {
      final String url =
          '${Endpoints.getAggregate}/${type.name}/${dataType.name}';

      final response = await get(url, query: request.toJson());
      if (response.status.hasError) {
        throw Exception(response.statusText!);
      }

      return AggregateResponse.fromJson(response.body['data']);
    } catch (e) {
      throw Exception('Failed to fetch aggregate: ${e.toString()}');
    }
  }

  Future<RegionalResponse> getRegional(
    DataType dataType,
    ModaRequest request,
  ) async {
    try {
      final String url = '${Endpoints.getRegion}/${dataType.name}';

      final response = await get(url, query: request.toJson());
      if (response.status.hasError) {
        throw Exception(response.statusText!);
      }

      return RegionalResponse.fromJson(response.body['data']);
    } catch (e) {
      throw Exception('Failed to fetch aggregate: ${e.toString()}');
    }
  }

  Future<List<IncidentReportResponse>> getIncidentReport(
    ModaType? type,
    IncidentReportRequest request,
  ) async {
    try {
      final String url = Endpoints.incidentReport;

      final response = await get(url, query: request.toJson());

      if (response.status.hasError) {
        throw Exception(response.statusText!);
      }

      final result = response.body['data'] as List<dynamic>;

      return result.map((e) => IncidentReportResponse.fromJson(e)).toList();
    } catch (e) {
      throw Exception('Failed to fetch aggregate: ${e.toString()}');
    }
  }

  Future<IncidentReportResponse> getDetailIncidentReport(String id) async {
    try {
      final String url = '${Endpoints.incidentReport}/$id';

      final response = await get(url);
      if (response.status.hasError) {
        throw Exception(response.statusText!);
      }

      return IncidentReportResponse.fromJson(response.body['data']);
    } catch (e) {
      throw Exception('Failed to fetch aggregate: ${e.toString()}');
    }
  }
}
