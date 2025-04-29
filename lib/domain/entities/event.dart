import 'package:json_annotation/json_annotation.dart';

part 'event.g.dart';

@JsonSerializable(explicitToJson: true)
class Event {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "nama")
  String nama;
  @JsonKey(name: "tipe")
  String? tipe;
  @JsonKey(name: "tanggalMulai")
  DateTime? tanggalMulai;
  @JsonKey(name: "tanggalSelesai")
  DateTime? tanggalSelesai;
  @JsonKey(name: "prevEvent")
  String? prevEvent;
  @JsonKey(name: "h1")
  DateTime? h1;
  @JsonKey(name: "subNama")
  String? subNama;
  @JsonKey(name: "noteNarasi")
  String? noteNarasi;
  @JsonKey(name: "splitPeriode")
  String? splitPeriode;
  @JsonKey(name: "flag")
  int? flag;
  @JsonKey(name: "h2")
  DateTime? h2;

  Event({
    required this.id,
    required this.nama,
    this.tipe,
    this.tanggalMulai,
    this.tanggalSelesai,
    this.prevEvent,
    this.h1,
    this.subNama,
    this.noteNarasi,
    this.splitPeriode,
    this.flag,
    this.h2,
  });

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

  Map<String, dynamic> toJson() => _$EventToJson(this);
}
