// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'performance_report_get200_response_data_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PerformanceReportGet200ResponseDataInner
    extends PerformanceReportGet200ResponseDataInner {
  @override
  final String? pengelola;
  @override
  final int? jumlahSimpul;
  @override
  final int? jumlahPantau;
  @override
  final int? simpulMelapor;
  @override
  final int? laporanMasuk;
  @override
  final int? targetLaporan;
  @override
  final String? persentase;

  factory _$PerformanceReportGet200ResponseDataInner(
          [void Function(PerformanceReportGet200ResponseDataInnerBuilder)?
              updates]) =>
      (new PerformanceReportGet200ResponseDataInnerBuilder()..update(updates))
          ._build();

  _$PerformanceReportGet200ResponseDataInner._(
      {this.pengelola,
      this.jumlahSimpul,
      this.jumlahPantau,
      this.simpulMelapor,
      this.laporanMasuk,
      this.targetLaporan,
      this.persentase})
      : super._();

  @override
  PerformanceReportGet200ResponseDataInner rebuild(
          void Function(PerformanceReportGet200ResponseDataInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PerformanceReportGet200ResponseDataInnerBuilder toBuilder() =>
      new PerformanceReportGet200ResponseDataInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PerformanceReportGet200ResponseDataInner &&
        pengelola == other.pengelola &&
        jumlahSimpul == other.jumlahSimpul &&
        jumlahPantau == other.jumlahPantau &&
        simpulMelapor == other.simpulMelapor &&
        laporanMasuk == other.laporanMasuk &&
        targetLaporan == other.targetLaporan &&
        persentase == other.persentase;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pengelola.hashCode);
    _$hash = $jc(_$hash, jumlahSimpul.hashCode);
    _$hash = $jc(_$hash, jumlahPantau.hashCode);
    _$hash = $jc(_$hash, simpulMelapor.hashCode);
    _$hash = $jc(_$hash, laporanMasuk.hashCode);
    _$hash = $jc(_$hash, targetLaporan.hashCode);
    _$hash = $jc(_$hash, persentase.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'PerformanceReportGet200ResponseDataInner')
          ..add('pengelola', pengelola)
          ..add('jumlahSimpul', jumlahSimpul)
          ..add('jumlahPantau', jumlahPantau)
          ..add('simpulMelapor', simpulMelapor)
          ..add('laporanMasuk', laporanMasuk)
          ..add('targetLaporan', targetLaporan)
          ..add('persentase', persentase))
        .toString();
  }
}

class PerformanceReportGet200ResponseDataInnerBuilder
    implements
        Builder<PerformanceReportGet200ResponseDataInner,
            PerformanceReportGet200ResponseDataInnerBuilder> {
  _$PerformanceReportGet200ResponseDataInner? _$v;

  String? _pengelola;
  String? get pengelola => _$this._pengelola;
  set pengelola(String? pengelola) => _$this._pengelola = pengelola;

  int? _jumlahSimpul;
  int? get jumlahSimpul => _$this._jumlahSimpul;
  set jumlahSimpul(int? jumlahSimpul) => _$this._jumlahSimpul = jumlahSimpul;

  int? _jumlahPantau;
  int? get jumlahPantau => _$this._jumlahPantau;
  set jumlahPantau(int? jumlahPantau) => _$this._jumlahPantau = jumlahPantau;

  int? _simpulMelapor;
  int? get simpulMelapor => _$this._simpulMelapor;
  set simpulMelapor(int? simpulMelapor) =>
      _$this._simpulMelapor = simpulMelapor;

  int? _laporanMasuk;
  int? get laporanMasuk => _$this._laporanMasuk;
  set laporanMasuk(int? laporanMasuk) => _$this._laporanMasuk = laporanMasuk;

  int? _targetLaporan;
  int? get targetLaporan => _$this._targetLaporan;
  set targetLaporan(int? targetLaporan) =>
      _$this._targetLaporan = targetLaporan;

  String? _persentase;
  String? get persentase => _$this._persentase;
  set persentase(String? persentase) => _$this._persentase = persentase;

  PerformanceReportGet200ResponseDataInnerBuilder() {
    PerformanceReportGet200ResponseDataInner._defaults(this);
  }

  PerformanceReportGet200ResponseDataInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pengelola = $v.pengelola;
      _jumlahSimpul = $v.jumlahSimpul;
      _jumlahPantau = $v.jumlahPantau;
      _simpulMelapor = $v.simpulMelapor;
      _laporanMasuk = $v.laporanMasuk;
      _targetLaporan = $v.targetLaporan;
      _persentase = $v.persentase;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PerformanceReportGet200ResponseDataInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PerformanceReportGet200ResponseDataInner;
  }

  @override
  void update(
      void Function(PerformanceReportGet200ResponseDataInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PerformanceReportGet200ResponseDataInner build() => _build();

  _$PerformanceReportGet200ResponseDataInner _build() {
    final _$result = _$v ??
        new _$PerformanceReportGet200ResponseDataInner._(
          pengelola: pengelola,
          jumlahSimpul: jumlahSimpul,
          jumlahPantau: jumlahPantau,
          simpulMelapor: simpulMelapor,
          laporanMasuk: laporanMasuk,
          targetLaporan: targetLaporan,
          persentase: persentase,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
