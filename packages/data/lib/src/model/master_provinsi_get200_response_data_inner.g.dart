// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_provinsi_get200_response_data_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MasterProvinsiGet200ResponseDataInner
    extends MasterProvinsiGet200ResponseDataInner {
  @override
  final num? id;
  @override
  final String? namaProvinsi;
  @override
  final String? isPantau;
  @override
  final String? kodeBpjs;
  @override
  final String? kodeMendagri;

  factory _$MasterProvinsiGet200ResponseDataInner(
          [void Function(MasterProvinsiGet200ResponseDataInnerBuilder)?
              updates]) =>
      (new MasterProvinsiGet200ResponseDataInnerBuilder()..update(updates))
          ._build();

  _$MasterProvinsiGet200ResponseDataInner._(
      {this.id,
      this.namaProvinsi,
      this.isPantau,
      this.kodeBpjs,
      this.kodeMendagri})
      : super._();

  @override
  MasterProvinsiGet200ResponseDataInner rebuild(
          void Function(MasterProvinsiGet200ResponseDataInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MasterProvinsiGet200ResponseDataInnerBuilder toBuilder() =>
      new MasterProvinsiGet200ResponseDataInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MasterProvinsiGet200ResponseDataInner &&
        id == other.id &&
        namaProvinsi == other.namaProvinsi &&
        isPantau == other.isPantau &&
        kodeBpjs == other.kodeBpjs &&
        kodeMendagri == other.kodeMendagri;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, namaProvinsi.hashCode);
    _$hash = $jc(_$hash, isPantau.hashCode);
    _$hash = $jc(_$hash, kodeBpjs.hashCode);
    _$hash = $jc(_$hash, kodeMendagri.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'MasterProvinsiGet200ResponseDataInner')
          ..add('id', id)
          ..add('namaProvinsi', namaProvinsi)
          ..add('isPantau', isPantau)
          ..add('kodeBpjs', kodeBpjs)
          ..add('kodeMendagri', kodeMendagri))
        .toString();
  }
}

class MasterProvinsiGet200ResponseDataInnerBuilder
    implements
        Builder<MasterProvinsiGet200ResponseDataInner,
            MasterProvinsiGet200ResponseDataInnerBuilder> {
  _$MasterProvinsiGet200ResponseDataInner? _$v;

  num? _id;
  num? get id => _$this._id;
  set id(num? id) => _$this._id = id;

  String? _namaProvinsi;
  String? get namaProvinsi => _$this._namaProvinsi;
  set namaProvinsi(String? namaProvinsi) => _$this._namaProvinsi = namaProvinsi;

  String? _isPantau;
  String? get isPantau => _$this._isPantau;
  set isPantau(String? isPantau) => _$this._isPantau = isPantau;

  String? _kodeBpjs;
  String? get kodeBpjs => _$this._kodeBpjs;
  set kodeBpjs(String? kodeBpjs) => _$this._kodeBpjs = kodeBpjs;

  String? _kodeMendagri;
  String? get kodeMendagri => _$this._kodeMendagri;
  set kodeMendagri(String? kodeMendagri) => _$this._kodeMendagri = kodeMendagri;

  MasterProvinsiGet200ResponseDataInnerBuilder() {
    MasterProvinsiGet200ResponseDataInner._defaults(this);
  }

  MasterProvinsiGet200ResponseDataInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _namaProvinsi = $v.namaProvinsi;
      _isPantau = $v.isPantau;
      _kodeBpjs = $v.kodeBpjs;
      _kodeMendagri = $v.kodeMendagri;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MasterProvinsiGet200ResponseDataInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MasterProvinsiGet200ResponseDataInner;
  }

  @override
  void update(
      void Function(MasterProvinsiGet200ResponseDataInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MasterProvinsiGet200ResponseDataInner build() => _build();

  _$MasterProvinsiGet200ResponseDataInner _build() {
    final _$result = _$v ??
        new _$MasterProvinsiGet200ResponseDataInner._(
          id: id,
          namaProvinsi: namaProvinsi,
          isPantau: isPantau,
          kodeBpjs: kodeBpjs,
          kodeMendagri: kodeMendagri,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
