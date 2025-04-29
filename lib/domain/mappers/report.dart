import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:strategi_hub_app/data/models/response/incident_report_response.dart';
import 'package:strategi_hub_app/domain/entities/incident_report.dart';
import 'package:strategi_hub_app/domain/entities/performance_report.dart';
import 'package:strategi_hub_app/domain/mappers/shared.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart' hide Report;

import 'report.auto_mappr.dart';

@AutoMappr([
  MapType<PerformanceReportGet200ResponseDataInner, PerformanceReport>(),
  MapType<IncidentReportResponse, IncidentReport>(
    fields: [
      Field('id', from: 'id'),
      Field('name', from: 'nama'),
      Field('email', from: 'email'),
      Field('phoneNumber', from: 'noHp'),
      Field('status', from: 'status'),
      Field('incidentTime', from: 'waktuKejadian'),
      Field('incidentChronology', from: 'kronologiKejadian'),
      Field('supportingData', from: 'dataPendukung'),
      Field('updateDate', from: 'updateDate'),
      Field('involvedVehicles', custom: ReportMapper.mapInvolvedVehicles),
      Field('accidentType', custom: ReportMapper.mapAccidentType),
      Field('location', from: 'lokasi'),
      Field('category', from: 'kategori'),
      Field('longitude', from: 'longitude'),
      Field('latitude', from: 'latitude'),
      Field('fatalities', custom: ReportMapper.mapFatalities),
      Field('seriousInjuries', custom: ReportMapper.mapSeriousInjuries),
      Field('moderateInjuries', custom: ReportMapper.mapModerateInjuries),
      Field('minorInjuries', custom: ReportMapper.mapMinorInjuries),
      Field('missingPersons', custom: ReportMapper.mapMissingPersons),
      Field('survivors', custom: ReportMapper.mapSurvivors),
      Field('onSceneCommander', custom: ReportMapper.mapOnSceneCommander),
      Field('physicalDamage', custom: ReportMapper.mapPhysicalDamage),
      Field('environmentalImpact', custom: ReportMapper.mapEnvironmentalImpact),
      Field('trafficImpact', custom: ReportMapper.mapTrafficImpact),
      Field('mitigationStatus', custom: ReportMapper.mapMitigationStatus),
      Field('sector', custom: ReportMapper.mapSector),
      Field('finalReport', custom: ReportMapper.mapFinalReport),
      Field('workUnit', from: 'unitKerja'),
      Field('reporterPic', custom: ReportMapper.mapReporterPic),
      Field('dataProviderTeamLeader',
          custom: ReportMapper.mapDataProviderTeamLeader),
      Field('dataCenterHead', custom: ReportMapper.mapDataCenterHead),
      Field('generalChairman', custom: ReportMapper.mapGeneralChairman),
    ],
  ),
], includes: [
  SharedMapper(),
])
class ReportMapper extends $ReportMapper {
  static List<String>? mapInvolvedVehicles(IncidentReportResponse data) =>
      data.incidentDetailReport?.involvedFacilities;

  static String? mapAccidentType(IncidentReportResponse data) =>
      data.incidentDetailReport?.accidentType;

  static int? mapFatalities(IncidentReportResponse data) =>
      data.incidentDetailReport?.fatalities;

  static int? mapSeriousInjuries(IncidentReportResponse data) =>
      data.incidentDetailReport?.seriousInjuries;

  static int? mapModerateInjuries(IncidentReportResponse data) =>
      data.incidentDetailReport?.moderateInjuries;

  static int? mapMinorInjuries(IncidentReportResponse data) =>
      data.incidentDetailReport?.minorInjuries;

  static int? mapMissingPersons(IncidentReportResponse data) =>
      data.incidentDetailReport?.missingVictims;

  static int? mapSurvivors(IncidentReportResponse data) =>
      data.incidentDetailReport?.survivors;

  static String? mapOnSceneCommander(IncidentReportResponse data) =>
      data.incidentDetailReport?.onSceneCommander;

  static String? mapPhysicalDamage(IncidentReportResponse data) =>
      data.incidentDetailReport?.physicalDamage;

  static String? mapEnvironmentalImpact(IncidentReportResponse data) =>
      data.incidentDetailReport?.environmentalImpact;

  static String? mapTrafficImpact(IncidentReportResponse data) =>
      data.incidentDetailReport?.trafficImpact;

  static String? mapMitigationStatus(IncidentReportResponse data) =>
      data.incidentDetailReport?.mitigationStatus;

  static String? mapSector(IncidentReportResponse data) =>
      data.incidentDetailReport?.sector;

  static String? mapFinalReport(IncidentReportResponse data) =>
      data.incidentDetailReport?.finalReport;

  static String? mapReporterPic(IncidentReportResponse data) =>
      data.incidentDetailReport?.reporterPic;

  static String? mapDataProviderTeamLeader(IncidentReportResponse data) =>
      data.incidentDetailReport?.dataProviderTeamLeader;

  static String? mapDataCenterHead(IncidentReportResponse data) =>
      data.incidentDetailReport?.dataCenterHead;

  static String? mapGeneralChairman(IncidentReportResponse data) =>
      data.incidentDetailReport?.generalChairman;
}
