// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comparison_get200_response_data_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ComparisonGet200ResponseDataInner
    extends ComparisonGet200ResponseDataInner {
  @override
  final String? moda;
  @override
  final int? idLocation;
  @override
  final String? location;
  @override
  final int? arrivalSummary;
  @override
  final int? departureSummary;
  @override
  final int? vehicleArrivalSummary;
  @override
  final int? vehicleDepartureSummary;
  @override
  final BuiltMap<String, ComparisonGet200ResponseDataInnerWeeklyValue>? weekly;
  @override
  final BuiltMap<String, ComparisonGet200ResponseDataInnerWeeklyValue>? monthly;
  @override
  final BuiltMap<String, ComparisonGet200ResponseDataInnerWeeklyValue>? yearly;
  @override
  final BuiltMap<String, ComparisonGet200ResponseDataInnerSeasonalValue>?
      seasonal;

  factory _$ComparisonGet200ResponseDataInner(
          [void Function(ComparisonGet200ResponseDataInnerBuilder)? updates]) =>
      (new ComparisonGet200ResponseDataInnerBuilder()..update(updates))
          ._build();

  _$ComparisonGet200ResponseDataInner._(
      {this.moda,
      this.idLocation,
      this.location,
      this.arrivalSummary,
      this.departureSummary,
      this.vehicleArrivalSummary,
      this.vehicleDepartureSummary,
      this.weekly,
      this.monthly,
      this.yearly,
      this.seasonal})
      : super._();

  @override
  ComparisonGet200ResponseDataInner rebuild(
          void Function(ComparisonGet200ResponseDataInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComparisonGet200ResponseDataInnerBuilder toBuilder() =>
      new ComparisonGet200ResponseDataInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComparisonGet200ResponseDataInner &&
        moda == other.moda &&
        idLocation == other.idLocation &&
        location == other.location &&
        arrivalSummary == other.arrivalSummary &&
        departureSummary == other.departureSummary &&
        vehicleArrivalSummary == other.vehicleArrivalSummary &&
        vehicleDepartureSummary == other.vehicleDepartureSummary &&
        weekly == other.weekly &&
        monthly == other.monthly &&
        yearly == other.yearly &&
        seasonal == other.seasonal;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, moda.hashCode);
    _$hash = $jc(_$hash, idLocation.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, arrivalSummary.hashCode);
    _$hash = $jc(_$hash, departureSummary.hashCode);
    _$hash = $jc(_$hash, vehicleArrivalSummary.hashCode);
    _$hash = $jc(_$hash, vehicleDepartureSummary.hashCode);
    _$hash = $jc(_$hash, weekly.hashCode);
    _$hash = $jc(_$hash, monthly.hashCode);
    _$hash = $jc(_$hash, yearly.hashCode);
    _$hash = $jc(_$hash, seasonal.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ComparisonGet200ResponseDataInner')
          ..add('moda', moda)
          ..add('idLocation', idLocation)
          ..add('location', location)
          ..add('arrivalSummary', arrivalSummary)
          ..add('departureSummary', departureSummary)
          ..add('vehicleArrivalSummary', vehicleArrivalSummary)
          ..add('vehicleDepartureSummary', vehicleDepartureSummary)
          ..add('weekly', weekly)
          ..add('monthly', monthly)
          ..add('yearly', yearly)
          ..add('seasonal', seasonal))
        .toString();
  }
}

class ComparisonGet200ResponseDataInnerBuilder
    implements
        Builder<ComparisonGet200ResponseDataInner,
            ComparisonGet200ResponseDataInnerBuilder> {
  _$ComparisonGet200ResponseDataInner? _$v;

  String? _moda;
  String? get moda => _$this._moda;
  set moda(String? moda) => _$this._moda = moda;

  int? _idLocation;
  int? get idLocation => _$this._idLocation;
  set idLocation(int? idLocation) => _$this._idLocation = idLocation;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  int? _arrivalSummary;
  int? get arrivalSummary => _$this._arrivalSummary;
  set arrivalSummary(int? arrivalSummary) =>
      _$this._arrivalSummary = arrivalSummary;

  int? _departureSummary;
  int? get departureSummary => _$this._departureSummary;
  set departureSummary(int? departureSummary) =>
      _$this._departureSummary = departureSummary;

  int? _vehicleArrivalSummary;
  int? get vehicleArrivalSummary => _$this._vehicleArrivalSummary;
  set vehicleArrivalSummary(int? vehicleArrivalSummary) =>
      _$this._vehicleArrivalSummary = vehicleArrivalSummary;

  int? _vehicleDepartureSummary;
  int? get vehicleDepartureSummary => _$this._vehicleDepartureSummary;
  set vehicleDepartureSummary(int? vehicleDepartureSummary) =>
      _$this._vehicleDepartureSummary = vehicleDepartureSummary;

  MapBuilder<String, ComparisonGet200ResponseDataInnerWeeklyValue>? _weekly;
  MapBuilder<String,
      ComparisonGet200ResponseDataInnerWeeklyValue> get weekly => _$this
          ._weekly ??=
      new MapBuilder<String, ComparisonGet200ResponseDataInnerWeeklyValue>();
  set weekly(
          MapBuilder<String, ComparisonGet200ResponseDataInnerWeeklyValue>?
              weekly) =>
      _$this._weekly = weekly;

  MapBuilder<String, ComparisonGet200ResponseDataInnerWeeklyValue>? _monthly;
  MapBuilder<String,
      ComparisonGet200ResponseDataInnerWeeklyValue> get monthly => _$this
          ._monthly ??=
      new MapBuilder<String, ComparisonGet200ResponseDataInnerWeeklyValue>();
  set monthly(
          MapBuilder<String, ComparisonGet200ResponseDataInnerWeeklyValue>?
              monthly) =>
      _$this._monthly = monthly;

  MapBuilder<String, ComparisonGet200ResponseDataInnerWeeklyValue>? _yearly;
  MapBuilder<String,
      ComparisonGet200ResponseDataInnerWeeklyValue> get yearly => _$this
          ._yearly ??=
      new MapBuilder<String, ComparisonGet200ResponseDataInnerWeeklyValue>();
  set yearly(
          MapBuilder<String, ComparisonGet200ResponseDataInnerWeeklyValue>?
              yearly) =>
      _$this._yearly = yearly;

  MapBuilder<String, ComparisonGet200ResponseDataInnerSeasonalValue>? _seasonal;
  MapBuilder<String,
      ComparisonGet200ResponseDataInnerSeasonalValue> get seasonal => _$this
          ._seasonal ??=
      new MapBuilder<String, ComparisonGet200ResponseDataInnerSeasonalValue>();
  set seasonal(
          MapBuilder<String, ComparisonGet200ResponseDataInnerSeasonalValue>?
              seasonal) =>
      _$this._seasonal = seasonal;

  ComparisonGet200ResponseDataInnerBuilder() {
    ComparisonGet200ResponseDataInner._defaults(this);
  }

  ComparisonGet200ResponseDataInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _moda = $v.moda;
      _idLocation = $v.idLocation;
      _location = $v.location;
      _arrivalSummary = $v.arrivalSummary;
      _departureSummary = $v.departureSummary;
      _vehicleArrivalSummary = $v.vehicleArrivalSummary;
      _vehicleDepartureSummary = $v.vehicleDepartureSummary;
      _weekly = $v.weekly?.toBuilder();
      _monthly = $v.monthly?.toBuilder();
      _yearly = $v.yearly?.toBuilder();
      _seasonal = $v.seasonal?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComparisonGet200ResponseDataInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ComparisonGet200ResponseDataInner;
  }

  @override
  void update(
      void Function(ComparisonGet200ResponseDataInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComparisonGet200ResponseDataInner build() => _build();

  _$ComparisonGet200ResponseDataInner _build() {
    _$ComparisonGet200ResponseDataInner _$result;
    try {
      _$result = _$v ??
          new _$ComparisonGet200ResponseDataInner._(
            moda: moda,
            idLocation: idLocation,
            location: location,
            arrivalSummary: arrivalSummary,
            departureSummary: departureSummary,
            vehicleArrivalSummary: vehicleArrivalSummary,
            vehicleDepartureSummary: vehicleDepartureSummary,
            weekly: _weekly?.build(),
            monthly: _monthly?.build(),
            yearly: _yearly?.build(),
            seasonal: _seasonal?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'weekly';
        _weekly?.build();
        _$failedField = 'monthly';
        _monthly?.build();
        _$failedField = 'yearly';
        _yearly?.build();
        _$failedField = 'seasonal';
        _seasonal?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ComparisonGet200ResponseDataInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
