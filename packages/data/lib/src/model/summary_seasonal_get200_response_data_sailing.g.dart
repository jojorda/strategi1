// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_seasonal_get200_response_data_sailing.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SummarySeasonalGet200ResponseDataSailing
    extends SummarySeasonalGet200ResponseDataSailing {
  @override
  final SummarySeasonalGet200ResponseDataFlightPassengers? passengers;
  @override
  final SummarySeasonalGet200ResponseDataFlightAircraft? ship;

  factory _$SummarySeasonalGet200ResponseDataSailing(
          [void Function(SummarySeasonalGet200ResponseDataSailingBuilder)?
              updates]) =>
      (new SummarySeasonalGet200ResponseDataSailingBuilder()..update(updates))
          ._build();

  _$SummarySeasonalGet200ResponseDataSailing._({this.passengers, this.ship})
      : super._();

  @override
  SummarySeasonalGet200ResponseDataSailing rebuild(
          void Function(SummarySeasonalGet200ResponseDataSailingBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SummarySeasonalGet200ResponseDataSailingBuilder toBuilder() =>
      new SummarySeasonalGet200ResponseDataSailingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SummarySeasonalGet200ResponseDataSailing &&
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
            r'SummarySeasonalGet200ResponseDataSailing')
          ..add('passengers', passengers)
          ..add('ship', ship))
        .toString();
  }
}

class SummarySeasonalGet200ResponseDataSailingBuilder
    implements
        Builder<SummarySeasonalGet200ResponseDataSailing,
            SummarySeasonalGet200ResponseDataSailingBuilder> {
  _$SummarySeasonalGet200ResponseDataSailing? _$v;

  SummarySeasonalGet200ResponseDataFlightPassengersBuilder? _passengers;
  SummarySeasonalGet200ResponseDataFlightPassengersBuilder get passengers =>
      _$this._passengers ??=
          new SummarySeasonalGet200ResponseDataFlightPassengersBuilder();
  set passengers(
          SummarySeasonalGet200ResponseDataFlightPassengersBuilder?
              passengers) =>
      _$this._passengers = passengers;

  SummarySeasonalGet200ResponseDataFlightAircraftBuilder? _ship;
  SummarySeasonalGet200ResponseDataFlightAircraftBuilder get ship =>
      _$this._ship ??=
          new SummarySeasonalGet200ResponseDataFlightAircraftBuilder();
  set ship(SummarySeasonalGet200ResponseDataFlightAircraftBuilder? ship) =>
      _$this._ship = ship;

  SummarySeasonalGet200ResponseDataSailingBuilder() {
    SummarySeasonalGet200ResponseDataSailing._defaults(this);
  }

  SummarySeasonalGet200ResponseDataSailingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _passengers = $v.passengers?.toBuilder();
      _ship = $v.ship?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SummarySeasonalGet200ResponseDataSailing other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SummarySeasonalGet200ResponseDataSailing;
  }

  @override
  void update(
      void Function(SummarySeasonalGet200ResponseDataSailingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SummarySeasonalGet200ResponseDataSailing build() => _build();

  _$SummarySeasonalGet200ResponseDataSailing _build() {
    _$SummarySeasonalGet200ResponseDataSailing _$result;
    try {
      _$result = _$v ??
          new _$SummarySeasonalGet200ResponseDataSailing._(
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
            r'SummarySeasonalGet200ResponseDataSailing',
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
