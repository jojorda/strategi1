import 'package:json_annotation/json_annotation.dart';

part 'cctv_data.g.dart';

@JsonSerializable()
class CctvData {
  String? id;
  String? locationName;
  String? cctvName;
  String? streamUrl;
  String? status;
  String? managerName;
  String? protocol;
  String? latitude;
  String? longitude;
  String? source;
  String? categoryTag;
  String? matra;
  String? cityName;
  String? provinceName;

  CctvData({
    this.id,
    this.locationName,
    this.cctvName,
    this.streamUrl,
    this.status,
    this.managerName,
    this.protocol,
    this.latitude,
    this.longitude,
    this.source,
    this.categoryTag,
    this.matra,
    this.cityName,
    this.provinceName,
  });

  factory CctvData.fromJson(Map<String, dynamic> json) =>
      _$CctvDataFromJson(json);
  Map<String, dynamic> toJson() => _$CctvDataToJson(this);
}
