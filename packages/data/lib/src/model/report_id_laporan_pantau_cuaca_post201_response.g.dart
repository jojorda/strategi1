// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_id_laporan_pantau_cuaca_post201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportIdLaporanPantauCuacaPost201Response
    extends ReportIdLaporanPantauCuacaPost201Response {
  @override
  final bool? success;
  @override
  final Cuaca? data;

  factory _$ReportIdLaporanPantauCuacaPost201Response(
          [void Function(ReportIdLaporanPantauCuacaPost201ResponseBuilder)?
              updates]) =>
      (new ReportIdLaporanPantauCuacaPost201ResponseBuilder()..update(updates))
          ._build();

  _$ReportIdLaporanPantauCuacaPost201Response._({this.success, this.data})
      : super._();

  @override
  ReportIdLaporanPantauCuacaPost201Response rebuild(
          void Function(ReportIdLaporanPantauCuacaPost201ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportIdLaporanPantauCuacaPost201ResponseBuilder toBuilder() =>
      new ReportIdLaporanPantauCuacaPost201ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportIdLaporanPantauCuacaPost201Response &&
        success == other.success &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ReportIdLaporanPantauCuacaPost201Response')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class ReportIdLaporanPantauCuacaPost201ResponseBuilder
    implements
        Builder<ReportIdLaporanPantauCuacaPost201Response,
            ReportIdLaporanPantauCuacaPost201ResponseBuilder> {
  _$ReportIdLaporanPantauCuacaPost201Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  CuacaBuilder? _data;
  CuacaBuilder get data => _$this._data ??= new CuacaBuilder();
  set data(CuacaBuilder? data) => _$this._data = data;

  ReportIdLaporanPantauCuacaPost201ResponseBuilder() {
    ReportIdLaporanPantauCuacaPost201Response._defaults(this);
  }

  ReportIdLaporanPantauCuacaPost201ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportIdLaporanPantauCuacaPost201Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReportIdLaporanPantauCuacaPost201Response;
  }

  @override
  void update(
      void Function(ReportIdLaporanPantauCuacaPost201ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportIdLaporanPantauCuacaPost201Response build() => _build();

  _$ReportIdLaporanPantauCuacaPost201Response _build() {
    _$ReportIdLaporanPantauCuacaPost201Response _$result;
    try {
      _$result = _$v ??
          new _$ReportIdLaporanPantauCuacaPost201Response._(
            success: success,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReportIdLaporanPantauCuacaPost201Response',
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
