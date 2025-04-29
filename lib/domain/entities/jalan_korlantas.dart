class JalanKorlantasDataEntity {
  final bool status;
  final List<JalanKorlantasEntity> data;
  final String? message;
  final SummaryEntity summary;
  final PaginationEntity pagination;

  JalanKorlantasDataEntity({
    required this.status,
    required this.data,
    this.message,
    required this.summary,
    required this.pagination,
  });
}

class JalanKorlantasEntity {
  final String? tanggal;
  final String? waktuKejadian;
  final String? zonaWaktu;
  final String? apaTerjadi;
  final String? uraianKejadian;
  final String? lokasi;
  final String? tkpProvinsi;
  final String? tkpKabupaten;
  final String? tkpKecamatan;
  final String? tkpDesa;
  final String? namaPolda;
  final String? telpPolda;
  final String? latPolda;
  final String? lonPolda;
  final String? namaPolres;
  final String? telpPolres;
  final String? latPolres;
  final String? lonPolres;
  final int totalKerugian;
  final String? kategoriGk;
  final String? namaSubGk;
  final String? empModusOperandi;
  final String? empMotifKejahatan;
  final String? empSasaranKejahatan;

  JalanKorlantasEntity({
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
}

class SummaryEntity {
  final String tanggal;
  final String totalKejadian;
  final String totalMeninggalDunia;
  final String totalLukaBerat;
  final String totalLukaRingan;
  final String totalKerugianMaterial;

  SummaryEntity({
    required this.tanggal,
    required this.totalKejadian,
    required this.totalMeninggalDunia,
    required this.totalLukaBerat,
    required this.totalLukaRingan,
    required this.totalKerugianMaterial,
  });
}

class PaginationEntity {
  final int total;
  final int perPage;
  final int currentPage;
  final int lastPage;
  final int from;
  final int to;

  PaginationEntity({
    required this.total,
    required this.perPage,
    required this.currentPage,
    required this.lastPage,
    required this.from,
    required this.to,
  });
}
