import 'package:json_annotation/json_annotation.dart';

part 'pantau_response.g.dart';

@JsonSerializable()
class PantauResponse {
  @JsonKey(name: "jalan")
  List<LocationResponse> jalan;
  @JsonKey(name: "asdp")
  List<LocationResponse> asdp;
  @JsonKey(name: "laut")
  List<LocationResponse> laut;
  @JsonKey(name: "udara")
  List<LocationResponse> udara;
  @JsonKey(name: "ka")
  List<LocationResponse> ka;
  @JsonKey(name: "kai")
  List<LocationResponse> kai;
  @JsonKey(name: "toll")
  List<LocationResponse> toll;
  @JsonKey(name: "stasiun")
  List<StasiunResponse> stasiun;
  @JsonKey(name: "arteri")
  List<LocationResponse> arteri;
  @JsonKey(name: "toll_2")
  List<LocationResponse> toll2;

  PantauResponse({
    required this.jalan,
    required this.asdp,
    required this.laut,
    required this.udara,
    required this.ka,
    required this.kai,
    required this.toll,
    required this.stasiun,
    required this.arteri,
    required this.toll2,
  });

  factory PantauResponse.fromJson(Map<String, dynamic> json) =>
      _$PantauResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PantauResponseToJson(this);
}

@JsonSerializable()
class LocationResponse {
  @JsonKey(name: "id_lokasi")
  int idLokasi;
  @JsonKey(name: "nama")
  String nama;
  @JsonKey(name: "kota")
  String? kota;
  @JsonKey(name: "provinsi")
  String? provinsi;
  @JsonKey(name: "longitude")
  String? longitude;
  @JsonKey(name: "latitude")
  String? latitude;
  @JsonKey(name: "koordinat")
  String? koordinat;
  @JsonKey(name: "kode_referensi")
  String? kodeReferensi;
  @JsonKey(name: "tipe")
  String? tipe;
  @JsonKey(name: "timezone")
  String? timezone;

  LocationResponse({
    required this.idLokasi,
    required this.nama,
    required this.kota,
    required this.provinsi,
    required this.longitude,
    required this.latitude,
    required this.koordinat,
    this.kodeReferensi,
    this.tipe,
    this.timezone,
  });

  factory LocationResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LocationResponseToJson(this);
}

@JsonSerializable()
class StasiunResponse {
  @JsonKey(name: "id_lokasi")
  String idLokasi;
  @JsonKey(name: "kode_referensi")
  String kodeReferensi;
  @JsonKey(name: "koordinat")
  String koordinat;
  @JsonKey(name: "kota")
  String kota;
  @JsonKey(name: "latitude")
  String latitude;
  @JsonKey(name: "longitude")
  String longitude;
  @JsonKey(name: "nama")
  String nama;
  @JsonKey(name: "provinsi")
  String provinsi;

  StasiunResponse({
    required this.idLokasi,
    required this.kodeReferensi,
    required this.koordinat,
    required this.kota,
    required this.latitude,
    required this.longitude,
    required this.nama,
    required this.provinsi,
  });

  factory StasiunResponse.fromJson(Map<String, dynamic> json) =>
      _$StasiunResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StasiunResponseToJson(this);
}
