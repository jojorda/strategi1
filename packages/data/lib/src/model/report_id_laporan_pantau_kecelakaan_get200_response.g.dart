// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_id_laporan_pantau_kecelakaan_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportIdLaporanPantauKecelakaanGet200Response
    extends ReportIdLaporanPantauKecelakaanGet200Response {
  @override
  final bool? success;
  @override
  final BuiltList<Kecelakaan>? data;

  factory _$ReportIdLaporanPantauKecelakaanGet200Response(
          [void Function(ReportIdLaporanPantauKecelakaanGet200ResponseBuilder)?
              updates]) =>
      (new ReportIdLaporanPantauKecelakaanGet200ResponseBuilder()
            ..update(updates))
          ._build();

  _$ReportIdLaporanPantauKecelakaanGet200Response._({this.success, this.data})
      : super._();

  @override
  ReportIdLaporanPantauKecelakaanGet200Response rebuild(
          void Function(ReportIdLaporanPantauKecelakaanGet200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportIdLaporanPantauKecelakaanGet200ResponseBuilder toBuilder() =>
      new ReportIdLaporanPantauKecelakaanGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportIdLaporanPantauKecelakaanGet200Response &&
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
            r'ReportIdLaporanPantauKecelakaanGet200Response')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class ReportIdLaporanPantauKecelakaanGet200ResponseBuilder
    implements
        Builder<ReportIdLaporanPantauKecelakaanGet200Response,
            ReportIdLaporanPantauKecelakaanGet200ResponseBuilder> {
  _$ReportIdLaporanPantauKecelakaanGet200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ListBuilder<Kecelakaan>? _data;
  ListBuilder<Kecelakaan> get data =>
      _$this._data ??= new ListBuilder<Kecelakaan>();
  set data(ListBuilder<Kecelakaan>? data) => _$this._data = data;

  ReportIdLaporanPantauKecelakaanGet200ResponseBuilder() {
    ReportIdLaporanPantauKecelakaanGet200Response._defaults(this);
  }

  ReportIdLaporanPantauKecelakaanGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportIdLaporanPantauKecelakaanGet200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReportIdLaporanPantauKecelakaanGet200Response;
  }

  @override
  void update(
      void Function(ReportIdLaporanPantauKecelakaanGet200ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportIdLaporanPantauKecelakaanGet200Response build() => _build();

  _$ReportIdLaporanPantauKecelakaanGet200Response _build() {
    _$ReportIdLaporanPantauKecelakaanGet200Response _$result;
    try {
      _$result = _$v ??
          new _$ReportIdLaporanPantauKecelakaanGet200Response._(
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
            r'ReportIdLaporanPantauKecelakaanGet200Response',
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
