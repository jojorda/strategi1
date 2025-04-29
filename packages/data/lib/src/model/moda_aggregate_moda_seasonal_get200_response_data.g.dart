// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_aggregate_moda_seasonal_get200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaAggregateModaSeasonalGet200ResponseData
    extends ModaAggregateModaSeasonalGet200ResponseData {
  @override
  final ModaAggregateModaSeasonalGet200ResponseDataGraph? graph;
  @override
  final BuiltList<ModaAggregateModaSeasonalGet200ResponseDataListInner>? list;
  @override
  final ModaAggregateModaRoutineGet200ResponseDataChartFlight? chartFlight;
  @override
  final ModaAggregateModaRoutineGet200ResponseDataChartSailing? chartSailing;

  factory _$ModaAggregateModaSeasonalGet200ResponseData(
          [void Function(ModaAggregateModaSeasonalGet200ResponseDataBuilder)?
              updates]) =>
      (new ModaAggregateModaSeasonalGet200ResponseDataBuilder()
            ..update(updates))
          ._build();

  _$ModaAggregateModaSeasonalGet200ResponseData._(
      {this.graph, this.list, this.chartFlight, this.chartSailing})
      : super._();

  @override
  ModaAggregateModaSeasonalGet200ResponseData rebuild(
          void Function(ModaAggregateModaSeasonalGet200ResponseDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaAggregateModaSeasonalGet200ResponseDataBuilder toBuilder() =>
      new ModaAggregateModaSeasonalGet200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModaAggregateModaSeasonalGet200ResponseData &&
        graph == other.graph &&
        list == other.list &&
        chartFlight == other.chartFlight &&
        chartSailing == other.chartSailing;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, graph.hashCode);
    _$hash = $jc(_$hash, list.hashCode);
    _$hash = $jc(_$hash, chartFlight.hashCode);
    _$hash = $jc(_$hash, chartSailing.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ModaAggregateModaSeasonalGet200ResponseData')
          ..add('graph', graph)
          ..add('list', list)
          ..add('chartFlight', chartFlight)
          ..add('chartSailing', chartSailing))
        .toString();
  }
}

class ModaAggregateModaSeasonalGet200ResponseDataBuilder
    implements
        Builder<ModaAggregateModaSeasonalGet200ResponseData,
            ModaAggregateModaSeasonalGet200ResponseDataBuilder> {
  _$ModaAggregateModaSeasonalGet200ResponseData? _$v;

  ModaAggregateModaSeasonalGet200ResponseDataGraphBuilder? _graph;
  ModaAggregateModaSeasonalGet200ResponseDataGraphBuilder get graph =>
      _$this._graph ??=
          new ModaAggregateModaSeasonalGet200ResponseDataGraphBuilder();
  set graph(ModaAggregateModaSeasonalGet200ResponseDataGraphBuilder? graph) =>
      _$this._graph = graph;

  ListBuilder<ModaAggregateModaSeasonalGet200ResponseDataListInner>? _list;
  ListBuilder<
      ModaAggregateModaSeasonalGet200ResponseDataListInner> get list => _$this
          ._list ??=
      new ListBuilder<ModaAggregateModaSeasonalGet200ResponseDataListInner>();
  set list(
          ListBuilder<ModaAggregateModaSeasonalGet200ResponseDataListInner>?
              list) =>
      _$this._list = list;

  ModaAggregateModaRoutineGet200ResponseDataChartFlightBuilder? _chartFlight;
  ModaAggregateModaRoutineGet200ResponseDataChartFlightBuilder
      get chartFlight => _$this._chartFlight ??=
          new ModaAggregateModaRoutineGet200ResponseDataChartFlightBuilder();
  set chartFlight(
          ModaAggregateModaRoutineGet200ResponseDataChartFlightBuilder?
              chartFlight) =>
      _$this._chartFlight = chartFlight;

  ModaAggregateModaRoutineGet200ResponseDataChartSailingBuilder? _chartSailing;
  ModaAggregateModaRoutineGet200ResponseDataChartSailingBuilder
      get chartSailing => _$this._chartSailing ??=
          new ModaAggregateModaRoutineGet200ResponseDataChartSailingBuilder();
  set chartSailing(
          ModaAggregateModaRoutineGet200ResponseDataChartSailingBuilder?
              chartSailing) =>
      _$this._chartSailing = chartSailing;

  ModaAggregateModaSeasonalGet200ResponseDataBuilder() {
    ModaAggregateModaSeasonalGet200ResponseData._defaults(this);
  }

  ModaAggregateModaSeasonalGet200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _graph = $v.graph?.toBuilder();
      _list = $v.list?.toBuilder();
      _chartFlight = $v.chartFlight?.toBuilder();
      _chartSailing = $v.chartSailing?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModaAggregateModaSeasonalGet200ResponseData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModaAggregateModaSeasonalGet200ResponseData;
  }

  @override
  void update(
      void Function(ModaAggregateModaSeasonalGet200ResponseDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaAggregateModaSeasonalGet200ResponseData build() => _build();

  _$ModaAggregateModaSeasonalGet200ResponseData _build() {
    _$ModaAggregateModaSeasonalGet200ResponseData _$result;
    try {
      _$result = _$v ??
          new _$ModaAggregateModaSeasonalGet200ResponseData._(
            graph: _graph?.build(),
            list: _list?.build(),
            chartFlight: _chartFlight?.build(),
            chartSailing: _chartSailing?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'graph';
        _graph?.build();
        _$failedField = 'list';
        _list?.build();
        _$failedField = 'chartFlight';
        _chartFlight?.build();
        _$failedField = 'chartSailing';
        _chartSailing?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModaAggregateModaSeasonalGet200ResponseData',
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
