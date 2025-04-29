// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_regional_routine_get200_response_data_graph.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaRegionalRoutineGet200ResponseDataGraph
    extends ModaRegionalRoutineGet200ResponseDataGraph {
  @override
  final BuiltList<ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner>?
      weekly;
  @override
  final BuiltList<ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner>?
      monthly;
  @override
  final BuiltList<ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner>?
      yearly;

  factory _$ModaRegionalRoutineGet200ResponseDataGraph(
          [void Function(ModaRegionalRoutineGet200ResponseDataGraphBuilder)?
              updates]) =>
      (new ModaRegionalRoutineGet200ResponseDataGraphBuilder()..update(updates))
          ._build();

  _$ModaRegionalRoutineGet200ResponseDataGraph._(
      {this.weekly, this.monthly, this.yearly})
      : super._();

  @override
  ModaRegionalRoutineGet200ResponseDataGraph rebuild(
          void Function(ModaRegionalRoutineGet200ResponseDataGraphBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaRegionalRoutineGet200ResponseDataGraphBuilder toBuilder() =>
      new ModaRegionalRoutineGet200ResponseDataGraphBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModaRegionalRoutineGet200ResponseDataGraph &&
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
            r'ModaRegionalRoutineGet200ResponseDataGraph')
          ..add('weekly', weekly)
          ..add('monthly', monthly)
          ..add('yearly', yearly))
        .toString();
  }
}

class ModaRegionalRoutineGet200ResponseDataGraphBuilder
    implements
        Builder<ModaRegionalRoutineGet200ResponseDataGraph,
            ModaRegionalRoutineGet200ResponseDataGraphBuilder> {
  _$ModaRegionalRoutineGet200ResponseDataGraph? _$v;

  ListBuilder<ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner>? _weekly;
  ListBuilder<ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner>
      get weekly => _$this._weekly ??= new ListBuilder<
          ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner>();
  set weekly(
          ListBuilder<ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner>?
              weekly) =>
      _$this._weekly = weekly;

  ListBuilder<ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner>? _monthly;
  ListBuilder<ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner>
      get monthly => _$this._monthly ??= new ListBuilder<
          ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner>();
  set monthly(
          ListBuilder<ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner>?
              monthly) =>
      _$this._monthly = monthly;

  ListBuilder<ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner>? _yearly;
  ListBuilder<ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner>
      get yearly => _$this._yearly ??= new ListBuilder<
          ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner>();
  set yearly(
          ListBuilder<ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner>?
              yearly) =>
      _$this._yearly = yearly;

  ModaRegionalRoutineGet200ResponseDataGraphBuilder() {
    ModaRegionalRoutineGet200ResponseDataGraph._defaults(this);
  }

  ModaRegionalRoutineGet200ResponseDataGraphBuilder get _$this {
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
  void replace(ModaRegionalRoutineGet200ResponseDataGraph other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModaRegionalRoutineGet200ResponseDataGraph;
  }

  @override
  void update(
      void Function(ModaRegionalRoutineGet200ResponseDataGraphBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaRegionalRoutineGet200ResponseDataGraph build() => _build();

  _$ModaRegionalRoutineGet200ResponseDataGraph _build() {
    _$ModaRegionalRoutineGet200ResponseDataGraph _$result;
    try {
      _$result = _$v ??
          new _$ModaRegionalRoutineGet200ResponseDataGraph._(
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
            r'ModaRegionalRoutineGet200ResponseDataGraph',
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
