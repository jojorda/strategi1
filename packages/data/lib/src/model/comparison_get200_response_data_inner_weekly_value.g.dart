// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comparison_get200_response_data_inner_weekly_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComparisonGet200ResponseDataInnerWeeklyValue
    extends ComparisonGet200ResponseDataInnerWeeklyValue {
  @override
  final int? arrival;
  @override
  final int? departure;
  @override
  final int? vehicleArrival;
  @override
  final int? vehicleDeparture;

  factory _$ComparisonGet200ResponseDataInnerWeeklyValue(
          [void Function(ComparisonGet200ResponseDataInnerWeeklyValueBuilder)?
              updates]) =>
      (new ComparisonGet200ResponseDataInnerWeeklyValueBuilder()
            ..update(updates))
          ._build();

  _$ComparisonGet200ResponseDataInnerWeeklyValue._(
      {this.arrival,
      this.departure,
      this.vehicleArrival,
      this.vehicleDeparture})
      : super._();

  @override
  ComparisonGet200ResponseDataInnerWeeklyValue rebuild(
          void Function(ComparisonGet200ResponseDataInnerWeeklyValueBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComparisonGet200ResponseDataInnerWeeklyValueBuilder toBuilder() =>
      new ComparisonGet200ResponseDataInnerWeeklyValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComparisonGet200ResponseDataInnerWeeklyValue &&
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
            r'ComparisonGet200ResponseDataInnerWeeklyValue')
          ..add('arrival', arrival)
          ..add('departure', departure)
          ..add('vehicleArrival', vehicleArrival)
          ..add('vehicleDeparture', vehicleDeparture))
        .toString();
  }
}

class ComparisonGet200ResponseDataInnerWeeklyValueBuilder
    implements
        Builder<ComparisonGet200ResponseDataInnerWeeklyValue,
            ComparisonGet200ResponseDataInnerWeeklyValueBuilder> {
  _$ComparisonGet200ResponseDataInnerWeeklyValue? _$v;

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

  ComparisonGet200ResponseDataInnerWeeklyValueBuilder() {
    ComparisonGet200ResponseDataInnerWeeklyValue._defaults(this);
  }

  ComparisonGet200ResponseDataInnerWeeklyValueBuilder get _$this {
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
  void replace(ComparisonGet200ResponseDataInnerWeeklyValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ComparisonGet200ResponseDataInnerWeeklyValue;
  }

  @override
  void update(
      void Function(ComparisonGet200ResponseDataInnerWeeklyValueBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ComparisonGet200ResponseDataInnerWeeklyValue build() => _build();

  _$ComparisonGet200ResponseDataInnerWeeklyValue _build() {
    final _$result = _$v ??
        new _$ComparisonGet200ResponseDataInnerWeeklyValue._(
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
