import 'package:json_annotation/json_annotation.dart';

part 'province_data.g.dart';

@JsonSerializable(explicitToJson: true)
class ProvinceData {
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "name")
  String name;

  ProvinceData({
    required this.id,
    required this.name,
  });

  factory ProvinceData.fromJson(Map<String, dynamic> json) =>
      _$ProvinceDataFromJson(json);

  Map<String, dynamic> toJson() => _$ProvinceDataToJson(this);
}
