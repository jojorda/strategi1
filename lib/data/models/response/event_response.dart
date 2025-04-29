import 'package:json_annotation/json_annotation.dart';

part 'event_response.g.dart';

@JsonSerializable()
class EventResponse {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "nama")
  String? nama;
  @JsonKey(name: "tipe")
  String? tipe;
  @JsonKey(name: "tanggal_mulai")
  DateTime? tanggalMulai;
  @JsonKey(name: "tanggal_selesai")
  DateTime? tanggalSelesai;
  @JsonKey(name: "prev_event")
  String? prevEvent;
  @JsonKey(name: "h_1")
  DateTime? h1;
  @JsonKey(name: "sub_nama")
  String? subNama;
  @JsonKey(name: "note_narasi")
  String? noteNarasi;
  @JsonKey(name: "split_periode")
  String? splitPeriode;
  @JsonKey(name: "flag")
  int? flag;
  @JsonKey(name: "h_2")
  DateTime? h2;

  EventResponse({
    this.id,
    this.nama,
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

  factory EventResponse.fromJson(Map<String, dynamic> json) =>
      _$EventResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EventResponseToJson(this);
}
