// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_aggregate_moda_routine_get200_response_data_graph.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaAggregateModaRoutineGet200ResponseDataGraph
    extends ModaAggregateModaRoutineGet200ResponseDataGraph {
  @override
  final BuiltMap<String,
      ModaAggregateModaRoutineGet200ResponseDataGraphWeeklyValue>? weekly;
  @override
  final BuiltMap<String,
      ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue>? monthly;
  @override
  final BuiltMap<String,
      ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue>? yearly;

  factory _$ModaAggregateModaRoutineGet200ResponseDataGraph(
          [void Function(
                  ModaAggregateModaRoutineGet200ResponseDataGraphBuilder)?
              updates]) =>
      (new ModaAggregateModaRoutineGet200ResponseDataGraphBuilder()
            ..update(updates))
          ._build();

  _$ModaAggregateModaRoutineGet200ResponseDataGraph._(
      {this.weekly, this.monthly, this.yearly})
      : super._();

  @override
  ModaAggregateModaRoutineGet200ResponseDataGraph rebuild(
          void Function(ModaAggregateModaRoutineGet200ResponseDataGraphBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaAggregateModaRoutineGet200ResponseDataGraphBuilder toBuilder() =>
      new ModaAggregateModaRoutineGet200ResponseDataGraphBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModaAggregateModaRoutineGet200ResponseDataGraph &&
        weekly == other.weekly &&
        monthly == other.monthly &&
        yearly == other.yearly;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, weekly.hashCode);
    _$hash = $jc(_$hash, monthly.hashCode);
    _$hash = $jc(_$hash, yearly.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ModaAggregateModaRoutineGet200ResponseDataGraph')
          ..add('weekly', weekly)
          ..add('monthly', monthly)
          ..add('yearly', yearly))
        .toString();
  }
}

class ModaAggregateModaRoutineGet200ResponseDataGraphBuilder
    implements
        Builder<ModaAggregateModaRoutineGet200ResponseDataGraph,
            ModaAggregateModaRoutineGet200ResponseDataGraphBuilder> {
  _$ModaAggregateModaRoutineGet200ResponseDataGraph? _$v;

  MapBuilder<String,
      ModaAggregateModaRoutineGet200ResponseDataGraphWeeklyValue>? _weekly;
  MapBuilder<String, ModaAggregateModaRoutineGet200ResponseDataGraphWeeklyValue>
      get weekly => _$this._weekly ??= new MapBuilder<String,
          ModaAggregateModaRoutineGet200ResponseDataGraphWeeklyValue>();
  set weekly(
          MapBuilder<String,
                  ModaAggregateModaRoutineGet200ResponseDataGraphWeeklyValue>?
              weekly) =>
      _$this._weekly = weekly;

  MapBuilder<String,
      ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue>? _monthly;
  MapBuilder<String,
          ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue>
      get monthly => _$this._monthly ??= new MapBuilder<String,
          ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue>();
  set monthly(
          MapBuilder<String,
                  ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue>?
              monthly) =>
      _$this._monthly = monthly;

  MapBuilder<String,
      ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue>? _yearly;
  MapBuilder<String,
          ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue>
      get yearly => _$this._yearly ??= new MapBuilder<String,
          ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue>();
  set yearly(
          MapBuilder<String,
                  ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue>?
              yearly) =>
      _$this._yearly = yearly;

  ModaAggregateModaRoutineGet200ResponseDataGraphBuilder() {
    ModaAggregateModaRoutineGet200ResponseDataGraph._defaults(this);
  }

  ModaAggregateModaRoutineGet200ResponseDataGraphBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _weekly = $v.weekly?.toBuilder();
      _monthly = $v.monthly?.toBuilder();
      _yearly = $v.yearly?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModaAggregateModaRoutineGet200ResponseDataGraph other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModaAggregateModaRoutineGet200ResponseDataGraph;
  }

  @override
  void update(
      void Function(ModaAggregateModaRoutineGet200ResponseDataGraphBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaAggregateModaRoutineGet200ResponseDataGraph build() => _build();

  _$ModaAggregateModaRoutineGet200ResponseDataGraph _build() {
    _$ModaAggregateModaRoutineGet200ResponseDataGraph _$result;
    try {
      _$result = _$v ??
          new _$ModaAggregateModaRoutineGet200ResponseDataGraph._(
            weekly: _weekly?.build(),
            monthly: _monthly?.build(),
            yearly: _yearly?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'weekly';
        _weekly?.build();
        _$failedField = 'monthly';
        _monthly?.build();
        _$failedField = 'yearly';
        _yearly?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModaAggregateModaRoutineGet200ResponseDataGraph',
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
