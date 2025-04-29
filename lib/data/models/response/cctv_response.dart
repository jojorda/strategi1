import 'package:json_annotation/json_annotation.dart';

part 'cctv_response.g.dart';

@JsonSerializable()
class CCTVResponse {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "namaLokasi")
  String? locationName;
  @JsonKey(name: "namaCctv")
  String? cctvName;
  @JsonKey(name: "streamUrl")
  String? streamUrl;
  @JsonKey(name: "status")
  String? status;
  @JsonKey(name: "namaPengelola")
  String? managerName;
  @JsonKey(name: "protocol")
  String? protocol;
  @JsonKey(name: "latitude")
  String? latitude;
  @JsonKey(name: "longitude")
  String? longitude;
  @JsonKey(name: "source")
  String? source;
  @JsonKey(name: "tagKategori")
  String? categoryTag;
  @JsonKey(name: "matra")
  String? matra;
  @JsonKey(name: "namaKabupatenKota")
  String? cityName;
  @JsonKey(name: "namaProvinsi")
  String? provinceName;

  CCTVResponse({
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

  factory CCTVResponse.fromJson(Map<String, dynamic> json) =>
      _$CCTVResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CCTVResponseToJson(this);
}
