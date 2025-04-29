import 'package:json_annotation/json_annotation.dart';

part 'jalan_korlantas_response.g.dart';

@JsonSerializable()
class JalanKorlantasResponse {
  final bool status;
  final List<JalanData> data;
  final String? message;
  final Summary summary;
  final Pagination pagination;

  JalanKorlantasResponse({
    required this.status,
    required this.data,
    this.message,
    required this.summary,
    required this.pagination,
  });

  factory JalanKorlantasResponse.fromJson(Map<String, dynamic> json) =>
      _$JalanKorlantasResponseFromJson(json);

  Map<String, dynamic> toJson() => _$JalanKorlantasResponseToJson(this);
}

@JsonSerializable()
class JalanData {
  final String? tanggal;

  @JsonKey(name: 'waktu_kejadian')
  final String? waktuKejadian;

  @JsonKey(name: 'zona_waktu')
  final String? zonaWaktu;

  @JsonKey(name: 'apa_terjadi')
  final String? apaTerjadi;

  @JsonKey(name: 'uraian_kejadian')
  final String? uraianKejadian;

  final String? lokasi;

  @JsonKey(name: 'tkp_provinsi')
  final String? tkpProvinsi;

  @JsonKey(name: 'tkp_kabupaten')
  final String? tkpKabupaten;

  @JsonKey(name: 'tkp_kecamatan')
  final String? tkpKecamatan;

  @JsonKey(name: 'tkp_desa')
  final String? tkpDesa;

  @JsonKey(name: 'nama_polda')
  final String? namaPolda;

  @JsonKey(name: 'telp_polda')
  final String? telpPolda;

  @JsonKey(name: 'lat_polda')
  final String? latPolda;

  @JsonKey(name: 'lon_polda')
  final String? lonPolda;

  @JsonKey(name: 'nama_polres')
  final String? namaPolres;

  @JsonKey(name: 'telp_polres')
  final String? telpPolres;

  @JsonKey(name: 'lat_polres')
  final String? latPolres;

  @JsonKey(name: 'lon_polres')
  final String? lonPolres;

  @JsonKey(name: 'total_kerugian')
  final int totalKerugian;

  @JsonKey(name: 'kategori_gk')
  final String? kategoriGk;

  @JsonKey(name: 'nama_sub_gk')
  final String? namaSubGk;

  @JsonKey(name: 'emp_modus_operandi')
  final String? empModusOperandi;

  @JsonKey(name: 'emp_motif_kejahatan')
  final String? empMotifKejahatan;

  @JsonKey(name: 'emp_sasaran_kejahatan')
  final String? empSasaranKejahatan;

  JalanData({
    required this.tanggal,
    required this.waktuKejadian,
    required this.zonaWaktu,
    required this.apaTerjadi,
    required this.uraianKejadian,
    required this.lokasi,
    required this.tkpProvinsi,
    required this.tkpKabupaten,
    required this.tkpKecamatan,
    required this.tkpDesa,
    required this.namaPolda,
    required this.telpPolda,
    required this.latPolda,
    required this.lonPolda,
    required this.namaPolres,
    required this.telpPolres,
    required this.latPolres,
    required this.lonPolres,
    required this.totalKerugian,
    required this.kategoriGk,
    required this.namaSubGk,
    this.empModusOperandi,
    required this.empMotifKejahatan,
    required this.empSasaranKejahatan,
  });

  factory JalanData.fromJson(Map<String, dynamic> json) =>
      _$JalanDataFromJson(json);

  Map<String, dynamic> toJson() => _$JalanDataToJson(this);
}

@JsonSerializable()
class Summary {
  final String tanggal;

  @JsonKey(name: 'total_kejadian')
  final String totalKejadian;

  @JsonKey(name: 'total_meninggal_dunia')
  final String totalMeninggalDunia;

  @JsonKey(name: 'total_luka_berat')
  final String totalLukaBerat;

  @JsonKey(name: 'total_luka_ringan')
  final String totalLukaRingan;

  @JsonKey(name: 'total_kerugian_material')
  final String totalKerugianMaterial;

  Summary({
    required this.tanggal,
    required this.totalKejadian,
    required this.totalMeninggalDunia,
    required this.totalLukaBerat,
    required this.totalLukaRingan,
    required this.totalKerugianMaterial,
  });

  factory Summary.fromJson(Map<String, dynamic> json) =>
      _$SummaryFromJson(json);

  Map<String, dynamic> toJson() => _$SummaryToJson(this);
}

@JsonSerializable()
class Pagination {
  final int total;

  @JsonKey(name: 'per_page')
  final int perPage;

  @JsonKey(name: 'current_page')
  final int currentPage;

  @JsonKey(name: 'last_page')
  final int lastPage;

  final int from;
  final int to;

  Pagination({
    required this.total,
    required this.perPage,
    required this.currentPage,
    required this.lastPage,
    required this.from,
    required this.to,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationToJson(this);
}
