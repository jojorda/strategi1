// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_id_laporan_pantau_cuaca_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportIdLaporanPantauCuacaGet200Response
    extends ReportIdLaporanPantauCuacaGet200Response {
  @override
  final bool? success;
  @override
  final BuiltList<Cuaca>? data;

  factory _$ReportIdLaporanPantauCuacaGet200Response(
          [void Function(ReportIdLaporanPantauCuacaGet200ResponseBuilder)?
              updates]) =>
      (new ReportIdLaporanPantauCuacaGet200ResponseBuilder()..update(updates))
          ._build();

  _$ReportIdLaporanPantauCuacaGet200Response._({this.success, this.data})
      : super._();

  @override
  ReportIdLaporanPantauCuacaGet200Response rebuild(
          void Function(ReportIdLaporanPantauCuacaGet200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportIdLaporanPantauCuacaGet200ResponseBuilder toBuilder() =>
      new ReportIdLaporanPantauCuacaGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportIdLaporanPantauCuacaGet200Response &&
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
            r'ReportIdLaporanPantauCuacaGet200Response')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class ReportIdLaporanPantauCuacaGet200ResponseBuilder
    implements
        Builder<ReportIdLaporanPantauCuacaGet200Response,
            ReportIdLaporanPantauCuacaGet200ResponseBuilder> {
  _$ReportIdLaporanPantauCuacaGet200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ListBuilder<Cuaca>? _data;
  ListBuilder<Cuaca> get data => _$this._data ??= new ListBuilder<Cuaca>();
  set data(ListBuilder<Cuaca>? data) => _$this._data = data;

  ReportIdLaporanPantauCuacaGet200ResponseBuilder() {
    ReportIdLaporanPantauCuacaGet200Response._defaults(this);
  }

  ReportIdLaporanPantauCuacaGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportIdLaporanPantauCuacaGet200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReportIdLaporanPantauCuacaGet200Response;
  }

  @override
  void update(
      void Function(ReportIdLaporanPantauCuacaGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportIdLaporanPantauCuacaGet200Response build() => _build();

  _$ReportIdLaporanPantauCuacaGet200Response _build() {
    _$ReportIdLaporanPantauCuacaGet200Response _$result;
    try {
      _$result = _$v ??
          new _$ReportIdLaporanPantauCuacaGet200Response._(
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
            r'ReportIdLaporanPantauCuacaGet200Response',
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
