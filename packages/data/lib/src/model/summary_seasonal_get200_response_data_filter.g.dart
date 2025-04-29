// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_seasonal_get200_response_data_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SummarySeasonalGet200ResponseDataFilter
    extends SummarySeasonalGet200ResponseDataFilter {
  @override
  final String? event;
  @override
  final String? provinsi;
  @override
  final String? moda;

  factory _$SummarySeasonalGet200ResponseDataFilter(
          [void Function(SummarySeasonalGet200ResponseDataFilterBuilder)?
              updates]) =>
      (new SummarySeasonalGet200ResponseDataFilterBuilder()..update(updates))
          ._build();

  _$SummarySeasonalGet200ResponseDataFilter._(
      {this.event, this.provinsi, this.moda})
      : super._();

  @override
  SummarySeasonalGet200ResponseDataFilter rebuild(
          void Function(SummarySeasonalGet200ResponseDataFilterBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SummarySeasonalGet200ResponseDataFilterBuilder toBuilder() =>
      new SummarySeasonalGet200ResponseDataFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SummarySeasonalGet200ResponseDataFilter &&
        event == other.event &&
        provinsi == other.provinsi &&
        moda == other.moda;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, event.hashCode);
    _$hash = $jc(_$hash, provinsi.hashCode);
    _$hash = $jc(_$hash, moda.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'SummarySeasonalGet200ResponseDataFilter')
          ..add('event', event)
          ..add('provinsi', provinsi)
          ..add('moda', moda))
        .toString();
  }
}

class SummarySeasonalGet200ResponseDataFilterBuilder
    implements
        Builder<SummarySeasonalGet200ResponseDataFilter,
            SummarySeasonalGet200ResponseDataFilterBuilder> {
  _$SummarySeasonalGet200ResponseDataFilter? _$v;

  String? _event;
  String? get event => _$this._event;
  set event(String? event) => _$this._event = event;

  String? _provinsi;
  String? get provinsi => _$this._provinsi;
  set provinsi(String? provinsi) => _$this._provinsi = provinsi;

  String? _moda;
  String? get moda => _$this._moda;
  set moda(String? moda) => _$this._moda = moda;

  SummarySeasonalGet200ResponseDataFilterBuilder() {
    SummarySeasonalGet200ResponseDataFilter._defaults(this);
  }

  SummarySeasonalGet200ResponseDataFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _event = $v.event;
      _provinsi = $v.provinsi;
      _moda = $v.moda;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SummarySeasonalGet200ResponseDataFilter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SummarySeasonalGet200ResponseDataFilter;
  }

  @override
  void update(
      void Function(SummarySeasonalGet200ResponseDataFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SummarySeasonalGet200ResponseDataFilter build() => _build();

  _$SummarySeasonalGet200ResponseDataFilter _build() {
    final _$result = _$v ??
        new _$SummarySeasonalGet200ResponseDataFilter._(
          event: event,
          provinsi: provinsi,
          moda: moda,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
