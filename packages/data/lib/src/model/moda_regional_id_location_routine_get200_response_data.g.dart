// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_regional_id_location_routine_get200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaRegionalIdLocationRoutineGet200ResponseData
    extends ModaRegionalIdLocationRoutineGet200ResponseData {
  @override
  final BuiltMap<String,
      ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>? weekly;
  @override
  final BuiltMap<String,
      ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>? monthly;
  @override
  final BuiltMap<String,
      ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>? yearly;

  factory _$ModaRegionalIdLocationRoutineGet200ResponseData(
          [void Function(
                  ModaRegionalIdLocationRoutineGet200ResponseDataBuilder)?
              updates]) =>
      (new ModaRegionalIdLocationRoutineGet200ResponseDataBuilder()
            ..update(updates))
          ._build();

  _$ModaRegionalIdLocationRoutineGet200ResponseData._(
      {this.weekly, this.monthly, this.yearly})
      : super._();

  @override
  ModaRegionalIdLocationRoutineGet200ResponseData rebuild(
          void Function(ModaRegionalIdLocationRoutineGet200ResponseDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaRegionalIdLocationRoutineGet200ResponseDataBuilder toBuilder() =>
      new ModaRegionalIdLocationRoutineGet200ResponseDataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModaRegionalIdLocationRoutineGet200ResponseData &&
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
            r'ModaRegionalIdLocationRoutineGet200ResponseData')
          ..add('weekly', weekly)
          ..add('monthly', monthly)
          ..add('yearly', yearly))
        .toString();
  }
}

class ModaRegionalIdLocationRoutineGet200ResponseDataBuilder
    implements
        Builder<ModaRegionalIdLocationRoutineGet200ResponseData,
            ModaRegionalIdLocationRoutineGet200ResponseDataBuilder> {
  _$ModaRegionalIdLocationRoutineGet200ResponseData? _$v;

  MapBuilder<String,
      ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>? _weekly;
  MapBuilder<String,
          ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>
      get weekly => _$this._weekly ??= new MapBuilder<String,
          ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>();
  set weekly(
          MapBuilder<String,
                  ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>?
              weekly) =>
      _$this._weekly = weekly;

  MapBuilder<String,
      ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>? _monthly;
  MapBuilder<String,
          ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>
      get monthly => _$this._monthly ??= new MapBuilder<String,
          ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>();
  set monthly(
          MapBuilder<String,
                  ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>?
              monthly) =>
      _$this._monthly = monthly;

  MapBuilder<String,
      ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>? _yearly;
  MapBuilder<String,
          ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>
      get yearly => _$this._yearly ??= new MapBuilder<String,
          ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>();
  set yearly(
          MapBuilder<String,
                  ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>?
              yearly) =>
      _$this._yearly = yearly;

  ModaRegionalIdLocationRoutineGet200ResponseDataBuilder() {
    ModaRegionalIdLocationRoutineGet200ResponseData._defaults(this);
  }

  ModaRegionalIdLocationRoutineGet200ResponseDataBuilder get _$this {
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
  void replace(ModaRegionalIdLocationRoutineGet200ResponseData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModaRegionalIdLocationRoutineGet200ResponseData;
  }

  @override
  void update(
      void Function(ModaRegionalIdLocationRoutineGet200ResponseDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaRegionalIdLocationRoutineGet200ResponseData build() => _build();

  _$ModaRegionalIdLocationRoutineGet200ResponseData _build() {
    _$ModaRegionalIdLocationRoutineGet200ResponseData _$result;
    try {
      _$result = _$v ??
          new _$ModaRegionalIdLocationRoutineGet200ResponseData._(
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
            r'ModaRegionalIdLocationRoutineGet200ResponseData',
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
