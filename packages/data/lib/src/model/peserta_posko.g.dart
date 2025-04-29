// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peserta_posko.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PesertaPosko extends PesertaPosko {
  @override
  final int? id;
  @override
  final String? nama;
  @override
  final bool? status;

  factory _$PesertaPosko([void Function(PesertaPoskoBuilder)? updates]) =>
      (new PesertaPoskoBuilder()..update(updates))._build();

  _$PesertaPosko._({this.id, this.nama, this.status}) : super._();

  @override
  PesertaPosko rebuild(void Function(PesertaPoskoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PesertaPoskoBuilder toBuilder() => new PesertaPoskoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PesertaPosko &&
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
    return (newBuiltValueToStringHelper(r'PesertaPosko')
          ..add('id', id)
          ..add('nama', nama)
          ..add('status', status))
        .toString();
  }
}

class PesertaPoskoBuilder
    implements Builder<PesertaPosko, PesertaPoskoBuilder> {
  _$PesertaPosko? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _nama;
  String? get nama => _$this._nama;
  set nama(String? nama) => _$this._nama = nama;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  PesertaPoskoBuilder() {
    PesertaPosko._defaults(this);
  }

  PesertaPoskoBuilder get _$this {
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
  void replace(PesertaPosko other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PesertaPosko;
  }

  @override
  void update(void Function(PesertaPoskoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PesertaPosko build() => _build();

  _$PesertaPosko _build() {
    final _$result = _$v ??
        new _$PesertaPosko._(
          id: id,
          nama: nama,
          status: status,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
