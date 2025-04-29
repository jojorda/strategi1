// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transportation_metrics.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransportationMetrics extends TransportationMetrics {
  @override
  final int? arrival;
  @override
  final int? departure;
  @override
  final int? vehicleArrival;
  @override
  final int? vehicleDeparture;

  factory _$TransportationMetrics(
          [void Function(TransportationMetricsBuilder)? updates]) =>
      (new TransportationMetricsBuilder()..update(updates))._build();

  _$TransportationMetrics._(
      {this.arrival,
      this.departure,
      this.vehicleArrival,
      this.vehicleDeparture})
      : super._();

  @override
  TransportationMetrics rebuild(
          void Function(TransportationMetricsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransportationMetricsBuilder toBuilder() =>
      new TransportationMetricsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransportationMetrics &&
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
    return (newBuiltValueToStringHelper(r'TransportationMetrics')
          ..add('arrival', arrival)
          ..add('departure', departure)
          ..add('vehicleArrival', vehicleArrival)
          ..add('vehicleDeparture', vehicleDeparture))
        .toString();
  }
}

class TransportationMetricsBuilder
    implements Builder<TransportationMetrics, TransportationMetricsBuilder> {
  _$TransportationMetrics? _$v;

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

  TransportationMetricsBuilder() {
    TransportationMetrics._defaults(this);
  }

  TransportationMetricsBuilder get _$this {
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
  void replace(TransportationMetrics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransportationMetrics;
  }

  @override
  void update(void Function(TransportationMetricsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransportationMetrics build() => _build();

  _$TransportationMetrics _build() {
    final _$result = _$v ??
        new _$TransportationMetrics._(
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
