// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_id_laporan_pantau_kecelakaan_post201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportIdLaporanPantauKecelakaanPost201Response
    extends ReportIdLaporanPantauKecelakaanPost201Response {
  @override
  final bool? success;
  @override
  final Kecelakaan? data;

  factory _$ReportIdLaporanPantauKecelakaanPost201Response(
          [void Function(ReportIdLaporanPantauKecelakaanPost201ResponseBuilder)?
              updates]) =>
      (new ReportIdLaporanPantauKecelakaanPost201ResponseBuilder()
            ..update(updates))
          ._build();

  _$ReportIdLaporanPantauKecelakaanPost201Response._({this.success, this.data})
      : super._();

  @override
  ReportIdLaporanPantauKecelakaanPost201Response rebuild(
          void Function(ReportIdLaporanPantauKecelakaanPost201ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportIdLaporanPantauKecelakaanPost201ResponseBuilder toBuilder() =>
      new ReportIdLaporanPantauKecelakaanPost201ResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportIdLaporanPantauKecelakaanPost201Response &&
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
            r'ReportIdLaporanPantauKecelakaanPost201Response')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class ReportIdLaporanPantauKecelakaanPost201ResponseBuilder
    implements
        Builder<ReportIdLaporanPantauKecelakaanPost201Response,
            ReportIdLaporanPantauKecelakaanPost201ResponseBuilder> {
  _$ReportIdLaporanPantauKecelakaanPost201Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  KecelakaanBuilder? _data;
  KecelakaanBuilder get data => _$this._data ??= new KecelakaanBuilder();
  set data(KecelakaanBuilder? data) => _$this._data = data;

  ReportIdLaporanPantauKecelakaanPost201ResponseBuilder() {
    ReportIdLaporanPantauKecelakaanPost201Response._defaults(this);
  }

  ReportIdLaporanPantauKecelakaanPost201ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportIdLaporanPantauKecelakaanPost201Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReportIdLaporanPantauKecelakaanPost201Response;
  }

  @override
  void update(
      void Function(ReportIdLaporanPantauKecelakaanPost201ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportIdLaporanPantauKecelakaanPost201Response build() => _build();

  _$ReportIdLaporanPantauKecelakaanPost201Response _build() {
    _$ReportIdLaporanPantauKecelakaanPost201Response _$result;
    try {
      _$result = _$v ??
          new _$ReportIdLaporanPantauKecelakaanPost201Response._(
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
            r'ReportIdLaporanPantauKecelakaanPost201Response',
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
