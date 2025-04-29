// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jenis_posko.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JenisPosko extends JenisPosko {
  @override
  final int? id;
  @override
  final String? nama;
  @override
  final bool? status;

  factory _$JenisPosko([void Function(JenisPoskoBuilder)? updates]) =>
      (new JenisPoskoBuilder()..update(updates))._build();

  _$JenisPosko._({this.id, this.nama, this.status}) : super._();

  @override
  JenisPosko rebuild(void Function(JenisPoskoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JenisPoskoBuilder toBuilder() => new JenisPoskoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JenisPosko &&
        id == other.id &&
        nama == other.nama &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, nama.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JenisPosko')
          ..add('id', id)
          ..add('nama', nama)
          ..add('status', status))
        .toString();
  }
}

class JenisPoskoBuilder implements Builder<JenisPosko, JenisPoskoBuilder> {
  _$JenisPosko? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _nama;
  String? get nama => _$this._nama;
  set nama(String? nama) => _$this._nama = nama;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  JenisPoskoBuilder() {
    JenisPosko._defaults(this);
  }

  JenisPoskoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _nama = $v.nama;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JenisPosko other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JenisPosko;
  }

  @override
  void update(void Function(JenisPoskoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JenisPosko build() => _build();

  _$JenisPosko _build() {
    final _$result = _$v ??
        new _$JenisPosko._(
          id: id,
          nama: nama,
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
