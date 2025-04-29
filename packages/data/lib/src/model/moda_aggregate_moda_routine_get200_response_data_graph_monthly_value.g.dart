// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_aggregate_moda_routine_get200_response_data_graph_monthly_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue
    extends ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue {
  @override
  final int? arrival;
  @override
  final int? departure;
  @override
  final int? vehicleArrival;
  @override
  final int? vehicleDeparture;

  factory _$ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue(
          [void Function(
                  ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValueBuilder)?
              updates]) =>
      (new ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValueBuilder()
            ..update(updates))
          ._build();

  _$ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue._(
      {this.arrival,
      this.departure,
      this.vehicleArrival,
      this.vehicleDeparture})
      : super._();

  @override
  ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue rebuild(
          void Function(
                  ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValueBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValueBuilder
      toBuilder() =>
          new ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValueBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue &&
        arrival == other.arrival &&
        departure == other.departure &&
        vehicleArrival == other.vehicleArrival &&
        vehicleDeparture == other.vehicleDeparture;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, arrival.hashCode);
    _$hash = $jc(_$hash, departure.hashCode);
    _$hash = $jc(_$hash, vehicleArrival.hashCode);
    _$hash = $jc(_$hash, vehicleDeparture.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue')
          ..add('arrival', arrival)
          ..add('departure', departure)
          ..add('vehicleArrival', vehicleArrival)
          ..add('vehicleDeparture', vehicleDeparture))
        .toString();
  }
}

class ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValueBuilder
    implements
        Builder<ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue,
            ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValueBuilder> {
  _$ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue? _$v;

  int? _arrival;
  int? get arrival => _$this._arrival;
  set arrival(int? arrival) => _$this._arrival = arrival;

  int? _departure;
  int? get departure => _$this._departure;
  set departure(int? departure) => _$this._departure = departure;

  int? _vehicleArrival;
  int? get vehicleArrival => _$this._vehicleArrival;
  set vehicleArrival(int? vehicleArrival) =>
      _$this._vehicleArrival = vehicleArrival;

  int? _vehicleDeparture;
  int? get vehicleDeparture => _$this._vehicleDeparture;
  set vehicleDeparture(int? vehicleDeparture) =>
      _$this._vehicleDeparture = vehicleDeparture;

  ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValueBuilder() {
    ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue._defaults(this);
  }

  ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValueBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _arrival = $v.arrival;
      _departure = $v.departure;
      _vehicleArrival = $v.vehicleArrival;
      _vehicleDeparture = $v.vehicleDeparture;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue;
  }

  @override
  void update(
      void Function(
              ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValueBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue build() =>
      _build();

  _$ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue _build() {
    final _$result = _$v ??
        new _$ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue._(
          arrival: arrival,
          departure: departure,
          vehicleArrival: vehicleArrival,
          vehicleDeparture: vehicleDeparture,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
