// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_seasonal_get200_response_data_flight.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SummarySeasonalGet200ResponseDataFlight
    extends SummarySeasonalGet200ResponseDataFlight {
  @override
  final SummarySeasonalGet200ResponseDataFlightPassengers? passengers;
  @override
  final SummarySeasonalGet200ResponseDataFlightAircraft? aircraft;

  factory _$SummarySeasonalGet200ResponseDataFlight(
          [void Function(SummarySeasonalGet200ResponseDataFlightBuilder)?
              updates]) =>
      (new SummarySeasonalGet200ResponseDataFlightBuilder()..update(updates))
          ._build();

  _$SummarySeasonalGet200ResponseDataFlight._({this.passengers, this.aircraft})
      : super._();

  @override
  SummarySeasonalGet200ResponseDataFlight rebuild(
          void Function(SummarySeasonalGet200ResponseDataFlightBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SummarySeasonalGet200ResponseDataFlightBuilder toBuilder() =>
      new SummarySeasonalGet200ResponseDataFlightBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SummarySeasonalGet200ResponseDataFlight &&
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
            r'SummarySeasonalGet200ResponseDataFlight')
          ..add('passengers', passengers)
          ..add('aircraft', aircraft))
        .toString();
  }
}

class SummarySeasonalGet200ResponseDataFlightBuilder
    implements
        Builder<SummarySeasonalGet200ResponseDataFlight,
            SummarySeasonalGet200ResponseDataFlightBuilder> {
  _$SummarySeasonalGet200ResponseDataFlight? _$v;

  SummarySeasonalGet200ResponseDataFlightPassengersBuilder? _passengers;
  SummarySeasonalGet200ResponseDataFlightPassengersBuilder get passengers =>
      _$this._passengers ??=
          new SummarySeasonalGet200ResponseDataFlightPassengersBuilder();
  set passengers(
          SummarySeasonalGet200ResponseDataFlightPassengersBuilder?
              passengers) =>
      _$this._passengers = passengers;

  SummarySeasonalGet200ResponseDataFlightAircraftBuilder? _aircraft;
  SummarySeasonalGet200ResponseDataFlightAircraftBuilder get aircraft =>
      _$this._aircraft ??=
          new SummarySeasonalGet200ResponseDataFlightAircraftBuilder();
  set aircraft(
          SummarySeasonalGet200ResponseDataFlightAircraftBuilder? aircraft) =>
      _$this._aircraft = aircraft;

  SummarySeasonalGet200ResponseDataFlightBuilder() {
    SummarySeasonalGet200ResponseDataFlight._defaults(this);
  }

  SummarySeasonalGet200ResponseDataFlightBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _passengers = $v.passengers?.toBuilder();
      _aircraft = $v.aircraft?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SummarySeasonalGet200ResponseDataFlight other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SummarySeasonalGet200ResponseDataFlight;
  }

  @override
  void update(
      void Function(SummarySeasonalGet200ResponseDataFlightBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SummarySeasonalGet200ResponseDataFlight build() => _build();

  _$SummarySeasonalGet200ResponseDataFlight _build() {
    _$SummarySeasonalGet200ResponseDataFlight _$result;
    try {
      _$result = _$v ??
          new _$SummarySeasonalGet200ResponseDataFlight._(
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
            r'SummarySeasonalGet200ResponseDataFlight',
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
