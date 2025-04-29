// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cuaca.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Cuaca extends Cuaca {
  @override
  final int? id;
  @override
  final int? idLaporanPantau;
  @override
  final String? kondisiCuaca;
  @override
  final double? jarakPandang;
  @override
  final String? arahAnginDari;
  @override
  final String? arahAnginKe;
  @override
  final double? kecepatanAngin;
  @override
  final double? tinggiGelombang;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$Cuaca([void Function(CuacaBuilder)? updates]) =>
      (new CuacaBuilder()..update(updates))._build();

  _$Cuaca._(
      {this.id,
      this.idLaporanPantau,
      this.kondisiCuaca,
      this.jarakPandang,
      this.arahAnginDari,
      this.arahAnginKe,
      this.kecepatanAngin,
      this.tinggiGelombang,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  Cuaca rebuild(void Function(CuacaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CuacaBuilder toBuilder() => new CuacaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Cuaca &&
        id == other.id &&
        idLaporanPantau == other.idLaporanPantau &&
        kondisiCuaca == other.kondisiCuaca &&
        jarakPandang == other.jarakPandang &&
        arahAnginDari == other.arahAnginDari &&
        arahAnginKe == other.arahAnginKe &&
        kecepatanAngin == other.kecepatanAngin &&
        tinggiGelombang == other.tinggiGelombang &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, idLaporanPantau.hashCode);
    _$hash = $jc(_$hash, kondisiCuaca.hashCode);
    _$hash = $jc(_$hash, jarakPandang.hashCode);
    _$hash = $jc(_$hash, arahAnginDari.hashCode);
    _$hash = $jc(_$hash, arahAnginKe.hashCode);
    _$hash = $jc(_$hash, kecepatanAngin.hashCode);
    _$hash = $jc(_$hash, tinggiGelombang.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Cuaca')
          ..add('id', id)
          ..add('idLaporanPantau', idLaporanPantau)
          ..add('kondisiCuaca', kondisiCuaca)
          ..add('jarakPandang', jarakPandang)
          ..add('arahAnginDari', arahAnginDari)
          ..add('arahAnginKe', arahAnginKe)
          ..add('kecepatanAngin', kecepatanAngin)
          ..add('tinggiGelombang', tinggiGelombang)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class CuacaBuilder implements Builder<Cuaca, CuacaBuilder> {
  _$Cuaca? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _idLaporanPantau;
  int? get idLaporanPantau => _$this._idLaporanPantau;
  set idLaporanPantau(int? idLaporanPantau) =>
      _$this._idLaporanPantau = idLaporanPantau;

  String? _kondisiCuaca;
  String? get kondisiCuaca => _$this._kondisiCuaca;
  set kondisiCuaca(String? kondisiCuaca) => _$this._kondisiCuaca = kondisiCuaca;

  double? _jarakPandang;
  double? get jarakPandang => _$this._jarakPandang;
  set jarakPandang(double? jarakPandang) => _$this._jarakPandang = jarakPandang;

  String? _arahAnginDari;
  String? get arahAnginDari => _$this._arahAnginDari;
  set arahAnginDari(String? arahAnginDari) =>
      _$this._arahAnginDari = arahAnginDari;

  String? _arahAnginKe;
  String? get arahAnginKe => _$this._arahAnginKe;
  set arahAnginKe(String? arahAnginKe) => _$this._arahAnginKe = arahAnginKe;

  double? _kecepatanAngin;
  double? get kecepatanAngin => _$this._kecepatanAngin;
  set kecepatanAngin(double? kecepatanAngin) =>
      _$this._kecepatanAngin = kecepatanAngin;

  double? _tinggiGelombang;
  double? get tinggiGelombang => _$this._tinggiGelombang;
  set tinggiGelombang(double? tinggiGelombang) =>
      _$this._tinggiGelombang = tinggiGelombang;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  CuacaBuilder() {
    Cuaca._defaults(this);
  }

  CuacaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _idLaporanPantau = $v.idLaporanPantau;
      _kondisiCuaca = $v.kondisiCuaca;
      _jarakPandang = $v.jarakPandang;
      _arahAnginDari = $v.arahAnginDari;
      _arahAnginKe = $v.arahAnginKe;
      _kecepatanAngin = $v.kecepatanAngin;
      _tinggiGelombang = $v.tinggiGelombang;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Cuaca other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Cuaca;
  }

  @override
  void update(void Function(CuacaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Cuaca build() => _build();

  _$Cuaca _build() {
    final _$result = _$v ??
        new _$Cuaca._(
          id: id,
          idLaporanPantau: idLaporanPantau,
          kondisiCuaca: kondisiCuaca,
          jarakPandang: jarakPandang,
          arahAnginDari: arahAnginDari,
          arahAnginKe: arahAnginKe,
          kecepatanAngin: kecepatanAngin,
          tinggiGelombang: tinggiGelombang,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
