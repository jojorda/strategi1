import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:strategi_hub_app/domain/entities/incident_report.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

import 'incident_report.auto_mappr.dart';

@AutoMappr([
  MapType<IncidentReportGet200ResponseDataInner, IncidentReport>(
    fields: [
      Field('name', from: 'nama'),
      Field('location', from: 'lokasi'),
      Field('incidentTime', custom: IncidentReportMapper.mapIncidentTime),
      Field('longitude', custom: IncidentReportMapper.mapLongitude),
      Field('latitude', custom: IncidentReportMapper.mapLatitude),
      Field('involvedVehicles',
          custom: IncidentReportMapper.mapInvolvedVehicles),
      Field('accidentType', custom: IncidentReportMapper.mapAccidentType),
      Field('fatalities', custom: IncidentReportMapper.mapFatalities),
      Field('seriousInjuries', custom: IncidentReportMapper.mapSeriousInjuries),
      Field('moderateInjuries',
          custom: IncidentReportMapper.mapModerateInjuries),
      Field('minorInjuries', custom: IncidentReportMapper.mapMinorInjuries),
      Field('missingPersons', custom: IncidentReportMapper.mapMissingPersons),
      Field('survivors', custom: IncidentReportMapper.mapSurvivors),
      Field('onSceneCommander',
          custom: IncidentReportMapper.mapOnSceneCommander),
      Field('physicalDamage', custom: IncidentReportMapper.mapPhysicalDamage),
      Field('environmentalImpact',
          custom: IncidentReportMapper.mapEnvironmentalImpact),
      Field('trafficImpact', custom: IncidentReportMapper.mapTrafficImpact),
      Field('mitigationStatus',
          custom: IncidentReportMapper.mapMitigationStatus),
      Field('sector', custom: IncidentReportMapper.mapSector),
      Field('finalReport', custom: IncidentReportMapper.mapFinalReport),
    ],
  ),
  MapType<IncidentReportIdGet200ResponseData, IncidentReport>(
    fields: [
      Field('name', from: 'nama'),
      Field('location', from: 'lokasi'),
      Field('incidentChronology', from: 'kronologiKejadian'),
      Field('workUnit', from: 'unitKerja'),
      Field('incidentTime', custom: IncidentReportMapper.mapIncidentTimeGetId),
      Field('longitude', custom: IncidentReportMapper.mapLongitudeGetId),
      Field('latitude', custom: IncidentReportMapper.mapLatitudeGetId),
      Field('involvedVehicles',
          custom: IncidentReportMapper.mapInvolvedVehiclesGetId),
      Field('accidentType', custom: IncidentReportMapper.mapAccidentTypeGetId),
      Field('fatalities', custom: IncidentReportMapper.mapFatalitiesGetId),
      Field('seriousInjuries',
          custom: IncidentReportMapper.mapSeriousInjuriesGetId),
      Field('moderateInjuries',
          custom: IncidentReportMapper.mapModerateInjuriesGetId),
      Field('minorInjuries',
          custom: IncidentReportMapper.mapMinorInjuriesGetId),
      Field('missingPersons',
          custom: IncidentReportMapper.mapMissingPersonsGetId),
      Field('survivors', custom: IncidentReportMapper.mapSurvivorsGetId),
      Field('onSceneCommander',
          custom: IncidentReportMapper.mapOnSceneCommanderGetId),
      Field('physicalDamage',
          custom: IncidentReportMapper.mapPhysicalDamageGetId),
      Field('environmentalImpact',
          custom: IncidentReportMapper.mapEnvironmentalImpactGetId),
      Field('trafficImpact',
          custom: IncidentReportMapper.mapTrafficImpactGetId),
      Field('mitigationStatus',
          custom: IncidentReportMapper.mapMitigationStatusGetId),
      Field('sector', custom: IncidentReportMapper.mapSectorGetId),
      Field('finalReport', custom: IncidentReportMapper.mapFinalReportGetId),
    ],
  ),
])
class IncidentReportMapper extends $IncidentReportMapper {
  static double? mapLongitude(IncidentReportGet200ResponseDataInner? source) =>
      source?.longitude;
  static double? mapLatitude(IncidentReportGet200ResponseDataInner? source) =>
      source?.latitude;
  static List<String>? mapInvolvedVehicles(
      IncidentReportGet200ResponseDataInner? source) {
    if (source == null) return null;
    return source.laporanKejadianDetail?.saranaTerlibat?.toList();
  }

  static String? mapName(IncidentReportGet200ResponseDataInner? source) =>
      source?.nama;
  static String? mapAccidentType(
          IncidentReportGet200ResponseDataInner? source) =>
      source?.laporanKejadianDetail?.jenisKecelakaan;
  static int? mapFatalities(IncidentReportGet200ResponseDataInner? source) =>
      source?.laporanKejadianDetail?.korbanMeninggalDunia?.toInt();
  static int? mapSeriousInjuries(
          IncidentReportGet200ResponseDataInner? source) =>
      source?.laporanKejadianDetail?.korbanLukaBerat?.toInt();
  static int? mapModerateInjuries(
          IncidentReportGet200ResponseDataInner? source) =>
      source?.laporanKejadianDetail?.korbanLukaSedang?.toInt();
  static int? mapMinorInjuries(IncidentReportGet200ResponseDataInner? source) =>
      source?.laporanKejadianDetail?.korbanLukaRingan?.toInt();
  static int? mapMissingPersons(
          IncidentReportGet200ResponseDataInner? source) =>
      source?.laporanKejadianDetail?.korbanHilang?.toInt();
  static int? mapSurvivors(IncidentReportGet200ResponseDataInner? source) =>
      source?.laporanKejadianDetail?.korbanSelamat?.toInt();
  static String? mapOnSceneCommander(
          IncidentReportGet200ResponseDataInner? source) =>
      source?.laporanKejadianDetail?.onScheneCommander;
  static String? mapPhysicalDamage(
          IncidentReportGet200ResponseDataInner? source) =>
      source?.laporanKejadianDetail?.kerusakanFisik;
  static String? mapEnvironmentalImpact(
          IncidentReportGet200ResponseDataInner? source) =>
      source?.laporanKejadianDetail?.dampakLingkungan;
  static String? mapTrafficImpact(
          IncidentReportGet200ResponseDataInner? source) =>
      source?.laporanKejadianDetail?.dampakLaluLintas;
  static String? mapMitigationStatus(
          IncidentReportGet200ResponseDataInner? source) =>
      source?.laporanKejadianDetail?.statusPenanggulangan;
  static String? mapSector(IncidentReportGet200ResponseDataInner? source) =>
      source?.laporanKejadianDetail?.matra;
  static String? mapFinalReport(
          IncidentReportGet200ResponseDataInner? source) =>
      source?.laporanKejadianDetail?.laporanFinal;
  static DateTime? mapIncidentTime(
          IncidentReportGet200ResponseDataInner? source) =>
      DateTime.tryParse(source?.waktuKejadian ?? '');

  static double? mapLongitudeGetId(
          IncidentReportIdGet200ResponseData? source) =>
      source?.longitude;
  static double? mapLatitudeGetId(IncidentReportIdGet200ResponseData? source) =>
      source?.latitude;
  static List<String>? mapInvolvedVehiclesGetId(
      IncidentReportIdGet200ResponseData? source) {
    if (source == null) return null;
    return source.laporanKejadianDetail?.saranaTerlibat?.toList();
  }

  static String? mapNameGetId(IncidentReportIdGet200ResponseData? source) =>
      source?.nama;
  static String? mapAccidentTypeGetId(
          IncidentReportIdGet200ResponseData? source) =>
      source?.laporanKejadianDetail?.jenisKecelakaan;
  static int? mapFatalitiesGetId(IncidentReportIdGet200ResponseData? source) =>
      source?.laporanKejadianDetail?.korbanMeninggalDunia?.toInt();
  static int? mapSeriousInjuriesGetId(
          IncidentReportIdGet200ResponseData? source) =>
      source?.laporanKejadianDetail?.korbanLukaBerat?.toInt();
  static int? mapModerateInjuriesGetId(
          IncidentReportIdGet200ResponseData? source) =>
      source?.laporanKejadianDetail?.korbanLukaSedang?.toInt();
  static int? mapMinorInjuriesGetId(
          IncidentReportIdGet200ResponseData? source) =>
      source?.laporanKejadianDetail?.korbanLukaRingan?.toInt();
  static int? mapMissingPersonsGetId(
          IncidentReportIdGet200ResponseData? source) =>
      source?.laporanKejadianDetail?.korbanHilang?.toInt();
  static int? mapSurvivorsGetId(IncidentReportIdGet200ResponseData? source) =>
      source?.laporanKejadianDetail?.korbanSelamat?.toInt();
  static String? mapOnSceneCommanderGetId(
          IncidentReportIdGet200ResponseData? source) =>
      source?.laporanKejadianDetail?.onScheneCommander;
  static String? mapPhysicalDamageGetId(
          IncidentReportIdGet200ResponseData? source) =>
      source?.laporanKejadianDetail?.kerusakanFisik;
  static String? mapEnvironmentalImpactGetId(
          IncidentReportIdGet200ResponseData? source) =>
      source?.laporanKejadianDetail?.dampakLingkungan;
  static String? mapTrafficImpactGetId(
          IncidentReportIdGet200ResponseData? source) =>
      source?.laporanKejadianDetail?.dampakLaluLintas;
  static String? mapMitigationStatusGetId(
          IncidentReportIdGet200ResponseData? source) =>
      source?.laporanKejadianDetail?.statusPenanggulangan;
  static String? mapSectorGetId(IncidentReportIdGet200ResponseData? source) =>
      source?.laporanKejadianDetail?.matra;
  static String? mapFinalReportGetId(
          IncidentReportIdGet200ResponseData? source) =>
      source?.laporanKejadianDetail?.laporanFinal;
  static DateTime? mapIncidentTimeGetId(
          IncidentReportIdGet200ResponseData? source) =>
      DateTime.tryParse(source?.waktuKejadian ?? '');
}
