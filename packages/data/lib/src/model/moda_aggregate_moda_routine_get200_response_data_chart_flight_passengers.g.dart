// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_aggregate_moda_routine_get200_response_data_chart_flight_passengers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers
    extends ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers {
  @override
  final int? domestic;
  @override
  final int? outbound;
  @override
  final int? inbound;

  factory _$ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers(
          [void Function(
                  ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder)?
              updates]) =>
      (new ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder()
            ..update(updates))
          ._build();

  _$ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers._(
      {this.domestic, this.outbound, this.inbound})
      : super._();

  @override
  ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers rebuild(
          void Function(
                  ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder
      toBuilder() =>
          new ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers &&
        domestic == other.domestic &&
        outbound == other.outbound &&
        inbound == other.inbound;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, domestic.hashCode);
    _$hash = $jc(_$hash, outbound.hashCode);
    _$hash = $jc(_$hash, inbound.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers')
          ..add('domestic', domestic)
          ..add('outbound', outbound)
          ..add('inbound', inbound))
        .toString();
  }
}

class ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder
    implements
        Builder<ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers,
            ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder> {
  _$ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers? _$v;

  int? _domestic;
  int? get domestic => _$this._domestic;
  set domestic(int? domestic) => _$this._domestic = domestic;

  int? _outbound;
  int? get outbound => _$this._outbound;
  set outbound(int? outbound) => _$this._outbound = outbound;

  int? _inbound;
  int? get inbound => _$this._inbound;
  set inbound(int? inbound) => _$this._inbound = inbound;

  ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder() {
    ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers._defaults(
        this);
  }

  ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _domestic = $v.domestic;
      _outbound = $v.outbound;
      _inbound = $v.inbound;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers;
  }

  @override
  void update(
      void Function(
              ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers build() =>
      _build();

  _$ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers _build() {
    final _$result = _$v ??
        new _$ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers._(
          domestic: domestic,
          outbound: outbound,
          inbound: inbound,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
