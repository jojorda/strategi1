import 'package:json_annotation/json_annotation.dart';

part 'incident_report_request.g.dart';

@JsonSerializable()
class IncidentReportRequest {
  @JsonKey(name: "moda", includeIfNull: false)
  String? moda;
  @JsonKey(name: "page", includeIfNull: false)
  String? page;
  @JsonKey(name: "limit", includeIfNull: false)
  String? limit;
  @JsonKey(name: "status", includeIfNull: false)
  String? status;
  @JsonKey(name: "startDate", includeIfNull: false)
  DateTime? startDate;
  @JsonKey(name: "endDate", includeIfNull: false)
  DateTime? endDate;
  @JsonKey(name: "category", includeIfNull: false)
  String? category;

  IncidentReportRequest({
    this.moda,
    this.page,
    this.limit,
    this.status,
    this.startDate,
    this.endDate,
    this.category,
  });

  factory IncidentReportRequest.fromJson(Map<String, dynamic> json) =>
      _$IncidentReportRequestFromJson(json);

  Map<String, dynamic> toJson() => _$IncidentReportRequestToJson(this);

  IncidentReportRequest copyWith({
    String? moda,
    String? page,
    String? limit,
    String? status,
    DateTime? startDate,
    DateTime? endDate,
    String? category,
  }) {
    return IncidentReportRequest(
      moda: moda ?? this.moda,
      page: page ?? this.page,
      limit: limit ?? this.limit,
      status: status ?? this.status,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      category: category ?? this.category,
    );
  }

  String generateStorageKey() {
    return [
      moda,
      page,
      limit,
      status,
      startDate?.toIso8601String(),
      endDate?.toIso8601String(),
      category
    ].where((element) => element != null).join('_');
  }
}
