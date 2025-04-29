import 'package:built_collection/built_collection.dart';
import 'package:dio/src/response.dart';
import 'package:flutter/material.dart';
import 'package:strategi_hub_app/data/local/local_storage_keys.dart';
import 'package:strategi_hub_app/data/local/local_storage_service.dart';
import 'package:strategi_hub_app/data/models/enum/data_type.dart';
import 'package:strategi_hub_app/data/models/enum/moda_type.dart';
import 'package:strategi_hub_app/data/models/request/incident_report_request.dart';
import 'package:strategi_hub_app/data/models/request/moda_operator_base_request.dart';
import 'package:strategi_hub_app/data/models/request/moda_operator_request.dart';
import 'package:strategi_hub_app/data/models/request/moda_request.dart';
import 'package:strategi_hub_app/data/models/request/update_laporan_request.dart';
import 'package:strategi_hub_app/data/models/response/aggregate_response.dart';
import 'package:strategi_hub_app/data/models/response/incident_report_response.dart';
import 'package:strategi_hub_app/data/models/response/regional_response.dart';
import 'package:strategi_hub_app/data/models/response/summary_response.dart';
import 'package:strategi_hub_app/data/remote/moda_remote_source.dart';
import 'package:strategi_hub_app/domain/entities/aggregate_data.dart';
import 'package:strategi_hub_app/domain/entities/comparison_data.dart';
import 'package:strategi_hub_app/domain/entities/incident_report.dart';
import 'package:strategi_hub_app/domain/entities/od_data.dart';
import 'package:strategi_hub_app/domain/entities/operator.dart';
import 'package:strategi_hub_app/domain/entities/regional_data.dart';
import 'package:strategi_hub_app/domain/entities/sarana.dart';
import 'package:strategi_hub_app/domain/entities/summary.dart';
import 'package:strategi_hub_app/domain/mappers/aggregate.dart';
import 'package:strategi_hub_app/domain/mappers/comparison.dart';
import 'package:strategi_hub_app/domain/mappers/incident_report.dart';
import 'package:strategi_hub_app/domain/mappers/od.dart';
import 'package:strategi_hub_app/domain/mappers/operator.dart';
import 'package:strategi_hub_app/domain/mappers/operator_od.dart';
import 'package:strategi_hub_app/domain/mappers/regional.dart';
import 'package:strategi_hub_app/domain/mappers/report.dart';
import 'package:strategi_hub_app/domain/mappers/sarana.dart';
import 'package:strategi_hub_app/domain/mappers/summary.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

class ModaRepository {
  final ModaRemoteSource _modaRemoteSource;
  final StrategiMobileApi _strategiMobileApi;
  final LocalStorageService _localStorageService;
  ModaRepository(this._modaRemoteSource, this._strategiMobileApi,
      this._localStorageService);

  Stream<Summary?> getSummary(
    DataType type,
    ModaRequest request,
  ) async* {
    final key = '${LocalStorageKeys.summary}_${type.name}_${request.toJson()}';
    try {
      // Emit locally stored data first if available
      // Assuming you have a local storage service to get the cached summary
      final localSummary = _localStorageService.getObject<Summary>(
        key,
        Summary.fromJson,
      );

      if (localSummary != null) {
        yield localSummary;
      }

      // Perform network call to get up-to-date data
      final response = await _modaRemoteSource.getSummary(type, request);
      final summary =
          SummaryMapper().convert<SummaryResponse, Summary>(response);

      // Update local storage with new data
      await _localStorageService.setObject<Summary>(key, summary.toJson());
      final updatelocalSummary = _localStorageService.getObject<Summary>(
        key,
        Summary.fromJson,
      );

      // Emit the new data
      yield updatelocalSummary;
    } catch (e) {
      yield null;
    }
  }

  Stream<AggregateData?> getAggregate(
    ModaType modaType,
    DataType dataType,
    ModaRequest request,
  ) async* {
    final key = '${modaType.name}_${dataType.name}_${request.toJson()}';
    final data = _localStorageService.getObject<AggregateData>(
        key, AggregateData.fromJson);
    if (data != null) {
      yield data;
    }

    try {
      final response =
          await _modaRemoteSource.getAggregate(modaType, dataType, request);
      final aggregate =
          AggregateMapper().convert<AggregateResponse, AggregateData>(response);

      await _localStorageService.setObject<AggregateData>(
        key,
        aggregate.toJson(),
      );
      final datas = _localStorageService.getObject<AggregateData>(
        key,
        AggregateData.fromJson,
      );
      yield datas;
    } catch (e) {
      // Emit locally stored data if there is any error (connection or server error)
      debugPrint('error during fetch aggregate: ${e.toString()}');
      yield data;
    }
  }

  Stream<RegionalData?> getRegional(
    ModaRequest request,
    DataType dataType,
  ) async* {
    final key = 'regional_${dataType.name}_${request.toJson()}';
    try {
      // Check local storage first
      final localRegionalData = _localStorageService.getObject<RegionalData>(
        key,
        RegionalData.fromJson,
      );

      if (localRegionalData != null) {
        yield localRegionalData;
      }

      // Fetch from remote source if not available locally
      final response = await _modaRemoteSource.getRegional(dataType, request);
      final regionalData =
          AggregateMapper().convert<RegionalResponse, RegionalData>(response);

      // Store the fetched data locally
      await _localStorageService.setObject<RegionalData>(
        key,
        regionalData.toJson(),
      );

      yield regionalData;
    } catch (e) {
      debugPrint('error during fetch regional: ${e.toString()}');
      yield null;
    }
  }

  Stream<AggregateGraphData?> getRegionalDetail({
    required bool isRoutine,
    required String idLocation,
    DateTime? tanggalAwal1,
    DateTime? tanggalAkhir1,
    String? event,
    String? moda,
    RegionType? type,
  }) async* {
    final key = 'regional_${type?.name}_${idLocation}_$isRoutine';
    try {
      // Check local storage first
      final localRegionalData =
          _localStorageService.getObject<AggregateGraphData>(
        key,
        AggregateGraphData.fromJson,
      );

      if (localRegionalData != null) {
        yield localRegionalData;
      }

      // Fetch from remote source if not available locally
      final api = _strategiMobileApi.getModaApi();

      // Define response variable outside the conditional blocks
      final Response<ModaRegionalIdLocationRoutineGet200Response> response;

      if (isRoutine) {
        response = await api.modaRegionalIdLocationRoutineGet(
          idLocation: idLocation,
          tanggalAwal1: tanggalAwal1?.toDate() ?? DateTime.now().toDate(),
          tanggalAkhir1: tanggalAkhir1?.toDate() ?? DateTime.now().toDate(),
          type: type?.name,
          moda: moda,
        );
      } else {
        response = await api.modaRegionalIdLocationSeasonalGet(
          idLocation: idLocation,
          event: event ?? '',
          type: type?.name,
          moda: moda,
        );
      }

      if (response.data?.data == null) {
        yield null;
      }

      final regionalData = TrafficDataMapper().convert<
          ModaRegionalIdLocationRoutineGet200ResponseData,
          AggregateGraphData>(response.data?.data);

      // Store the fetched data locally
      await _localStorageService.setObject<AggregateGraphData>(
        key,
        regionalData.toJson(),
      );

      yield regionalData;
    } catch (e) {
      debugPrint('error during fetch regional: ${e.toString()}');
      yield null;
    }
  }

  Future<List<IncidentReport>> getIncidentReport(
    ModaType? modaType,
    IncidentReportRequest request,
  ) async {
    final key = 'incident_report_${modaType?.name}_${request.toJson()}';
    try {
      final incident = _strategiMobileApi.getIncidentReportApi();
      final data = await incident.incidentReportGet(
        moda: modaType?.name ?? '',
        page: int.parse(request.page ?? '1'),
        limit: int.parse(request.limit ?? '10'),
        status: int.tryParse(request.status ?? ''),
        startDate: request.startDate?.toDate(),
        endDate: request.endDate?.toDate(),
        category: request.category,
      );

      final result = IncidentReportMapper()
          .convertList<IncidentReportGet200ResponseDataInner, IncidentReport>(
              data.data?.data ?? []);

      await _localStorageService.setList<IncidentReport>(
        key,
        result,
        (incident) => incident.toJson(),
      );

      return result;
    } catch (e) {
      final incident = _localStorageService.getList<IncidentReport>(
        key,
        IncidentReport.fromJson,
      );

      if (incident != null) {
        return incident;
      }

      throw Exception('Repo: Failed to fetch incident report: ${e.toString()}');
    }
  }

  Future<IncidentReport?> getDetailReport(String id) async {
    final key = 'detail_report_$id';
    try {
      // Fetch from remote source if not available locally
      final response = await _modaRemoteSource.getDetailIncidentReport(id);
      final detailReport = ReportMapper()
          .convert<IncidentReportResponse, IncidentReport>(response);

      // Store the fetched data locally
      await _localStorageService.setObject<IncidentReport>(
        key,
        detailReport.toJson(),
      );

      return detailReport;
    } catch (e) {
      // Check local storage first
      final localDetailReport = _localStorageService.getObject<IncidentReport>(
        key,
        IncidentReport.fromJson,
      );

      if (localDetailReport != null) {
        return localDetailReport;
      }
      throw Exception('Repo: Failed to fetch incident report: ${e.toString()}');
    }
  }

  Future<bool> editReport({
    required String id,
    required UpdateLaporanRequest request,
  }) async {
    try {
      await _modaRemoteSource.editReport(id: id, request: request);

      return true;
    } catch (e) {
      throw Exception('Repo: Failed to fetch incident report: ${e.toString()}');
    }
  }

  Future<IncidentReport> getDetailIncidentReport(String id) async {
    try {
      final incident = _strategiMobileApi.getIncidentReportApi();
      final data = await incident.incidentReportIdGet(id: id);

      return IncidentReportMapper()
          .convert<IncidentReportIdGet200ResponseData, IncidentReport>(
              data.data?.data);
    } catch (e) {
      throw Exception(
          'Repo: Failed to fetch detail incident report: ${e.toString()}');
    }
  }

  Stream<OdChartList?> getOdList(
    ModaType modaType,
    DataType dataType,
    ModaRequest request,
    String? search,
  ) async* {
    final key =
        'od_list_${modaType.name}_${dataType.name}_${request.toJson()}_search';
    try {
      final localOdData = _localStorageService.getObject<OdChartList>(
        key,
        OdChartList.fromJson,
      );
      if (localOdData != null) {
        yield localOdData;
      }

      final modaApi = _strategiMobileApi.getModaApi();
      final Response<ModaOdModaRoutineGet200Response> response;

      if (dataType == DataType.routine) {
        response = await modaApi.modaOdModaRoutineGet(
          moda: modaType.name,
          tanggalAwal1: request.tanggalAwal1!.toDate(),
          tanggalAkhir1: request.tanggalAkhir1!.toDate(),
          search: search,
          type: request.type,
        );
      } else {
        response = await modaApi.modaOdModaSeasonalGet(
          moda: modaType.name,
          event: request.event ?? '',
          search: search,
          type: request.type,
        );
      }

      var data = OdMapper()
          .convert<ModaOdModaRoutineGet200Response, OdChartList>(response.data);

      await _localStorageService.setObject<OdChartList>(
        key,
        data.toJson(),
      );

      yield data;
    } catch (e) {
      yield null;
    }
  }

  Stream<OdGraphData?> getOdDetail({
    required ModaType modaType,
    required DataType dataType,
    required ModaRequest request,
  }) async* {
    final key =
        'od_detail_${modaType.name}_${dataType.name}_${request.toJson()}';
    try {
      final localOdDetail = _localStorageService.getObject<OdGraphData>(
        key,
        OdGraphData.fromJson,
      );
      if (localOdDetail != null) {
        yield localOdDetail;
      }

      final modaApi = _strategiMobileApi.getModaApi();
      Response<ModaOdModaRoutineDetailGet200Response> response;

      if (dataType == DataType.routine) {
        response = await modaApi.modaOdModaRoutineDetailGet(
          moda: modaType.name,
          tanggalAwal1: request.tanggalAwal1!.toDate(),
          tanggalAkhir1: request.tanggalAkhir1!.toDate(),
          idDestination: request.idDestination,
          idOrigin: request.idOrigin,
        );
      } else {
        response = await modaApi.modaOdModaSeasonalDetailGet(
            moda: modaType.name,
            event: request.event ?? '',
            idDestination: request.idDestination,
            idOrigin: request.idOrigin);
      }

      var data = OdMapper()
          .convert<ModaOdModaRoutineDetailGet200ResponseData, OdGraphData>(
              response.data?.data);

      await _localStorageService.setObject<OdGraphData>(
        key,
        data.toJson(),
      );

      yield data;
    } catch (e) {
      yield null;
    }
  }

  Future<List<Operator>> getOperatorList(
    ModaType modaType,
    DataType dataType,
    ModaOperatorRequest request,
    String? search,
  ) async {
    final key =
        'operator_list_${modaType.name}_${dataType.name}_${request.toJson()}';
    try {
      final modaApi = _strategiMobileApi.getModaApi();
      Response<BuiltList<ModaOperatorsModaRoutineGet200ResponseInner>> response;

      if (dataType == DataType.routine) {
        response = await modaApi.modaOperatorsModaRoutineGet(
          moda: modaType.name,
          dateStart: request.dateStart?.toDate(),
          dateEnd: request.dateEnd?.toDate(),
          period: request.period,
          search: search,
          sortColumn: request.sortColumn,
          sortDirection: request.sortDirection,
        );
      } else {
        var tmp = await modaApi.modaOperatorsModaSeasonalGet(
          moda: modaType.name,
          event: request.event ?? '',
          search: search,
          sortColumn: request.sortColumn,
          sortDirection: request.sortDirection,
        );
        response = tmp;
      }

      var data = OperatorMapper()
          .convertList<ModaOperatorsModaRoutineGet200ResponseInner, Operator>(
        response.data?.toList() ?? [],
      );

      await _localStorageService.setList<Operator>(
        key,
        data,
        (resp) => resp.toJson(),
      );

      return data;
    } catch (e) {
      final operator = _localStorageService.getList<Operator>(
        key,
        Operator.fromJson,
      );

      if (operator != null) {
        return operator;
      }
      throw Exception('Repo: Failed to fetch operators data: ${e.toString()}');
    }
  }

  Future<ComparisonData?> getComparation({
    required String modaType,
    required int idLocation,
    DateTime? tanggalAkhir1,
    DateTime? tanggalAwal1,
    String? event,
  }) async {
    try {
      final api = _strategiMobileApi.getComparisonApi();

      final comparation = await api.comparisonGet(
        idLocation: idLocation,
        moda: modaType,
        event: event,
        tanggalAwal1: tanggalAwal1?.toDate(),
        tanggalAkhir1: tanggalAkhir1?.toDate(),
      );

      if (comparation.data?.data?.isEmpty ?? true) return null;

      return ComparisonMapper()
          .convert<ComparisonGet200ResponseDataInner, ComparisonData>(
              comparation.data?.data?.first);
    } catch (e) {
      throw Exception('Failed to fetch aggregate: ${e.toString()}');
    }
  }

  Future<OperatorOdResponse> getOperatorOdList(
    ModaType modaType,
    String operatorId,
    ModaOperatorBaseRequest request,
  ) async {
    final key =
        'getOperator_od_list_${modaType.name}_${operatorId}_${request.page}_${request.limit}_${request.search}';
    try {
      final modaApi = _strategiMobileApi.getModaApi();
      Response<ModaOperatorsModaOdGet200Response> response;
      response = await modaApi.modaOperatorsModaOdGet(
        moda: modaType.name,
        idOperator: operatorId,
        page: request.page,
        limit: request.limit,
        search: request.search,
      );

      var data = OperatorOdMapper()
          .convertList<ModaOperatorsModaOdGet200ResponseDataInner, OperatorOd>(
        response.data?.data?.toList() ?? [],
      );

      final operatorOdResp = OperatorOdResponse(
        operatorOds: data,
        total: response.data?.count ?? 0,
      );
      await _localStorageService.setObject<OperatorOdResponse>(
        key,
        operatorOdResp.toJson(),
      );
      return operatorOdResp;
    } catch (e) {
      final operatorOd = _localStorageService.getObject<OperatorOdResponse>(
        key,
        OperatorOdResponse.fromJson,
      );

      if (operatorOd != null) {
        return operatorOd;
      }
      throw Exception(
          'Repo: Failed to fetch operator od data: ${e.toString()}');
    }
  }

  Future<SaranaResponse> getOperatorSaranaList(
    ModaType modaType,
    String operatorId,
    ModaOperatorBaseRequest request,
  ) async {
    final key =
        'operator_sarana_${modaType.name}_${operatorId}_${request.toJson()}';

    try {
      final modaApi = _strategiMobileApi.getModaApi();
      Response<ModaOperatorsModaFleetsGet200Response> response;
      response = await modaApi.modaOperatorsModaFleetsGet(
        moda: modaType.name,
        idOperator: operatorId,
        page: request.page,
        limit: request.limit,
        search: request.search,
      );

      var data = SaranaMapper()
          .convertList<ModaOperatorsModaFleetsGet200ResponseDataInner, Sarana>(
        response.data?.data?.toList() ?? [],
      );

      final saranaResp = SaranaResponse(
        listSarana: data,
        total: response.data?.count ?? 0,
      );
      await _localStorageService.setObject<SaranaResponse>(
        key,
        saranaResp.toJson(),
      );
      return saranaResp;
    } catch (e) {
      final sarana = _localStorageService.getObject<SaranaResponse>(
        key,
        SaranaResponse.fromJson,
      );

      if (sarana != null) {
        return sarana;
      }
      throw Exception(
          'Repo: Failed to fetch sarana operator data: ${e.toString()}');
    }
  }
}
