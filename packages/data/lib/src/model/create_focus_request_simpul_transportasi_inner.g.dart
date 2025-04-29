// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_focus_request_simpul_transportasi_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateFocusRequestSimpulTransportasiInner
    extends CreateFocusRequestSimpulTransportasiInner {
  @override
  final String? matra;
  @override
  final String? moda;
  @override
  final String? simpul;

  factory _$CreateFocusRequestSimpulTransportasiInner(
          [void Function(CreateFocusRequestSimpulTransportasiInnerBuilder)?
              updates]) =>
      (new CreateFocusRequestSimpulTransportasiInnerBuilder()..update(updates))
          ._build();

  _$CreateFocusRequestSimpulTransportasiInner._(
      {this.matra, this.moda, this.simpul})
      : super._();

  @override
  CreateFocusRequestSimpulTransportasiInner rebuild(
          void Function(CreateFocusRequestSimpulTransportasiInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateFocusRequestSimpulTransportasiInnerBuilder toBuilder() =>
      new CreateFocusRequestSimpulTransportasiInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateFocusRequestSimpulTransportasiInner &&
        matra == other.matra &&
        moda == other.moda &&
        simpul == other.simpul;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, matra.hashCode);
    _$hash = $jc(_$hash, moda.hashCode);
    _$hash = $jc(_$hash, simpul.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'CreateFocusRequestSimpulTransportasiInner')
          ..add('matra', matra)
          ..add('moda', moda)
          ..add('simpul', simpul))
        .toString();
  }
}

class CreateFocusRequestSimpulTransportasiInnerBuilder
    implements
        Builder<CreateFocusRequestSimpulTransportasiInner,
            CreateFocusRequestSimpulTransportasiInnerBuilder> {
  _$CreateFocusRequestSimpulTransportasiInner? _$v;

  String? _matra;
  String? get matra => _$this._matra;
  set matra(String? matra) => _$this._matra = matra;

  String? _moda;
  String? get moda => _$this._moda;
  set moda(String? moda) => _$this._moda = moda;

  String? _simpul;
  String? get simpul => _$this._simpul;
  set simpul(String? simpul) => _$this._simpul = simpul;

  CreateFocusRequestSimpulTransportasiInnerBuilder() {
    CreateFocusRequestSimpulTransportasiInner._defaults(this);
  }

  CreateFocusRequestSimpulTransportasiInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _matra = $v.matra;
      _moda = $v.moda;
      _simpul = $v.simpul;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateFocusRequestSimpulTransportasiInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateFocusRequestSimpulTransportasiInner;
  }

  @override
  void update(
      void Function(CreateFocusRequestSimpulTransportasiInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateFocusRequestSimpulTransportasiInner build() => _build();

  _$CreateFocusRequestSimpulTransportasiInner _build() {
    final _$result = _$v ??
        new _$CreateFocusRequestSimpulTransportasiInner._(
          matra: matra,
          moda: moda,
          simpul: simpul,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
