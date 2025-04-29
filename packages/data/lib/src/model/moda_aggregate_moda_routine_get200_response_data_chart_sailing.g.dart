// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_aggregate_moda_routine_get200_response_data_chart_sailing.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaAggregateModaRoutineGet200ResponseDataChartSailing
    extends ModaAggregateModaRoutineGet200ResponseDataChartSailing {
  @override
  final ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers?
      passengers;
  @override
  final ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers? ship;

  factory _$ModaAggregateModaRoutineGet200ResponseDataChartSailing(
          [void Function(
                  ModaAggregateModaRoutineGet200ResponseDataChartSailingBuilder)?
              updates]) =>
      (new ModaAggregateModaRoutineGet200ResponseDataChartSailingBuilder()
            ..update(updates))
          ._build();

  _$ModaAggregateModaRoutineGet200ResponseDataChartSailing._(
      {this.passengers, this.ship})
      : super._();

  @override
  ModaAggregateModaRoutineGet200ResponseDataChartSailing rebuild(
          void Function(
                  ModaAggregateModaRoutineGet200ResponseDataChartSailingBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaAggregateModaRoutineGet200ResponseDataChartSailingBuilder toBuilder() =>
      new ModaAggregateModaRoutineGet200ResponseDataChartSailingBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModaAggregateModaRoutineGet200ResponseDataChartSailing &&
        passengers == other.passengers &&
        ship == other.ship;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, passengers.hashCode);
    _$hash = $jc(_$hash, ship.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ModaAggregateModaRoutineGet200ResponseDataChartSailing')
          ..add('passengers', passengers)
          ..add('ship', ship))
        .toString();
  }
}

class ModaAggregateModaRoutineGet200ResponseDataChartSailingBuilder
    implements
        Builder<ModaAggregateModaRoutineGet200ResponseDataChartSailing,
            ModaAggregateModaRoutineGet200ResponseDataChartSailingBuilder> {
  _$ModaAggregateModaRoutineGet200ResponseDataChartSailing? _$v;

  ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder?
      _passengers;
  ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder
      get passengers => _$this._passengers ??=
          new ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder();
  set passengers(
          ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder?
              passengers) =>
      _$this._passengers = passengers;

  ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder? _ship;
  ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder
      get ship => _$this._ship ??=
          new ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder();
  set ship(
          ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder?
              ship) =>
      _$this._ship = ship;

  ModaAggregateModaRoutineGet200ResponseDataChartSailingBuilder() {
    ModaAggregateModaRoutineGet200ResponseDataChartSailing._defaults(this);
  }

  ModaAggregateModaRoutineGet200ResponseDataChartSailingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _passengers = $v.passengers?.toBuilder();
      _ship = $v.ship?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModaAggregateModaRoutineGet200ResponseDataChartSailing other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModaAggregateModaRoutineGet200ResponseDataChartSailing;
  }

  @override
  void update(
      void Function(
              ModaAggregateModaRoutineGet200ResponseDataChartSailingBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaAggregateModaRoutineGet200ResponseDataChartSailing build() => _build();

  _$ModaAggregateModaRoutineGet200ResponseDataChartSailing _build() {
    _$ModaAggregateModaRoutineGet200ResponseDataChartSailing _$result;
    try {
      _$result = _$v ??
          new _$ModaAggregateModaRoutineGet200ResponseDataChartSailing._(
            passengers: _passengers?.build(),
            ship: _ship?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'passengers';
        _passengers?.build();
        _$failedField = 'ship';
        _ship?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModaAggregateModaRoutineGet200ResponseDataChartSailing',
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
