import 'package:json_annotation/json_annotation.dart';

part 'cctv_request.g.dart';

@JsonSerializable()
class CctvRequest {
  @JsonKey(name: "matra", includeIfNull: false)
  String? mode;
  @JsonKey(name: "nama_provinsi", includeIfNull: false)
  String? provinceName;
  @JsonKey(name: "nama_kabupaten_kota", includeIfNull: false)
  String? cityName;
  @JsonKey(name: "search", includeIfNull: false)
  String? search;

  CctvRequest({
    this.mode,
    this.provinceName,
    this.cityName,
    this.search,
  });

  factory CctvRequest.fromJson(Map<String, dynamic> json) =>
      _$CctvRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CctvRequestToJson(this);
}
