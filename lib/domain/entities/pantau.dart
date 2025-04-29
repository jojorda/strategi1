import 'package:json_annotation/json_annotation.dart';

part 'pantau.g.dart';

@JsonSerializable(explicitToJson: true)
class Simpul {
  List<Location>? jalan;
  List<Location>? asdp;
  List<Location>? laut;
  List<Location>? udara;
  List<Location>? ka;
  List<Location>? kai;
  List<Location>? toll;
  List<Location>? stasiun;
  List<Location>? arteri;
  List<Location>? toll2;

  Simpul({
    this.jalan,
    this.asdp,
    this.laut,
    this.udara,
    this.ka,
    this.kai,
    this.toll,
    this.stasiun,
    this.arteri,
    this.toll2,
  });
  factory Simpul.fromJson(Map<String, dynamic> json) => _$SimpulFromJson(json);
  Map<String, dynamic> toJson() => _$SimpulToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Location {
  String? idLokasi;
  String? nama;
  String? kota;
  String? provinsi;
  String? longitude;
  String? latitude;
  String? koordinat;
  String? kodeReferensi;
  String? tipe;
  String? timezone;

  Location({
    this.idLokasi,
    this.nama,
    this.kota,
    this.provinsi,
    this.longitude,
    this.latitude,
    this.koordinat,
    this.kodeReferensi,
    this.tipe,
    this.timezone,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
