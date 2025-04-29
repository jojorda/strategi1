import 'package:json_annotation/json_annotation.dart';

part 'report_data_response.g.dart';

@JsonSerializable()
class ReportData {
  String? namaData;
  String? url;

  ReportData({
    this.namaData,
    this.url,
  });

  factory ReportData.fromJson(Map<String, dynamic> json) =>
      _$ReportDataFromJson(json);

  Map<String, dynamic> toJson() => _$ReportDataToJson(this);
}
