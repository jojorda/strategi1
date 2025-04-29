// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cctv_get200_response_data_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CctvGet200ResponseDataInnerStatusEnum
    _$cctvGet200ResponseDataInnerStatusEnum_online =
    const CctvGet200ResponseDataInnerStatusEnum._('online');
const CctvGet200ResponseDataInnerStatusEnum
    _$cctvGet200ResponseDataInnerStatusEnum_offline =
    const CctvGet200ResponseDataInnerStatusEnum._('offline');

CctvGet200ResponseDataInnerStatusEnum
    _$cctvGet200ResponseDataInnerStatusEnumValueOf(String name) {
  switch (name) {
    case 'online':
      return _$cctvGet200ResponseDataInnerStatusEnum_online;
    case 'offline':
      return _$cctvGet200ResponseDataInnerStatusEnum_offline;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CctvGet200ResponseDataInnerStatusEnum>
    _$cctvGet200ResponseDataInnerStatusEnumValues = new BuiltSet<
        CctvGet200ResponseDataInnerStatusEnum>(const <CctvGet200ResponseDataInnerStatusEnum>[
  _$cctvGet200ResponseDataInnerStatusEnum_online,
  _$cctvGet200ResponseDataInnerStatusEnum_offline,
]);

Serializer<CctvGet200ResponseDataInnerStatusEnum>
    _$cctvGet200ResponseDataInnerStatusEnumSerializer =
    new _$CctvGet200ResponseDataInnerStatusEnumSerializer();

class _$CctvGet200ResponseDataInnerStatusEnumSerializer
    implements PrimitiveSerializer<CctvGet200ResponseDataInnerStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'online': 'online',
    'offline': 'offline',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'online': 'online',
    'offline': 'offline',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CctvGet200ResponseDataInnerStatusEnum
  ];
  @override
  final String wireName = 'CctvGet200ResponseDataInnerStatusEnum';

  @override
  Object serialize(
          Serializers serializers, CctvGet200ResponseDataInnerStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CctvGet200ResponseDataInnerStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CctvGet200ResponseDataInnerStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CctvGet200ResponseDataInner extends CctvGet200ResponseDataInner {
  @override
  final String? id;
  @override
  final String? namaLokasi;
  @override
  final String? namaCctv;
  @override
  final String? streamUrl;
  @override
  final CctvGet200ResponseDataInnerStatusEnum? status;
  @override
  final String? namaPengelola;
  @override
  final String? protocol;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  final String? source_;
  @override
  final String? tagKategori;
  @override
  final String? matra;
  @override
  final String? namaKabupatenKota;
  @override
  final String? namaProvinsi;

  factory _$CctvGet200ResponseDataInner(
          [void Function(CctvGet200ResponseDataInnerBuilder)? updates]) =>
      (new CctvGet200ResponseDataInnerBuilder()..update(updates))._build();

  _$CctvGet200ResponseDataInner._(
      {this.id,
      this.namaLokasi,
      this.namaCctv,
      this.streamUrl,
      this.status,
      this.namaPengelola,
      this.protocol,
      this.latitude,
      this.longitude,
      this.source_,
      this.tagKategori,
      this.matra,
      this.namaKabupatenKota,
      this.namaProvinsi})
      : super._();

  @override
  CctvGet200ResponseDataInner rebuild(
          void Function(CctvGet200ResponseDataInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CctvGet200ResponseDataInnerBuilder toBuilder() =>
      new CctvGet200ResponseDataInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CctvGet200ResponseDataInner &&
        id == other.id &&
        namaLokasi == other.namaLokasi &&
        namaCctv == other.namaCctv &&
        streamUrl == other.streamUrl &&
        status == other.status &&
        namaPengelola == other.namaPengelola &&
        protocol == other.protocol &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        source_ == other.source_ &&
        tagKategori == other.tagKategori &&
        matra == other.matra &&
        namaKabupatenKota == other.namaKabupatenKota &&
        namaProvinsi == other.namaProvinsi;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, namaLokasi.hashCode);
    _$hash = $jc(_$hash, namaCctv.hashCode);
    _$hash = $jc(_$hash, streamUrl.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, namaPengelola.hashCode);
    _$hash = $jc(_$hash, protocol.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, tagKategori.hashCode);
    _$hash = $jc(_$hash, matra.hashCode);
    _$hash = $jc(_$hash, namaKabupatenKota.hashCode);
    _$hash = $jc(_$hash, namaProvinsi.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CctvGet200ResponseDataInner')
          ..add('id', id)
          ..add('namaLokasi', namaLokasi)
          ..add('namaCctv', namaCctv)
          ..add('streamUrl', streamUrl)
          ..add('status', status)
          ..add('namaPengelola', namaPengelola)
          ..add('protocol', protocol)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('source_', source_)
          ..add('tagKategori', tagKategori)
          ..add('matra', matra)
          ..add('namaKabupatenKota', namaKabupatenKota)
          ..add('namaProvinsi', namaProvinsi))
        .toString();
  }
}

class CctvGet200ResponseDataInnerBuilder
    implements
        Builder<CctvGet200ResponseDataInner,
            CctvGet200ResponseDataInnerBuilder> {
  _$CctvGet200ResponseDataInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _namaLokasi;
  String? get namaLokasi => _$this._namaLokasi;
  set namaLokasi(String? namaLokasi) => _$this._namaLokasi = namaLokasi;

  String? _namaCctv;
  String? get namaCctv => _$this._namaCctv;
  set namaCctv(String? namaCctv) => _$this._namaCctv = namaCctv;

  String? _streamUrl;
  String? get streamUrl => _$this._streamUrl;
  set streamUrl(String? streamUrl) => _$this._streamUrl = streamUrl;

  CctvGet200ResponseDataInnerStatusEnum? _status;
  CctvGet200ResponseDataInnerStatusEnum? get status => _$this._status;
  set status(CctvGet200ResponseDataInnerStatusEnum? status) =>
      _$this._status = status;

  String? _namaPengelola;
  String? get namaPengelola => _$this._namaPengelola;
  set namaPengelola(String? namaPengelola) =>
      _$this._namaPengelola = namaPengelola;

  String? _protocol;
  String? get protocol => _$this._protocol;
  set protocol(String? protocol) => _$this._protocol = protocol;

  String? _latitude;
  String? get latitude => _$this._latitude;
  set latitude(String? latitude) => _$this._latitude = latitude;

  String? _longitude;
  String? get longitude => _$this._longitude;
  set longitude(String? longitude) => _$this._longitude = longitude;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  String? _tagKategori;
  String? get tagKategori => _$this._tagKategori;
  set tagKategori(String? tagKategori) => _$this._tagKategori = tagKategori;

  String? _matra;
  String? get matra => _$this._matra;
  set matra(String? matra) => _$this._matra = matra;

  String? _namaKabupatenKota;
  String? get namaKabupatenKota => _$this._namaKabupatenKota;
  set namaKabupatenKota(String? namaKabupatenKota) =>
      _$this._namaKabupatenKota = namaKabupatenKota;

  String? _namaProvinsi;
  String? get namaProvinsi => _$this._namaProvinsi;
  set namaProvinsi(String? namaProvinsi) => _$this._namaProvinsi = namaProvinsi;

  CctvGet200ResponseDataInnerBuilder() {
    CctvGet200ResponseDataInner._defaults(this);
  }

  CctvGet200ResponseDataInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _namaLokasi = $v.namaLokasi;
      _namaCctv = $v.namaCctv;
      _streamUrl = $v.streamUrl;
      _status = $v.status;
      _namaPengelola = $v.namaPengelola;
      _protocol = $v.protocol;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _source_ = $v.source_;
      _tagKategori = $v.tagKategori;
      _matra = $v.matra;
      _namaKabupatenKota = $v.namaKabupatenKota;
      _namaProvinsi = $v.namaProvinsi;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CctvGet200ResponseDataInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CctvGet200ResponseDataInner;
  }

  @override
  void update(void Function(CctvGet200ResponseDataInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CctvGet200ResponseDataInner build() => _build();

  _$CctvGet200ResponseDataInner _build() {
    final _$result = _$v ??
        new _$CctvGet200ResponseDataInner._(
          id: id,
          namaLokasi: namaLokasi,
          namaCctv: namaCctv,
          streamUrl: streamUrl,
          status: status,
          namaPengelola: namaPengelola,
          protocol: protocol,
          latitude: latitude,
          longitude: longitude,
          source_: source_,
          tagKategori: tagKategori,
          matra: matra,
          namaKabupatenKota: namaKabupatenKota,
          namaProvinsi: namaProvinsi,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
