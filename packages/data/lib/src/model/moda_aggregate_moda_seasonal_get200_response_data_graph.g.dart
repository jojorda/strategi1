// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_aggregate_moda_seasonal_get200_response_data_graph.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaAggregateModaSeasonalGet200ResponseDataGraph
    extends ModaAggregateModaSeasonalGet200ResponseDataGraph {
  @override
  final BuiltMap<String,
      ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>? seasonal;

  factory _$ModaAggregateModaSeasonalGet200ResponseDataGraph(
          [void Function(
                  ModaAggregateModaSeasonalGet200ResponseDataGraphBuilder)?
              updates]) =>
      (new ModaAggregateModaSeasonalGet200ResponseDataGraphBuilder()
            ..update(updates))
          ._build();

  _$ModaAggregateModaSeasonalGet200ResponseDataGraph._({this.seasonal})
      : super._();

  @override
  ModaAggregateModaSeasonalGet200ResponseDataGraph rebuild(
          void Function(ModaAggregateModaSeasonalGet200ResponseDataGraphBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaAggregateModaSeasonalGet200ResponseDataGraphBuilder toBuilder() =>
      new ModaAggregateModaSeasonalGet200ResponseDataGraphBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModaAggregateModaSeasonalGet200ResponseDataGraph &&
        seasonal == other.seasonal;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, seasonal.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ModaAggregateModaSeasonalGet200ResponseDataGraph')
          ..add('seasonal', seasonal))
        .toString();
  }
}

class ModaAggregateModaSeasonalGet200ResponseDataGraphBuilder
    implements
        Builder<ModaAggregateModaSeasonalGet200ResponseDataGraph,
            ModaAggregateModaSeasonalGet200ResponseDataGraphBuilder> {
  _$ModaAggregateModaSeasonalGet200ResponseDataGraph? _$v;

  MapBuilder<String,
      ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>? _seasonal;
  MapBuilder<String,
          ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>
      get seasonal => _$this._seasonal ??= new MapBuilder<String,
          ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>();
  set seasonal(
          MapBuilder<String,
                  ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>?
              seasonal) =>
      _$this._seasonal = seasonal;

  ModaAggregateModaSeasonalGet200ResponseDataGraphBuilder() {
    ModaAggregateModaSeasonalGet200ResponseDataGraph._defaults(this);
  }

  ModaAggregateModaSeasonalGet200ResponseDataGraphBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seasonal = $v.seasonal?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModaAggregateModaSeasonalGet200ResponseDataGraph other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModaAggregateModaSeasonalGet200ResponseDataGraph;
  }

  @override
  void update(
      void Function(ModaAggregateModaSeasonalGet200ResponseDataGraphBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaAggregateModaSeasonalGet200ResponseDataGraph build() => _build();

  _$ModaAggregateModaSeasonalGet200ResponseDataGraph _build() {
    _$ModaAggregateModaSeasonalGet200ResponseDataGraph _$result;
    try {
      _$result = _$v ??
          new _$ModaAggregateModaSeasonalGet200ResponseDataGraph._(
            seasonal: _seasonal?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'seasonal';
        _seasonal?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModaAggregateModaSeasonalGet200ResponseDataGraph',
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
