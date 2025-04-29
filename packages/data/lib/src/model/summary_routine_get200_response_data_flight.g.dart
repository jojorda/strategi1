// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_routine_get200_response_data_flight.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SummaryRoutineGet200ResponseDataFlight
    extends SummaryRoutineGet200ResponseDataFlight {
  @override
  final SummaryRoutineGet200ResponseDataFlightPassengers? passengers;
  @override
  final SummaryRoutineGet200ResponseDataFlightPassengers? aircraft;

  factory _$SummaryRoutineGet200ResponseDataFlight(
          [void Function(SummaryRoutineGet200ResponseDataFlightBuilder)?
              updates]) =>
      (new SummaryRoutineGet200ResponseDataFlightBuilder()..update(updates))
          ._build();

  _$SummaryRoutineGet200ResponseDataFlight._({this.passengers, this.aircraft})
      : super._();

  @override
  SummaryRoutineGet200ResponseDataFlight rebuild(
          void Function(SummaryRoutineGet200ResponseDataFlightBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SummaryRoutineGet200ResponseDataFlightBuilder toBuilder() =>
      new SummaryRoutineGet200ResponseDataFlightBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SummaryRoutineGet200ResponseDataFlight &&
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
            r'SummaryRoutineGet200ResponseDataFlight')
          ..add('passengers', passengers)
          ..add('aircraft', aircraft))
        .toString();
  }
}

class SummaryRoutineGet200ResponseDataFlightBuilder
    implements
        Builder<SummaryRoutineGet200ResponseDataFlight,
            SummaryRoutineGet200ResponseDataFlightBuilder> {
  _$SummaryRoutineGet200ResponseDataFlight? _$v;

  SummaryRoutineGet200ResponseDataFlightPassengersBuilder? _passengers;
  SummaryRoutineGet200ResponseDataFlightPassengersBuilder get passengers =>
      _$this._passengers ??=
          new SummaryRoutineGet200ResponseDataFlightPassengersBuilder();
  set passengers(
          SummaryRoutineGet200ResponseDataFlightPassengersBuilder?
              passengers) =>
      _$this._passengers = passengers;

  SummaryRoutineGet200ResponseDataFlightPassengersBuilder? _aircraft;
  SummaryRoutineGet200ResponseDataFlightPassengersBuilder get aircraft =>
      _$this._aircraft ??=
          new SummaryRoutineGet200ResponseDataFlightPassengersBuilder();
  set aircraft(
          SummaryRoutineGet200ResponseDataFlightPassengersBuilder? aircraft) =>
      _$this._aircraft = aircraft;

  SummaryRoutineGet200ResponseDataFlightBuilder() {
    SummaryRoutineGet200ResponseDataFlight._defaults(this);
  }

  SummaryRoutineGet200ResponseDataFlightBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _passengers = $v.passengers?.toBuilder();
      _aircraft = $v.aircraft?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SummaryRoutineGet200ResponseDataFlight other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SummaryRoutineGet200ResponseDataFlight;
  }

  @override
  void update(
      void Function(SummaryRoutineGet200ResponseDataFlightBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SummaryRoutineGet200ResponseDataFlight build() => _build();

  _$SummaryRoutineGet200ResponseDataFlight _build() {
    _$SummaryRoutineGet200ResponseDataFlight _$result;
    try {
      _$result = _$v ??
          new _$SummaryRoutineGet200ResponseDataFlight._(
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
            r'SummaryRoutineGet200ResponseDataFlight',
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
