// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comparison_get200_response_data_inner_seasonal_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComparisonGet200ResponseDataInnerSeasonalValue
    extends ComparisonGet200ResponseDataInnerSeasonalValue {
  @override
  final int? arrival;
  @override
  final int? departure;
  @override
  final int? vehicleArrival;
  @override
  final int? vehicleDeparture;

  factory _$ComparisonGet200ResponseDataInnerSeasonalValue(
          [void Function(ComparisonGet200ResponseDataInnerSeasonalValueBuilder)?
              updates]) =>
      (new ComparisonGet200ResponseDataInnerSeasonalValueBuilder()
            ..update(updates))
          ._build();

  _$ComparisonGet200ResponseDataInnerSeasonalValue._(
      {this.arrival,
      this.departure,
      this.vehicleArrival,
      this.vehicleDeparture})
      : super._();

  @override
  ComparisonGet200ResponseDataInnerSeasonalValue rebuild(
          void Function(ComparisonGet200ResponseDataInnerSeasonalValueBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComparisonGet200ResponseDataInnerSeasonalValueBuilder toBuilder() =>
      new ComparisonGet200ResponseDataInnerSeasonalValueBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComparisonGet200ResponseDataInnerSeasonalValue &&
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
            r'ComparisonGet200ResponseDataInnerSeasonalValue')
          ..add('arrival', arrival)
          ..add('departure', departure)
          ..add('vehicleArrival', vehicleArrival)
          ..add('vehicleDeparture', vehicleDeparture))
        .toString();
  }
}

class ComparisonGet200ResponseDataInnerSeasonalValueBuilder
    implements
        Builder<ComparisonGet200ResponseDataInnerSeasonalValue,
            ComparisonGet200ResponseDataInnerSeasonalValueBuilder> {
  _$ComparisonGet200ResponseDataInnerSeasonalValue? _$v;

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

  ComparisonGet200ResponseDataInnerSeasonalValueBuilder() {
    ComparisonGet200ResponseDataInnerSeasonalValue._defaults(this);
  }

  ComparisonGet200ResponseDataInnerSeasonalValueBuilder get _$this {
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
  void replace(ComparisonGet200ResponseDataInnerSeasonalValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ComparisonGet200ResponseDataInnerSeasonalValue;
  }

  @override
  void update(
      void Function(ComparisonGet200ResponseDataInnerSeasonalValueBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ComparisonGet200ResponseDataInnerSeasonalValue build() => _build();

  _$ComparisonGet200ResponseDataInnerSeasonalValue _build() {
    final _$result = _$v ??
        new _$ComparisonGet200ResponseDataInnerSeasonalValue._(
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
