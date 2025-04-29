import 'package:json_annotation/json_annotation.dart';

part 'province_response.g.dart';

@JsonSerializable()
class ProvinceResponse {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "nama_provinsi")
  String? namaProvinsi;

  ProvinceResponse({
    this.id,
    this.namaProvinsi,
  });

  factory ProvinceResponse.fromJson(Map<String, dynamic> json) =>
      _$ProvinceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProvinceResponseToJson(this);
}
