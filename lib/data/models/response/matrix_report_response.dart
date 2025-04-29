import 'package:json_annotation/json_annotation.dart';

part 'matrix_report_response.g.dart';

@JsonSerializable()
class MatrixReportResponse {
  final List<HeaderItem>? header;
  final List<MatrixReportDataItem>? data;

  MatrixReportResponse({this.header, this.data});

  factory MatrixReportResponse.fromJson(Map<String, dynamic> json) =>
      _$MatrixReportResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MatrixReportResponseToJson(this);
}

@JsonSerializable()
class HeaderItem {
  final String? label;
  final String? value;

  HeaderItem({this.label, this.value});

  factory HeaderItem.fromJson(Map<String, dynamic> json) =>
      _$HeaderItemFromJson(json);

  Map<String, dynamic> toJson() => _$HeaderItemToJson(this);
}

@JsonSerializable()
class MatrixReportDataItem {
  final String? name;
  final List<DetailItem>? detail;

  MatrixReportDataItem({this.name, this.detail});

  factory MatrixReportDataItem.fromJson(Map<String, dynamic> json) =>
      _$MatrixReportDataItemFromJson(json);

  Map<String, dynamic> toJson() => _$MatrixReportDataItemToJson(this);
}

@JsonSerializable()
class DetailItem {
  final String? label;
  final dynamic value;

  @JsonKey(name: 'status_lapor')
  final String? statusLapor;

  DetailItem({
    this.label,
    this.value,
    this.statusLapor,
  });

  factory DetailItem.fromJson(Map<String, dynamic> json) =>
      _$DetailItemFromJson(json);

  Map<String, dynamic> toJson() => _$DetailItemToJson(this);
}
