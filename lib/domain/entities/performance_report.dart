import 'package:json_annotation/json_annotation.dart';

part 'performance_report.g.dart';

@JsonSerializable()
class PerformanceReport {
  @JsonKey(name: "pengelola")
  String? pengelola;
  @JsonKey(name: "jumlahSimpul")
  int? jumlahSimpul;
  @JsonKey(name: "jumlahPantau")
  int? jumlahPantau;
  @JsonKey(name: "simpulMelapor")
  int? simpulMelapor;
  @JsonKey(name: "laporanMasuk")
  int? laporanMasuk;
  @JsonKey(name: "targetLaporan")
  int? targetLaporan;
  @JsonKey(name: "persentase")
  String? persentase;

  PerformanceReport({
    this.pengelola,
    this.jumlahSimpul,
    this.jumlahPantau,
    this.simpulMelapor,
    this.laporanMasuk,
    this.targetLaporan,
    this.persentase,
  });

  factory PerformanceReport.fromJson(Map<String, dynamic> json) =>
      _$PerformanceReportFromJson(json);

  Map<String, dynamic> toJson() => _$PerformanceReportToJson(this);
}

@JsonSerializable()
class ReportRequest {
  String? type;
  String? matra;
  String? event;
  String? namaReport;
  DateTime? tanggalReport;
  String? deskripsiReport;
  String? personil;
  String? pengikut;
  bool? isKejadianMenonjol;
  String? kejadianMenonjol;
  String? koordinatKejadianMenonjol;
  bool? isKecelakaan;
  String? koordinatKecelakaan;
  String? lokasiKecelakaan;
  String? provinsi;
  String? kabupaten;
  String? angkutan;
  String? unitPelayanan;
  String? kecelakaan;
  String? pembuatReport;
  String? persetujuan;
  String? filePath;
  String? photoPath;
  String? captionPhoto;

  ReportRequest({
    this.type,
    this.matra,
    this.event,
    this.namaReport,
    this.tanggalReport,
    this.deskripsiReport,
    this.personil,
    this.pengikut,
    this.isKejadianMenonjol,
    this.kejadianMenonjol,
    this.koordinatKejadianMenonjol,
    this.isKecelakaan,
    this.koordinatKecelakaan,
    this.lokasiKecelakaan,
    this.provinsi,
    this.kabupaten,
    this.angkutan,
    this.unitPelayanan,
    this.kecelakaan,
    this.pembuatReport,
    this.persetujuan,
    this.filePath,
    this.photoPath,
    this.captionPhoto,
  });

  factory ReportRequest.fromJson(Map<String, dynamic> json) =>
      _$ReportRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ReportRequestToJson(this);
}
