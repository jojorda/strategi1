// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_aggregate_moda_seasonal_get200_response_data_graph_seasonal_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue
    extends ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue {
  @override
  final int? arrival;
  @override
  final int? departure;
  @override
  final int? vehicleArrival;
  @override
  final int? vehicleDeparture;

  factory _$ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue(
          [void Function(
                  ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValueBuilder)?
              updates]) =>
      (new ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValueBuilder()
            ..update(updates))
          ._build();

  _$ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue._(
      {this.arrival,
      this.departure,
      this.vehicleArrival,
      this.vehicleDeparture})
      : super._();

  @override
  ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue rebuild(
          void Function(
                  ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValueBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValueBuilder
      toBuilder() =>
          new ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValueBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue &&
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
            r'ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue')
          ..add('arrival', arrival)
          ..add('departure', departure)
          ..add('vehicleArrival', vehicleArrival)
          ..add('vehicleDeparture', vehicleDeparture))
        .toString();
  }
}

class ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValueBuilder
    implements
        Builder<ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue,
            ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValueBuilder> {
  _$ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue? _$v;

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

  ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValueBuilder() {
    ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue._defaults(
        this);
  }

  ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValueBuilder
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
      ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue;
  }

  @override
  void update(
      void Function(
              ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValueBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue build() =>
      _build();

  _$ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue _build() {
    final _$result = _$v ??
        new _$ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue._(
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
