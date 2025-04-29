// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_focus_request_cctv_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateFocusRequestCctvInner extends CreateFocusRequestCctvInner {
  @override
  final String? matra;
  @override
  final String? simpul;
  @override
  final String? titikCctv;

  factory _$CreateFocusRequestCctvInner(
          [void Function(CreateFocusRequestCctvInnerBuilder)? updates]) =>
      (new CreateFocusRequestCctvInnerBuilder()..update(updates))._build();

  _$CreateFocusRequestCctvInner._({this.matra, this.simpul, this.titikCctv})
      : super._();

  @override
  CreateFocusRequestCctvInner rebuild(
          void Function(CreateFocusRequestCctvInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateFocusRequestCctvInnerBuilder toBuilder() =>
      new CreateFocusRequestCctvInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateFocusRequestCctvInner &&
        matra == other.matra &&
        simpul == other.simpul &&
        titikCctv == other.titikCctv;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, matra.hashCode);
    _$hash = $jc(_$hash, simpul.hashCode);
    _$hash = $jc(_$hash, titikCctv.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateFocusRequestCctvInner')
          ..add('matra', matra)
          ..add('simpul', simpul)
          ..add('titikCctv', titikCctv))
        .toString();
  }
}

class CreateFocusRequestCctvInnerBuilder
    implements
        Builder<CreateFocusRequestCctvInner,
            CreateFocusRequestCctvInnerBuilder> {
  _$CreateFocusRequestCctvInner? _$v;

  String? _matra;
  String? get matra => _$this._matra;
  set matra(String? matra) => _$this._matra = matra;

  String? _simpul;
  String? get simpul => _$this._simpul;
  set simpul(String? simpul) => _$this._simpul = simpul;

  String? _titikCctv;
  String? get titikCctv => _$this._titikCctv;
  set titikCctv(String? titikCctv) => _$this._titikCctv = titikCctv;

  CreateFocusRequestCctvInnerBuilder() {
    CreateFocusRequestCctvInner._defaults(this);
  }

  CreateFocusRequestCctvInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _matra = $v.matra;
      _simpul = $v.simpul;
      _titikCctv = $v.titikCctv;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateFocusRequestCctvInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateFocusRequestCctvInner;
  }

  @override
  void update(void Function(CreateFocusRequestCctvInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateFocusRequestCctvInner build() => _build();

  _$CreateFocusRequestCctvInner _build() {
    final _$result = _$v ??
        new _$CreateFocusRequestCctvInner._(
          matra: matra,
          simpul: simpul,
          titikCctv: titikCctv,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
