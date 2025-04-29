import 'package:json_annotation/json_annotation.dart';

part 'update_laporan_request.g.dart';

@JsonSerializable()
class UpdateLaporanRequest {
  @JsonKey(name: "nama")
  String? nama;
  @JsonKey(name: "waktuKejadian")
  DateTime? waktuKejadian;
  @JsonKey(name: "kronologiKejadian")
  String? kronologiKejadian;
  @JsonKey(name: "lokasi")
  String? lokasi;
  @JsonKey(name: "laporanKejadianDetail")
  LaporanKejadianDetail? laporanKejadianDetail;

  UpdateLaporanRequest({
    this.nama,
    this.waktuKejadian,
    this.kronologiKejadian,
    this.lokasi,
    this.laporanKejadianDetail,
  });

  factory UpdateLaporanRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateLaporanRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateLaporanRequestToJson(this);
}

@JsonSerializable()
class LaporanKejadianDetail {
  @JsonKey(name: "matra")
  String? matra;
  @JsonKey(name: "jenisKecelakaan")
  String? jenisKecelakaan;

  LaporanKejadianDetail({
    this.matra,
    this.jenisKecelakaan,
  });

  factory LaporanKejadianDetail.fromJson(Map<String, dynamic> json) =>
      _$LaporanKejadianDetailFromJson(json);

  Map<String, dynamic> toJson() => _$LaporanKejadianDetailToJson(this);
}
