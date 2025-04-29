import 'package:json_annotation/json_annotation.dart';

part 'incident_report.g.dart';

@JsonSerializable()
class IncidentReport {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "phoneNumber")
  String? phoneNumber;
  @JsonKey(name: "status")
  num? status;
  @JsonKey(name: "incidentTime")
  DateTime? incidentTime;
  @JsonKey(name: "incidentChronology")
  String? incidentChronology;
  @JsonKey(name: "supportingData")
  List<String>? supportingData;
  @JsonKey(name: "updateDate")
  DateTime? updateDate;
  @JsonKey(name: "involvedVehicles")
  List<String>? involvedVehicles;
  @JsonKey(name: "accidentType")
  String? accidentType;
  @JsonKey(name: "location")
  String? location;
  @JsonKey(name: "category")
  String? category;
  @JsonKey(name: "longitude")
  double? longitude;
  @JsonKey(name: "latitude")
  double? latitude;
  @JsonKey(name: "fatalities")
  int? fatalities;
  @JsonKey(name: "seriousInjuries")
  int? seriousInjuries;
  @JsonKey(name: "moderateInjuries")
  int? moderateInjuries;
  @JsonKey(name: "minorInjuries")
  int? minorInjuries;
  @JsonKey(name: "missingPersons")
  int? missingPersons;
  @JsonKey(name: "survivors")
  int? survivors;
  @JsonKey(name: "onSceneCommander")
  String? onSceneCommander;
  @JsonKey(name: "physicalDamage")
  String? physicalDamage;
  @JsonKey(name: "environmentalImpact")
  String? environmentalImpact;
  @JsonKey(name: "trafficImpact")
  String? trafficImpact;
  @JsonKey(name: "mitigationStatus")
  String? mitigationStatus;
  @JsonKey(name: "sector")
  String? sector;
  @JsonKey(name: "finalReport")
  String? finalReport;
  @JsonKey(name: "workUnit")
  String? workUnit;
  @JsonKey(name: "reporterPic")
  String? reporterPic;
  @JsonKey(name: "dataProviderTeamLeader")
  String? dataProviderTeamLeader;
  @JsonKey(name: "dataCenterHead")
  String? dataCenterHead;
  @JsonKey(name: "generalChairman")
  String? generalChairman;

  IncidentReport({
    this.id,
    this.name,
    this.email,
    this.phoneNumber,
    this.status,
    this.incidentTime,
    this.incidentChronology,
    this.supportingData,
    this.updateDate,
    this.involvedVehicles,
    this.accidentType,
    this.location,
    this.longitude,
    this.latitude,
    this.fatalities,
    this.seriousInjuries,
    this.moderateInjuries,
    this.minorInjuries,
    this.missingPersons,
    this.survivors,
    this.onSceneCommander,
    this.physicalDamage,
    this.environmentalImpact,
    this.trafficImpact,
    this.mitigationStatus,
    this.sector,
    this.finalReport,
    this.workUnit,
    this.reporterPic,
    this.dataProviderTeamLeader,
    this.dataCenterHead,
    this.generalChairman,
  });

  factory IncidentReport.fromJson(Map<String, dynamic> json) =>
      _$IncidentReportFromJson(json);

  Map<String, dynamic> toJson() => _$IncidentReportToJson(this);
}
