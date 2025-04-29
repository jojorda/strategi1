import 'package:json_annotation/json_annotation.dart';

part 'report_approval.g.dart';

enum StatusApproval { approved, rejected, pending }

@JsonSerializable()
class ReportApproval {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "status")
  StatusApproval? status;
  @JsonKey(name: "type")
  String? type;
  @JsonKey(name: "matra")
  String? matra;
  @JsonKey(name: "event")
  String? event;
  @JsonKey(name: "nama")
  String? nama;
  @JsonKey(name: "personil")
  String? personil;
  @JsonKey(name: "pengikut")
  String? pengikut;
  @JsonKey(name: "tanggal")
  DateTime? tanggal;
  @JsonKey(name: "provinsi")
  String? provinsi;
  @JsonKey(name: "kabupaten")
  String? kabupaten;
  @JsonKey(name: "angkutan")
  String? angkutan;
  @JsonKey(name: "unitPelayanan")
  String? unitPelayanan;
  @JsonKey(name: "deskripsi")
  String? deskripsi;
  @JsonKey(name: "isKejadianMenonjol")
  bool? isKejadianMenonjol;
  @JsonKey(name: "kejadianMenonjol")
  String? kejadianMenonjol;
  @JsonKey(name: "koordinatKejadianMenonjol")
  String? koordinatKejadianMenonjol;
  @JsonKey(name: "isKecelakaan")
  bool? isKecelakaan;
  @JsonKey(name: "kecelakaan")
  String? kecelakaan;
  @JsonKey(name: "koordinatKecelakaan")
  String? koordinatKecelakaan;
  @JsonKey(name: "lokasiKecelakaan")
  String? lokasiKecelakaan;
  @JsonKey(name: "pembuat")
  String? pembuat;
  @JsonKey(name: "persetujuan")
  String? persetujuan;
  @JsonKey(name: "poskoTerpadu")
  String? poskoTerpadu;
  @JsonKey(name: "file")
  String? file;
  @JsonKey(name: "photo")
  String? photo;
  @JsonKey(name: "captionPhoto")
  String? captionPhoto;
  @JsonKey(name: "isApproved")
  bool? isApproved;
  @JsonKey(name: "approvedBy")
  String? approvedBy;
  @JsonKey(name: "approvedDate")
  DateTime? approvedDate;
  @JsonKey(name: "approvedNotes")
  String? approvedNotes;
  @JsonKey(name: "rejectedBy")
  String? rejectedBy;
  @JsonKey(name: "rejectedDate")
  DateTime? rejectedDate;
  @JsonKey(name: "rejectedReason")
  String? rejectedReason;
  @JsonKey(name: "rejectedAdditionalComments")
  String? rejectedAdditionalComments;
  @JsonKey(name: "createdAt")
  DateTime? createdAt;
  @JsonKey(name: "updatedAt")
  DateTime? updatedAt;
  @JsonKey(name: "kecelakaanList")
  List<KecelakaanData>? kecelakaanList;
  @JsonKey(name: "cuacaList")
  List<CuacaData>? cuacaList;

  ReportApproval({
    this.id,
    this.status = StatusApproval.pending,
    this.type,
    this.matra,
    this.event,
    this.nama,
    this.personil,
    this.pengikut,
    this.tanggal,
    this.provinsi,
    this.kabupaten,
    this.angkutan,
    this.unitPelayanan,
    this.deskripsi,
    this.isKejadianMenonjol,
    this.kejadianMenonjol,
    this.koordinatKejadianMenonjol,
    this.isKecelakaan,
    this.kecelakaan,
    this.koordinatKecelakaan,
    this.lokasiKecelakaan,
    this.pembuat,
    this.persetujuan,
    this.poskoTerpadu,
    this.file,
    this.photo,
    this.captionPhoto,
    this.isApproved,
    this.approvedBy,
    this.approvedDate,
    this.approvedNotes,
    this.rejectedBy,
    this.rejectedDate,
    this.rejectedReason,
    this.rejectedAdditionalComments,
    this.createdAt,
    this.updatedAt,
    this.kecelakaanList,
    this.cuacaList,
  });

  factory ReportApproval.fromJson(Map<String, dynamic> json) =>
      _$ReportApprovalFromJson(json);

  Map<String, dynamic> toJson() => _$ReportApprovalToJson(this);
}

@JsonSerializable()
class CuacaData {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "idLaporanPantau")
  int? idLaporanPantau;
  @JsonKey(name: "kondisiCuaca")
  String? kondisiCuaca;
  @JsonKey(name: "jarakPandang")
  double? jarakPandang;
  @JsonKey(name: "arahAnginDari")
  String? arahAnginDari;
  @JsonKey(name: "arahAnginKe")
  String? arahAnginKe;
  @JsonKey(name: "kecepatanAngin")
  double? kecepatanAngin;
  @JsonKey(name: "tinggiGelombang")
  double? tinggiGelombang;
  @JsonKey(name: "createdAt")
  DateTime? createdAt;
  @JsonKey(name: "updatedAt")
  DateTime? updatedAt;

  CuacaData({
    this.id,
    this.idLaporanPantau,
    this.kondisiCuaca,
    this.jarakPandang,
    this.arahAnginDari,
    this.arahAnginKe,
    this.kecepatanAngin,
    this.tinggiGelombang,
    this.createdAt,
    this.updatedAt,
  });

  factory CuacaData.fromJson(Map<String, dynamic> json) =>
      _$CuacaDataFromJson(json);

  Map<String, dynamic> toJson() => _$CuacaDataToJson(this);
}

@JsonSerializable()
class KecelakaanData {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "idLaporanPantau")
  int? idLaporanPantau;
  @JsonKey(name: "matra")
  String? matra;
  @JsonKey(name: "tanggalWaktuKejadian")
  DateTime? tanggalWaktuKejadian;
  @JsonKey(name: "jenisKecelakaan")
  String? jenisKecelakaan;
  @JsonKey(name: "uraian")
  String? uraian;
  @JsonKey(name: "korbanJiwa")
  int? korbanJiwa;
  @JsonKey(name: "lukaBerat")
  int? lukaBerat;
  @JsonKey(name: "lukaRingan")
  int? lukaRingan;
  @JsonKey(name: "hilang")
  int? hilang;
  @JsonKey(name: "selamat")
  int? selamat;
  @JsonKey(name: "dampakLingkunganJenis")
  String? dampakLingkunganJenis;
  @JsonKey(name: "dampakLingkunganUraian")
  String? dampakLingkunganUraian;
  @JsonKey(name: "dampakLaluLintasJenis")
  String? dampakLaluLintasJenis;
  @JsonKey(name: "dampakLaluLintasUraian")
  String? dampakLaluLintasUraian;
  @JsonKey(name: "statusPenanggulanganJenis")
  String? statusPenanggulanganJenis;
  @JsonKey(name: "statusPenanggulanganUraian")
  String? statusPenanggulanganUraian;
  @JsonKey(name: "lokasi")
  String? lokasi;
  @JsonKey(name: "koordinat")
  String? koordinat;
  @JsonKey(name: "createdAt")
  DateTime? createdAt;
  @JsonKey(name: "updatedAt")
  DateTime? updatedAt;

  KecelakaanData({
    this.id,
    this.idLaporanPantau,
    this.matra,
    this.tanggalWaktuKejadian,
    this.jenisKecelakaan,
    this.uraian,
    this.korbanJiwa,
    this.lukaBerat,
    this.lukaRingan,
    this.hilang,
    this.selamat,
    this.dampakLingkunganJenis,
    this.dampakLingkunganUraian,
    this.dampakLaluLintasJenis,
    this.dampakLaluLintasUraian,
    this.statusPenanggulanganJenis,
    this.statusPenanggulanganUraian,
    this.lokasi,
    this.koordinat,
    this.createdAt,
    this.updatedAt,
  });

  factory KecelakaanData.fromJson(Map<String, dynamic> json) =>
      _$KecelakaanDataFromJson(json);

  Map<String, dynamic> toJson() => _$KecelakaanDataToJson(this);
}
