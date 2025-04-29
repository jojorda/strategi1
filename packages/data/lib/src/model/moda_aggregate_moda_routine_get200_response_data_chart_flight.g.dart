// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_aggregate_moda_routine_get200_response_data_chart_flight.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaAggregateModaRoutineGet200ResponseDataChartFlight
    extends ModaAggregateModaRoutineGet200ResponseDataChartFlight {
  @override
  final ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers?
      passengers;
  @override
  final ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers?
      aircraft;

  factory _$ModaAggregateModaRoutineGet200ResponseDataChartFlight(
          [void Function(
                  ModaAggregateModaRoutineGet200ResponseDataChartFlightBuilder)?
              updates]) =>
      (new ModaAggregateModaRoutineGet200ResponseDataChartFlightBuilder()
            ..update(updates))
          ._build();

  _$ModaAggregateModaRoutineGet200ResponseDataChartFlight._(
      {this.passengers, this.aircraft})
      : super._();

  @override
  ModaAggregateModaRoutineGet200ResponseDataChartFlight rebuild(
          void Function(
                  ModaAggregateModaRoutineGet200ResponseDataChartFlightBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaAggregateModaRoutineGet200ResponseDataChartFlightBuilder toBuilder() =>
      new ModaAggregateModaRoutineGet200ResponseDataChartFlightBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModaAggregateModaRoutineGet200ResponseDataChartFlight &&
        passengers == other.passengers &&
        aircraft == other.aircraft;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, passengers.hashCode);
    _$hash = $jc(_$hash, aircraft.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ModaAggregateModaRoutineGet200ResponseDataChartFlight')
          ..add('passengers', passengers)
          ..add('aircraft', aircraft))
        .toString();
  }
}

class ModaAggregateModaRoutineGet200ResponseDataChartFlightBuilder
    implements
        Builder<ModaAggregateModaRoutineGet200ResponseDataChartFlight,
            ModaAggregateModaRoutineGet200ResponseDataChartFlightBuilder> {
  _$ModaAggregateModaRoutineGet200ResponseDataChartFlight? _$v;

  ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder?
      _passengers;
  ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder
      get passengers => _$this._passengers ??=
          new ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder();
  set passengers(
          ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder?
              passengers) =>
      _$this._passengers = passengers;

  ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder?
      _aircraft;
  ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder
      get aircraft => _$this._aircraft ??=
          new ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder();
  set aircraft(
          ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder?
              aircraft) =>
      _$this._aircraft = aircraft;

  ModaAggregateModaRoutineGet200ResponseDataChartFlightBuilder() {
    ModaAggregateModaRoutineGet200ResponseDataChartFlight._defaults(this);
  }

  ModaAggregateModaRoutineGet200ResponseDataChartFlightBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _passengers = $v.passengers?.toBuilder();
      _aircraft = $v.aircraft?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModaAggregateModaRoutineGet200ResponseDataChartFlight other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModaAggregateModaRoutineGet200ResponseDataChartFlight;
  }

  @override
  void update(
      void Function(
              ModaAggregateModaRoutineGet200ResponseDataChartFlightBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaAggregateModaRoutineGet200ResponseDataChartFlight build() => _build();

  _$ModaAggregateModaRoutineGet200ResponseDataChartFlight _build() {
    _$ModaAggregateModaRoutineGet200ResponseDataChartFlight _$result;
    try {
      _$result = _$v ??
          new _$ModaAggregateModaRoutineGet200ResponseDataChartFlight._(
            passengers: _passengers?.build(),
            aircraft: _aircraft?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'passengers';
        _passengers?.build();
        _$failedField = 'aircraft';
        _aircraft?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModaAggregateModaRoutineGet200ResponseDataChartFlight',
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
