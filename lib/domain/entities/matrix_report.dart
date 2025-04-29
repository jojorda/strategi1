// domain/entities/matrix_report_entity.dart

import 'package:json_annotation/json_annotation.dart';

part 'matrix_report.g.dart';

@JsonSerializable(explicitToJson: true)
class MatrixReportEntity {
  final List<HeaderEntity>? header;
  final List<MatrixReportDataEntity>? data;

  MatrixReportEntity({this.header, this.data});

  factory MatrixReportEntity.fromJson(Map<String, dynamic> json) =>
      _$MatrixReportEntityFromJson(json);

  Map<String, dynamic> toJson() => _$MatrixReportEntityToJson(this);
}

@JsonSerializable()
class HeaderEntity {
  final String? label;
  final String? value;

  HeaderEntity({this.label, this.value});

  factory HeaderEntity.fromJson(Map<String, dynamic> json) =>
      _$HeaderEntityFromJson(json);

  Map<String, dynamic> toJson() => _$HeaderEntityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MatrixReportDataEntity {
  final String? name;
  final List<DetailEntity>? detail;

  MatrixReportDataEntity({this.name, this.detail});

  factory MatrixReportDataEntity.fromJson(Map<String, dynamic> json) =>
      _$MatrixReportDataEntityFromJson(json);

  Map<String, dynamic> toJson() => _$MatrixReportDataEntityToJson(this);
}

@JsonSerializable()
class DetailEntity {
  final String? label;
  final dynamic value;

  @JsonKey(name: 'status_lapor')
  final String? statusLapor;

  DetailEntity({this.label, this.value, this.statusLapor});

  factory DetailEntity.fromJson(Map<String, dynamic> json) =>
      _$DetailEntityFromJson(json);

  Map<String, dynamic> toJson() => _$DetailEntityToJson(this);
}
