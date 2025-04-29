// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kecelakaan.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Kecelakaan extends Kecelakaan {
  @override
  final int? id;
  @override
  final int? idLaporanPantau;
  @override
  final String? matra;
  @override
  final DateTime? tanggalWaktuKejadian;
  @override
  final String? jenisKecelakaan;
  @override
  final String? uraian;
  @override
  final int? korbanJiwa;
  @override
  final int? lukaBerat;
  @override
  final int? lukaRingan;
  @override
  final int? hilang;
  @override
  final int? selamat;
  @override
  final String? dampakLingkunganJenis;
  @override
  final String? dampakLingkunganUraian;
  @override
  final String? dampakLaluLintasJenis;
  @override
  final String? dampakLaluLintasUraian;
  @override
  final String? statusPenanggulanganJenis;
  @override
  final String? statusPenanggulanganUraian;
  @override
  final String? lokasi;
  @override
  final String? koordinat;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$Kecelakaan([void Function(KecelakaanBuilder)? updates]) =>
      (new KecelakaanBuilder()..update(updates))._build();

  _$Kecelakaan._(
      {this.id,
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
      this.updatedAt})
      : super._();

  @override
  Kecelakaan rebuild(void Function(KecelakaanBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KecelakaanBuilder toBuilder() => new KecelakaanBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Kecelakaan &&
        id == other.id &&
        idLaporanPantau == other.idLaporanPantau &&
        matra == other.matra &&
        tanggalWaktuKejadian == other.tanggalWaktuKejadian &&
        jenisKecelakaan == other.jenisKecelakaan &&
        uraian == other.uraian &&
        korbanJiwa == other.korbanJiwa &&
        lukaBerat == other.lukaBerat &&
        lukaRingan == other.lukaRingan &&
        hilang == other.hilang &&
        selamat == other.selamat &&
        dampakLingkunganJenis == other.dampakLingkunganJenis &&
        dampakLingkunganUraian == other.dampakLingkunganUraian &&
        dampakLaluLintasJenis == other.dampakLaluLintasJenis &&
        dampakLaluLintasUraian == other.dampakLaluLintasUraian &&
        statusPenanggulanganJenis == other.statusPenanggulanganJenis &&
        statusPenanggulanganUraian == other.statusPenanggulanganUraian &&
        lokasi == other.lokasi &&
        koordinat == other.koordinat &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, idLaporanPantau.hashCode);
    _$hash = $jc(_$hash, matra.hashCode);
    _$hash = $jc(_$hash, tanggalWaktuKejadian.hashCode);
    _$hash = $jc(_$hash, jenisKecelakaan.hashCode);
    _$hash = $jc(_$hash, uraian.hashCode);
    _$hash = $jc(_$hash, korbanJiwa.hashCode);
    _$hash = $jc(_$hash, lukaBerat.hashCode);
    _$hash = $jc(_$hash, lukaRingan.hashCode);
    _$hash = $jc(_$hash, hilang.hashCode);
    _$hash = $jc(_$hash, selamat.hashCode);
    _$hash = $jc(_$hash, dampakLingkunganJenis.hashCode);
    _$hash = $jc(_$hash, dampakLingkunganUraian.hashCode);
    _$hash = $jc(_$hash, dampakLaluLintasJenis.hashCode);
    _$hash = $jc(_$hash, dampakLaluLintasUraian.hashCode);
    _$hash = $jc(_$hash, statusPenanggulanganJenis.hashCode);
    _$hash = $jc(_$hash, statusPenanggulanganUraian.hashCode);
    _$hash = $jc(_$hash, lokasi.hashCode);
    _$hash = $jc(_$hash, koordinat.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Kecelakaan')
          ..add('id', id)
          ..add('idLaporanPantau', idLaporanPantau)
          ..add('matra', matra)
          ..add('tanggalWaktuKejadian', tanggalWaktuKejadian)
          ..add('jenisKecelakaan', jenisKecelakaan)
          ..add('uraian', uraian)
          ..add('korbanJiwa', korbanJiwa)
          ..add('lukaBerat', lukaBerat)
          ..add('lukaRingan', lukaRingan)
          ..add('hilang', hilang)
          ..add('selamat', selamat)
          ..add('dampakLingkunganJenis', dampakLingkunganJenis)
          ..add('dampakLingkunganUraian', dampakLingkunganUraian)
          ..add('dampakLaluLintasJenis', dampakLaluLintasJenis)
          ..add('dampakLaluLintasUraian', dampakLaluLintasUraian)
          ..add('statusPenanggulanganJenis', statusPenanggulanganJenis)
          ..add('statusPenanggulanganUraian', statusPenanggulanganUraian)
          ..add('lokasi', lokasi)
          ..add('koordinat', koordinat)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class KecelakaanBuilder implements Builder<Kecelakaan, KecelakaanBuilder> {
  _$Kecelakaan? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _idLaporanPantau;
  int? get idLaporanPantau => _$this._idLaporanPantau;
  set idLaporanPantau(int? idLaporanPantau) =>
      _$this._idLaporanPantau = idLaporanPantau;

  String? _matra;
  String? get matra => _$this._matra;
  set matra(String? matra) => _$this._matra = matra;

  DateTime? _tanggalWaktuKejadian;
  DateTime? get tanggalWaktuKejadian => _$this._tanggalWaktuKejadian;
  set tanggalWaktuKejadian(DateTime? tanggalWaktuKejadian) =>
      _$this._tanggalWaktuKejadian = tanggalWaktuKejadian;

  String? _jenisKecelakaan;
  String? get jenisKecelakaan => _$this._jenisKecelakaan;
  set jenisKecelakaan(String? jenisKecelakaan) =>
      _$this._jenisKecelakaan = jenisKecelakaan;

  String? _uraian;
  String? get uraian => _$this._uraian;
  set uraian(String? uraian) => _$this._uraian = uraian;

  int? _korbanJiwa;
  int? get korbanJiwa => _$this._korbanJiwa;
  set korbanJiwa(int? korbanJiwa) => _$this._korbanJiwa = korbanJiwa;

  int? _lukaBerat;
  int? get lukaBerat => _$this._lukaBerat;
  set lukaBerat(int? lukaBerat) => _$this._lukaBerat = lukaBerat;

  int? _lukaRingan;
  int? get lukaRingan => _$this._lukaRingan;
  set lukaRingan(int? lukaRingan) => _$this._lukaRingan = lukaRingan;

  int? _hilang;
  int? get hilang => _$this._hilang;
  set hilang(int? hilang) => _$this._hilang = hilang;

  int? _selamat;
  int? get selamat => _$this._selamat;
  set selamat(int? selamat) => _$this._selamat = selamat;

  String? _dampakLingkunganJenis;
  String? get dampakLingkunganJenis => _$this._dampakLingkunganJenis;
  set dampakLingkunganJenis(String? dampakLingkunganJenis) =>
      _$this._dampakLingkunganJenis = dampakLingkunganJenis;

  String? _dampakLingkunganUraian;
  String? get dampakLingkunganUraian => _$this._dampakLingkunganUraian;
  set dampakLingkunganUraian(String? dampakLingkunganUraian) =>
      _$this._dampakLingkunganUraian = dampakLingkunganUraian;

  String? _dampakLaluLintasJenis;
  String? get dampakLaluLintasJenis => _$this._dampakLaluLintasJenis;
  set dampakLaluLintasJenis(String? dampakLaluLintasJenis) =>
      _$this._dampakLaluLintasJenis = dampakLaluLintasJenis;

  String? _dampakLaluLintasUraian;
  String? get dampakLaluLintasUraian => _$this._dampakLaluLintasUraian;
  set dampakLaluLintasUraian(String? dampakLaluLintasUraian) =>
      _$this._dampakLaluLintasUraian = dampakLaluLintasUraian;

  String? _statusPenanggulanganJenis;
  String? get statusPenanggulanganJenis => _$this._statusPenanggulanganJenis;
  set statusPenanggulanganJenis(String? statusPenanggulanganJenis) =>
      _$this._statusPenanggulanganJenis = statusPenanggulanganJenis;

  String? _statusPenanggulanganUraian;
  String? get statusPenanggulanganUraian => _$this._statusPenanggulanganUraian;
  set statusPenanggulanganUraian(String? statusPenanggulanganUraian) =>
      _$this._statusPenanggulanganUraian = statusPenanggulanganUraian;

  String? _lokasi;
  String? get lokasi => _$this._lokasi;
  set lokasi(String? lokasi) => _$this._lokasi = lokasi;

  String? _koordinat;
  String? get koordinat => _$this._koordinat;
  set koordinat(String? koordinat) => _$this._koordinat = koordinat;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  KecelakaanBuilder() {
    Kecelakaan._defaults(this);
  }

  KecelakaanBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _idLaporanPantau = $v.idLaporanPantau;
      _matra = $v.matra;
      _tanggalWaktuKejadian = $v.tanggalWaktuKejadian;
      _jenisKecelakaan = $v.jenisKecelakaan;
      _uraian = $v.uraian;
      _korbanJiwa = $v.korbanJiwa;
      _lukaBerat = $v.lukaBerat;
      _lukaRingan = $v.lukaRingan;
      _hilang = $v.hilang;
      _selamat = $v.selamat;
      _dampakLingkunganJenis = $v.dampakLingkunganJenis;
      _dampakLingkunganUraian = $v.dampakLingkunganUraian;
      _dampakLaluLintasJenis = $v.dampakLaluLintasJenis;
      _dampakLaluLintasUraian = $v.dampakLaluLintasUraian;
      _statusPenanggulanganJenis = $v.statusPenanggulanganJenis;
      _statusPenanggulanganUraian = $v.statusPenanggulanganUraian;
      _lokasi = $v.lokasi;
      _koordinat = $v.koordinat;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Kecelakaan other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Kecelakaan;
  }

  @override
  void update(void Function(KecelakaanBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Kecelakaan build() => _build();

  _$Kecelakaan _build() {
    final _$result = _$v ??
        new _$Kecelakaan._(
          id: id,
          idLaporanPantau: idLaporanPantau,
          matra: matra,
          tanggalWaktuKejadian: tanggalWaktuKejadian,
          jenisKecelakaan: jenisKecelakaan,
          uraian: uraian,
          korbanJiwa: korbanJiwa,
          lukaBerat: lukaBerat,
          lukaRingan: lukaRingan,
          hilang: hilang,
          selamat: selamat,
          dampakLingkunganJenis: dampakLingkunganJenis,
          dampakLingkunganUraian: dampakLingkunganUraian,
          dampakLaluLintasJenis: dampakLaluLintasJenis,
          dampakLaluLintasUraian: dampakLaluLintasUraian,
          statusPenanggulanganJenis: statusPenanggulanganJenis,
          statusPenanggulanganUraian: statusPenanggulanganUraian,
          lokasi: lokasi,
          koordinat: koordinat,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
