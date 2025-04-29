import 'package:json_annotation/json_annotation.dart';

part 'incident_report_response.g.dart';

@JsonSerializable()
class IncidentReportResponse {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "nama")
  String? name;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "noHp")
  String? phoneNumber;
  @JsonKey(name: "waktuKejadian")
  DateTime? incidentTime;
  @JsonKey(name: "kronologiKejadian")
  String? incidentChronology;
  @JsonKey(name: "dataPendukung")
  List<String>? supportingData;
  @JsonKey(name: "lokasi")
  String? location;
  @JsonKey(name: "longitude")
  double? longitude;
  @JsonKey(name: "latitude")
  double? latitude;
  @JsonKey(name: "status")
  int? status;
  @JsonKey(name: "idVerifier")
  String? verifierId;
  @JsonKey(name: "keterangan")
  dynamic description;
  @JsonKey(name: "modaTransportasi")
  String? transportationMode;
  @JsonKey(name: "kategori")
  String? category;
  @JsonKey(name: "updateLokasi")
  dynamic updateLocation;
  @JsonKey(name: "updateLongitude")
  double? updateLongitude;
  @JsonKey(name: "updateLatitude")
  double? updateLatitude;
  @JsonKey(name: "unitKerja")
  String? workUnit;
  @JsonKey(name: "verifyDate")
  DateTime? verifyDate;
  @JsonKey(name: "idTindaklanjut")
  dynamic followUpId;
  @JsonKey(name: "statusKejadian")
  int? incidentStatus;
  @JsonKey(name: "tindakLanjut")
  dynamic followUp;
  @JsonKey(name: "dataPendukungTindaklanjut")
  dynamic followUpSupportingData;
  @JsonKey(name: "waktuTindaklanjut")
  dynamic followUpTime;
  @JsonKey(name: "createDate")
  DateTime? createDate;
  @JsonKey(name: "updateDate")
  DateTime? updateDate;
  @JsonKey(name: "updateWaktuKejadian")
  dynamic updateIncidentTime;
  @JsonKey(name: "updateKronologiKejadian")
  dynamic updateIncidentChronology;
  @JsonKey(name: "updateDataPendukung")
  dynamic updateSupportingData;
  @JsonKey(name: "nextUpdateModaTransportasi")
  dynamic nextUpdateTransportationMode;
  @JsonKey(name: "nextUpdateKategori")
  dynamic nextUpdateCategory;
  @JsonKey(name: "nextUpdateLokasi")
  dynamic nextUpdateLocation;
  @JsonKey(name: "nextUpdateLongitude")
  dynamic nextUpdateLongitude;
  @JsonKey(name: "nextUpdateLatitude")
  dynamic nextUpdateLatitude;
  @JsonKey(name: "nextUpdateWaktuKejadian")
  dynamic nextUpdateIncidentTime;
  @JsonKey(name: "nextUpdateKronologiKejadian")
  dynamic nextUpdateIncidentChronology;
  @JsonKey(name: "nextUpdateKeterangan")
  dynamic nextUpdateDescription;
  @JsonKey(name: "laporanKejadianDetail")
  IncidentDetailReport? incidentDetailReport;

  IncidentReportResponse({
    this.id,
    this.name,
    this.email,
    this.phoneNumber,
    this.incidentTime,
    this.incidentChronology,
    this.supportingData,
    this.location,
    this.longitude,
    this.latitude,
    this.status,
    this.verifierId,
    this.description,
    this.transportationMode,
    this.category,
    this.updateLocation,
    this.updateLongitude,
    this.updateLatitude,
    this.workUnit,
    this.verifyDate,
    this.followUpId,
    this.incidentStatus,
    this.followUp,
    this.followUpSupportingData,
    this.followUpTime,
    this.createDate,
    this.updateDate,
    this.updateIncidentTime,
    this.updateIncidentChronology,
    this.updateSupportingData,
    this.nextUpdateTransportationMode,
    this.nextUpdateCategory,
    this.nextUpdateLocation,
    this.nextUpdateLongitude,
    this.nextUpdateLatitude,
    this.nextUpdateIncidentTime,
    this.nextUpdateIncidentChronology,
    this.nextUpdateDescription,
    this.incidentDetailReport,
  });

  factory IncidentReportResponse.fromJson(Map<String, dynamic> json) =>
      _$IncidentReportResponseFromJson(json);

  Map<String, dynamic> toJson() => _$IncidentReportResponseToJson(this);
}

@JsonSerializable()
class IncidentDetailReport {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "idLaporanKejadian")
  String? incidentReportId;
  @JsonKey(name: "matra")
  String? sector;
  @JsonKey(name: "jenisKecelakaan")
  String? accidentType;
  @JsonKey(name: "saranaTerlibat")
  List<String>? involvedFacilities;
  @JsonKey(name: "korbanMeninggalDunia")
  int? fatalities;
  @JsonKey(name: "korbanLukaBerat")
  int? seriousInjuries;
  @JsonKey(name: "korbanLukaSedang")
  int? moderateInjuries;
  @JsonKey(name: "korbanLukaRingan")
  int? minorInjuries;
  @JsonKey(name: "korbanHilang")
  int? missingVictims;
  @JsonKey(name: "korbanSelamat")
  int? survivors;
  @JsonKey(name: "onScheneCommander")
  String? onSceneCommander;
  @JsonKey(name: "kerusakanFisik")
  String? physicalDamage;
  @JsonKey(name: "dampakLingkungan")
  String? environmentalImpact;
  @JsonKey(name: "dampakLaluLintas")
  String? trafficImpact;
  @JsonKey(name: "statusPenanggulangan")
  String? mitigationStatus;
  @JsonKey(name: "laporanFinal")
  String? finalReport;
  @JsonKey(name: "isApproved")
  bool? isApproved;
  @JsonKey(name: "approvedBy")
  String? approvedBy;
  @JsonKey(name: "approvedDate")
  DateTime? approvedDate;
  @JsonKey(name: "createDate")
  DateTime? createDate;
  @JsonKey(name: "updateDate")
  dynamic updateDate;
  @JsonKey(name: "approvedNotes")
  String? approvedNotes;
  @JsonKey(name: "rejectedBy")
  String? rejectedBy;
  @JsonKey(name: "rejectedDate")
  DateTime? rejectedDate;
  @JsonKey(name: "rejectedReason")
  String? rejectedReason;
  @JsonKey(name: "rejectedAdditionalComments")
  String? rejectedAdditionalComments;
  @JsonKey(name: "picPelapor")
  dynamic reporterPic;
  @JsonKey(name: "katimPenyediaData")
  String? dataProviderTeamLeader;
  @JsonKey(name: "kabidPusdatin")
  String? dataCenterHead;
  @JsonKey(name: "ketuaUmum")
  String? generalChairman;

  IncidentDetailReport({
    this.id,
    this.incidentReportId,
    this.sector,
    this.accidentType,
    this.involvedFacilities,
    this.fatalities,
    this.seriousInjuries,
    this.moderateInjuries,
    this.minorInjuries,
    this.missingVictims,
    this.survivors,
    this.onSceneCommander,
    this.physicalDamage,
    this.environmentalImpact,
    this.trafficImpact,
    this.mitigationStatus,
    this.finalReport,
    this.isApproved,
    this.approvedBy,
    this.approvedDate,
    this.createDate,
    this.updateDate,
    this.approvedNotes,
    this.rejectedBy,
    this.rejectedDate,
    this.rejectedReason,
    this.rejectedAdditionalComments,
    this.reporterPic,
    this.dataProviderTeamLeader,
    this.dataCenterHead,
    this.generalChairman,
  });

  factory IncidentDetailReport.fromJson(Map<String, dynamic> json) =>
      _$IncidentDetailReportFromJson(json);

  Map<String, dynamic> toJson() => _$IncidentDetailReportToJson(this);
}
