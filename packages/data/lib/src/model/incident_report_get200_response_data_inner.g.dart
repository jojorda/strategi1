// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident_report_get200_response_data_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IncidentReportGet200ResponseDataInner
    extends IncidentReportGet200ResponseDataInner {
  @override
  final String? id;
  @override
  final String? nama;
  @override
  final String? email;
  @override
  final String? noHp;
  @override
  final String? waktuKejadian;
  @override
  final String? kronologiKejadian;
  @override
  final BuiltList<String>? dataPendukung;
  @override
  final String? lokasi;
  @override
  final double? longitude;
  @override
  final double? latitude;
  @override
  final num? status;
  @override
  final String? idVerifier;
  @override
  final String? keterangan;
  @override
  final String? modaTransportasi;
  @override
  final String? kategori;
  @override
  final String? createDate;
  @override
  final String? updateDate;
  @override
  final IncidentReportGet200ResponseDataInnerLaporanKejadianDetail?
      laporanKejadianDetail;

  factory _$IncidentReportGet200ResponseDataInner(
          [void Function(IncidentReportGet200ResponseDataInnerBuilder)?
              updates]) =>
      (new IncidentReportGet200ResponseDataInnerBuilder()..update(updates))
          ._build();

  _$IncidentReportGet200ResponseDataInner._(
      {this.id,
      this.nama,
      this.email,
      this.noHp,
      this.waktuKejadian,
      this.kronologiKejadian,
      this.dataPendukung,
      this.lokasi,
      this.longitude,
      this.latitude,
      this.status,
      this.idVerifier,
      this.keterangan,
      this.modaTransportasi,
      this.kategori,
      this.createDate,
      this.updateDate,
      this.laporanKejadianDetail})
      : super._();

  @override
  IncidentReportGet200ResponseDataInner rebuild(
          void Function(IncidentReportGet200ResponseDataInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IncidentReportGet200ResponseDataInnerBuilder toBuilder() =>
      new IncidentReportGet200ResponseDataInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IncidentReportGet200ResponseDataInner &&
        id == other.id &&
        nama == other.nama &&
        email == other.email &&
        noHp == other.noHp &&
        waktuKejadian == other.waktuKejadian &&
        kronologiKejadian == other.kronologiKejadian &&
        dataPendukung == other.dataPendukung &&
        lokasi == other.lokasi &&
        longitude == other.longitude &&
        latitude == other.latitude &&
        status == other.status &&
        idVerifier == other.idVerifier &&
        keterangan == other.keterangan &&
        modaTransportasi == other.modaTransportasi &&
        kategori == other.kategori &&
        createDate == other.createDate &&
        updateDate == other.updateDate &&
        laporanKejadianDetail == other.laporanKejadianDetail;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, nama.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, noHp.hashCode);
    _$hash = $jc(_$hash, waktuKejadian.hashCode);
    _$hash = $jc(_$hash, kronologiKejadian.hashCode);
    _$hash = $jc(_$hash, dataPendukung.hashCode);
    _$hash = $jc(_$hash, lokasi.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, idVerifier.hashCode);
    _$hash = $jc(_$hash, keterangan.hashCode);
    _$hash = $jc(_$hash, modaTransportasi.hashCode);
    _$hash = $jc(_$hash, kategori.hashCode);
    _$hash = $jc(_$hash, createDate.hashCode);
    _$hash = $jc(_$hash, updateDate.hashCode);
    _$hash = $jc(_$hash, laporanKejadianDetail.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'IncidentReportGet200ResponseDataInner')
          ..add('id', id)
          ..add('nama', nama)
          ..add('email', email)
          ..add('noHp', noHp)
          ..add('waktuKejadian', waktuKejadian)
          ..add('kronologiKejadian', kronologiKejadian)
          ..add('dataPendukung', dataPendukung)
          ..add('lokasi', lokasi)
          ..add('longitude', longitude)
          ..add('latitude', latitude)
          ..add('status', status)
          ..add('idVerifier', idVerifier)
          ..add('keterangan', keterangan)
          ..add('modaTransportasi', modaTransportasi)
          ..add('kategori', kategori)
          ..add('createDate', createDate)
          ..add('updateDate', updateDate)
          ..add('laporanKejadianDetail', laporanKejadianDetail))
        .toString();
  }
}

class IncidentReportGet200ResponseDataInnerBuilder
    implements
        Builder<IncidentReportGet200ResponseDataInner,
            IncidentReportGet200ResponseDataInnerBuilder> {
  _$IncidentReportGet200ResponseDataInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

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

  num? _status;
  num? get status => _$this._status;
  set status(num? status) => _$this._status = status;

  String? _idVerifier;
  String? get idVerifier => _$this._idVerifier;
  set idVerifier(String? idVerifier) => _$this._idVerifier = idVerifier;

  String? _keterangan;
  String? get keterangan => _$this._keterangan;
  set keterangan(String? keterangan) => _$this._keterangan = keterangan;

  String? _modaTransportasi;
  String? get modaTransportasi => _$this._modaTransportasi;
  set modaTransportasi(String? modaTransportasi) =>
      _$this._modaTransportasi = modaTransportasi;

  String? _kategori;
  String? get kategori => _$this._kategori;
  set kategori(String? kategori) => _$this._kategori = kategori;

  String? _createDate;
  String? get createDate => _$this._createDate;
  set createDate(String? createDate) => _$this._createDate = createDate;

  String? _updateDate;
  String? get updateDate => _$this._updateDate;
  set updateDate(String? updateDate) => _$this._updateDate = updateDate;

  IncidentReportGet200ResponseDataInnerLaporanKejadianDetailBuilder?
      _laporanKejadianDetail;
  IncidentReportGet200ResponseDataInnerLaporanKejadianDetailBuilder
      get laporanKejadianDetail => _$this._laporanKejadianDetail ??=
          new IncidentReportGet200ResponseDataInnerLaporanKejadianDetailBuilder();
  set laporanKejadianDetail(
          IncidentReportGet200ResponseDataInnerLaporanKejadianDetailBuilder?
              laporanKejadianDetail) =>
      _$this._laporanKejadianDetail = laporanKejadianDetail;

  IncidentReportGet200ResponseDataInnerBuilder() {
    IncidentReportGet200ResponseDataInner._defaults(this);
  }

  IncidentReportGet200ResponseDataInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _nama = $v.nama;
      _email = $v.email;
      _noHp = $v.noHp;
      _waktuKejadian = $v.waktuKejadian;
      _kronologiKejadian = $v.kronologiKejadian;
      _dataPendukung = $v.dataPendukung?.toBuilder();
      _lokasi = $v.lokasi;
      _longitude = $v.longitude;
      _latitude = $v.latitude;
      _status = $v.status;
      _idVerifier = $v.idVerifier;
      _keterangan = $v.keterangan;
      _modaTransportasi = $v.modaTransportasi;
      _kategori = $v.kategori;
      _createDate = $v.createDate;
      _updateDate = $v.updateDate;
      _laporanKejadianDetail = $v.laporanKejadianDetail?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IncidentReportGet200ResponseDataInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IncidentReportGet200ResponseDataInner;
  }

  @override
  void update(
      void Function(IncidentReportGet200ResponseDataInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IncidentReportGet200ResponseDataInner build() => _build();

  _$IncidentReportGet200ResponseDataInner _build() {
    _$IncidentReportGet200ResponseDataInner _$result;
    try {
      _$result = _$v ??
          new _$IncidentReportGet200ResponseDataInner._(
            id: id,
            nama: nama,
            email: email,
            noHp: noHp,
            waktuKejadian: waktuKejadian,
            kronologiKejadian: kronologiKejadian,
            dataPendukung: _dataPendukung?.build(),
            lokasi: lokasi,
            longitude: longitude,
            latitude: latitude,
            status: status,
            idVerifier: idVerifier,
            keterangan: keterangan,
            modaTransportasi: modaTransportasi,
            kategori: kategori,
            createDate: createDate,
            updateDate: updateDate,
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
            r'IncidentReportGet200ResponseDataInner',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
