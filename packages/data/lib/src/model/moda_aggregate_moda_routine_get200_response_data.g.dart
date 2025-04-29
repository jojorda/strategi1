// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_aggregate_moda_routine_get200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaAggregateModaRoutineGet200ResponseData
    extends ModaAggregateModaRoutineGet200ResponseData {
  @override
  final ModaAggregateModaRoutineGet200ResponseDataGraph? graph;
  @override
  final BuiltList<ModaAggregateModaRoutineGet200ResponseDataListInner>? list;
  @override
  final ModaAggregateModaRoutineGet200ResponseDataChartFlight? chartFlight;
  @override
  final ModaAggregateModaRoutineGet200ResponseDataChartSailing? chartSailing;

  factory _$ModaAggregateModaRoutineGet200ResponseData(
          [void Function(ModaAggregateModaRoutineGet200ResponseDataBuilder)?
              updates]) =>
      (new ModaAggregateModaRoutineGet200ResponseDataBuilder()..update(updates))
          ._build();

  _$ModaAggregateModaRoutineGet200ResponseData._(
      {this.graph, this.list, this.chartFlight, this.chartSailing})
      : super._();

  @override
  ModaAggregateModaRoutineGet200ResponseData rebuild(
          void Function(ModaAggregateModaRoutineGet200ResponseDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaAggregateModaRoutineGet200ResponseDataBuilder toBuilder() =>
      new ModaAggregateModaRoutineGet200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModaAggregateModaRoutineGet200ResponseData &&
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
            r'ModaAggregateModaRoutineGet200ResponseData')
          ..add('graph', graph)
          ..add('list', list)
          ..add('chartFlight', chartFlight)
          ..add('chartSailing', chartSailing))
        .toString();
  }
}

class ModaAggregateModaRoutineGet200ResponseDataBuilder
    implements
        Builder<ModaAggregateModaRoutineGet200ResponseData,
            ModaAggregateModaRoutineGet200ResponseDataBuilder> {
  _$ModaAggregateModaRoutineGet200ResponseData? _$v;

  ModaAggregateModaRoutineGet200ResponseDataGraphBuilder? _graph;
  ModaAggregateModaRoutineGet200ResponseDataGraphBuilder get graph =>
      _$this._graph ??=
          new ModaAggregateModaRoutineGet200ResponseDataGraphBuilder();
  set graph(ModaAggregateModaRoutineGet200ResponseDataGraphBuilder? graph) =>
      _$this._graph = graph;

  ListBuilder<ModaAggregateModaRoutineGet200ResponseDataListInner>? _list;
  ListBuilder<
      ModaAggregateModaRoutineGet200ResponseDataListInner> get list => _$this
          ._list ??=
      new ListBuilder<ModaAggregateModaRoutineGet200ResponseDataListInner>();
  set list(
          ListBuilder<ModaAggregateModaRoutineGet200ResponseDataListInner>?
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

  ModaAggregateModaRoutineGet200ResponseDataBuilder() {
    ModaAggregateModaRoutineGet200ResponseData._defaults(this);
  }

  ModaAggregateModaRoutineGet200ResponseDataBuilder get _$this {
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
  void replace(ModaAggregateModaRoutineGet200ResponseData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModaAggregateModaRoutineGet200ResponseData;
  }

  @override
  void update(
      void Function(ModaAggregateModaRoutineGet200ResponseDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaAggregateModaRoutineGet200ResponseData build() => _build();

  _$ModaAggregateModaRoutineGet200ResponseData _build() {
    _$ModaAggregateModaRoutineGet200ResponseData _$result;
    try {
      _$result = _$v ??
          new _$ModaAggregateModaRoutineGet200ResponseData._(
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
            r'ModaAggregateModaRoutineGet200ResponseData',
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
