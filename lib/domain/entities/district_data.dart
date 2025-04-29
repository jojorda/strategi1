import 'package:json_annotation/json_annotation.dart';

part 'district_data.g.dart';

@JsonSerializable(explicitToJson: true)
class DistrictData {
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "name")
  String name;

  DistrictData({
    required this.id,
    required this.name,
  });

  factory DistrictData.fromJson(Map<String, dynamic> json) =>
      _$DistrictDataFromJson(json);

  Map<String, dynamic> toJson() => _$DistrictDataToJson(this);
}
