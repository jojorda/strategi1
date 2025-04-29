// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident_report_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IncidentReportPostRequest extends IncidentReportPostRequest {
  @override
  final String nama;
  @override
  final String? email;
  @override
  final String? noHp;
  @override
  final String waktuKejadian;
  @override
  final String kronologiKejadian;
  @override
  final BuiltList<String>? dataPendukung;
  @override
  final String lokasi;
  @override
  final double? longitude;
  @override
  final double? latitude;
  @override
  final String? modaTransportasi;
  @override
  final String? kategori;
  @override
  final String? unitKerja;
  @override
  final IncidentReportPostRequestLaporanKejadianDetail? laporanKejadianDetail;

  factory _$IncidentReportPostRequest(
          [void Function(IncidentReportPostRequestBuilder)? updates]) =>
      (new IncidentReportPostRequestBuilder()..update(updates))._build();

  _$IncidentReportPostRequest._(
      {required this.nama,
      this.email,
      this.noHp,
      required this.waktuKejadian,
      required this.kronologiKejadian,
      this.dataPendukung,
      required this.lokasi,
      this.longitude,
      this.latitude,
      this.modaTransportasi,
      this.kategori,
      this.unitKerja,
      this.laporanKejadianDetail})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        nama, r'IncidentReportPostRequest', 'nama');
    BuiltValueNullFieldError.checkNotNull(
        waktuKejadian, r'IncidentReportPostRequest', 'waktuKejadian');
    BuiltValueNullFieldError.checkNotNull(
        kronologiKejadian, r'IncidentReportPostRequest', 'kronologiKejadian');
    BuiltValueNullFieldError.checkNotNull(
        lokasi, r'IncidentReportPostRequest', 'lokasi');
  }

  @override
  IncidentReportPostRequest rebuild(
          void Function(IncidentReportPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IncidentReportPostRequestBuilder toBuilder() =>
      new IncidentReportPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IncidentReportPostRequest &&
        nama == other.nama &&
        email == other.email &&
        noHp == other.noHp &&
        waktuKejadian == other.waktuKejadian &&
        kronologiKejadian == other.kronologiKejadian &&
        dataPendukung == other.dataPendukung &&
        lokasi == other.lokasi &&
        longitude == other.longitude &&
        latitude == other.latitude &&
        modaTransportasi == other.modaTransportasi &&
        kategori == other.kategori &&
        unitKerja == other.unitKerja &&
        laporanKejadianDetail == other.laporanKejadianDetail;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nama.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, noHp.hashCode);
    _$hash = $jc(_$hash, waktuKejadian.hashCode);
    _$hash = $jc(_$hash, kronologiKejadian.hashCode);
    _$hash = $jc(_$hash, dataPendukung.hashCode);
    _$hash = $jc(_$hash, lokasi.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, modaTransportasi.hashCode);
    _$hash = $jc(_$hash, kategori.hashCode);
    _$hash = $jc(_$hash, unitKerja.hashCode);
    _$hash = $jc(_$hash, laporanKejadianDetail.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IncidentReportPostRequest')
          ..add('nama', nama)
          ..add('email', email)
          ..add('noHp', noHp)
          ..add('waktuKejadian', waktuKejadian)
          ..add('kronologiKejadian', kronologiKejadian)
          ..add('dataPendukung', dataPendukung)
          ..add('lokasi', lokasi)
          ..add('longitude', longitude)
          ..add('latitude', latitude)
          ..add('modaTransportasi', modaTransportasi)
          ..add('kategori', kategori)
          ..add('unitKerja', unitKerja)
          ..add('laporanKejadianDetail', laporanKejadianDetail))
        .toString();
  }
}

class IncidentReportPostRequestBuilder
    implements
        Builder<IncidentReportPostRequest, IncidentReportPostRequestBuilder> {
  _$IncidentReportPostRequest? _$v;

  String? _nama;
  String? get nama => _$this._nama;
  set nama(String? nama) => _$this._nama = nama;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _noHp;
  String? get noHp => _$this._noHp;
  set noHp(String? noHp) => _$this._noHp = noHp;

  String? _waktuKejadian;
  String? get waktuKejadian => _$this._waktuKejadian;
  set waktuKejadian(String? waktuKejadian) =>
      _$this._waktuKejadian = waktuKejadian;

  String? _kronologiKejadian;
  String? get kronologiKejadian => _$this._kronologiKejadian;
  set kronologiKejadian(String? kronologiKejadian) =>
      _$this._kronologiKejadian = kronologiKejadian;

  ListBuilder<String>? _dataPendukung;
  ListBuilder<String> get dataPendukung =>
      _$this._dataPendukung ??= new ListBuilder<String>();
  set dataPendukung(ListBuilder<String>? dataPendukung) =>
      _$this._dataPendukung = dataPendukung;

  String? _lokasi;
  String? get lokasi => _$this._lokasi;
  set lokasi(String? lokasi) => _$this._lokasi = lokasi;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  String? _modaTransportasi;
  String? get modaTransportasi => _$this._modaTransportasi;
  set modaTransportasi(String? modaTransportasi) =>
      _$this._modaTransportasi = modaTransportasi;

  String? _kategori;
  String? get kategori => _$this._kategori;
  set kategori(String? kategori) => _$this._kategori = kategori;

  String? _unitKerja;
  String? get unitKerja => _$this._unitKerja;
  set unitKerja(String? unitKerja) => _$this._unitKerja = unitKerja;

  IncidentReportPostRequestLaporanKejadianDetailBuilder? _laporanKejadianDetail;
  IncidentReportPostRequestLaporanKejadianDetailBuilder
      get laporanKejadianDetail => _$this._laporanKejadianDetail ??=
          new IncidentReportPostRequestLaporanKejadianDetailBuilder();
  set laporanKejadianDetail(
          IncidentReportPostRequestLaporanKejadianDetailBuilder?
              laporanKejadianDetail) =>
      _$this._laporanKejadianDetail = laporanKejadianDetail;

  IncidentReportPostRequestBuilder() {
    IncidentReportPostRequest._defaults(this);
  }

  IncidentReportPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nama = $v.nama;
      _email = $v.email;
      _noHp = $v.noHp;
      _waktuKejadian = $v.waktuKejadian;
      _kronologiKejadian = $v.kronologiKejadian;
      _dataPendukung = $v.dataPendukung?.toBuilder();
      _lokasi = $v.lokasi;
      _longitude = $v.longitude;
      _latitude = $v.latitude;
      _modaTransportasi = $v.modaTransportasi;
      _kategori = $v.kategori;
      _unitKerja = $v.unitKerja;
      _laporanKejadianDetail = $v.laporanKejadianDetail?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IncidentReportPostRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IncidentReportPostRequest;
  }

  @override
  void update(void Function(IncidentReportPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IncidentReportPostRequest build() => _build();

  _$IncidentReportPostRequest _build() {
    _$IncidentReportPostRequest _$result;
    try {
      _$result = _$v ??
          new _$IncidentReportPostRequest._(
            nama: BuiltValueNullFieldError.checkNotNull(
                nama, r'IncidentReportPostRequest', 'nama'),
            email: email,
            noHp: noHp,
            waktuKejadian: BuiltValueNullFieldError.checkNotNull(
                waktuKejadian, r'IncidentReportPostRequest', 'waktuKejadian'),
            kronologiKejadian: BuiltValueNullFieldError.checkNotNull(
                kronologiKejadian,
                r'IncidentReportPostRequest',
                'kronologiKejadian'),
            dataPendukung: _dataPendukung?.build(),
            lokasi: BuiltValueNullFieldError.checkNotNull(
                lokasi, r'IncidentReportPostRequest', 'lokasi'),
            longitude: longitude,
            latitude: latitude,
            modaTransportasi: modaTransportasi,
            kategori: kategori,
            unitKerja: unitKerja,
            laporanKejadianDetail: _laporanKejadianDetail?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dataPendukung';
        _dataPendukung?.build();

        _$failedField = 'laporanKejadianDetail';
        _laporanKejadianDetail?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IncidentReportPostRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
