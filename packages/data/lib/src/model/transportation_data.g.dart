// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transportation_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransportationData extends TransportationData {
  @override
  final String? idLocation;
  @override
  final String? location;
  @override
  final String? moda;
  @override
  final BuiltMap<String, TransportationMetrics>? seasonal;
  @override
  final BuiltMap<String, TransportationMetrics>? weekly;
  @override
  final BuiltMap<String, TransportationMetrics>? monthly;
  @override
  final BuiltMap<String, TransportationMetrics>? yearly;

  factory _$TransportationData(
          [void Function(TransportationDataBuilder)? updates]) =>
      (new TransportationDataBuilder()..update(updates))._build();

  _$TransportationData._(
      {this.idLocation,
      this.location,
      this.moda,
      this.seasonal,
      this.weekly,
      this.monthly,
      this.yearly})
      : super._();

  @override
  TransportationData rebuild(
          void Function(TransportationDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransportationDataBuilder toBuilder() =>
      new TransportationDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransportationData &&
        idLocation == other.idLocation &&
        location == other.location &&
        moda == other.moda &&
        seasonal == other.seasonal &&
        weekly == other.weekly &&
        monthly == other.monthly &&
        yearly == other.yearly;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, idLocation.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, moda.hashCode);
    _$hash = $jc(_$hash, seasonal.hashCode);
    _$hash = $jc(_$hash, weekly.hashCode);
    _$hash = $jc(_$hash, monthly.hashCode);
    _$hash = $jc(_$hash, yearly.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TransportationData')
          ..add('idLocation', idLocation)
          ..add('location', location)
          ..add('moda', moda)
          ..add('seasonal', seasonal)
          ..add('weekly', weekly)
          ..add('monthly', monthly)
          ..add('yearly', yearly))
        .toString();
  }
}

class TransportationDataBuilder
    implements Builder<TransportationData, TransportationDataBuilder> {
  _$TransportationData? _$v;

  String? _idLocation;
  String? get idLocation => _$this._idLocation;
  set idLocation(String? idLocation) => _$this._idLocation = idLocation;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _moda;
  String? get moda => _$this._moda;
  set moda(String? moda) => _$this._moda = moda;

  MapBuilder<String, TransportationMetrics>? _seasonal;
  MapBuilder<String, TransportationMetrics> get seasonal =>
      _$this._seasonal ??= new MapBuilder<String, TransportationMetrics>();
  set seasonal(MapBuilder<String, TransportationMetrics>? seasonal) =>
      _$this._seasonal = seasonal;

  MapBuilder<String, TransportationMetrics>? _weekly;
  MapBuilder<String, TransportationMetrics> get weekly =>
      _$this._weekly ??= new MapBuilder<String, TransportationMetrics>();
  set weekly(MapBuilder<String, TransportationMetrics>? weekly) =>
      _$this._weekly = weekly;

  MapBuilder<String, TransportationMetrics>? _monthly;
  MapBuilder<String, TransportationMetrics> get monthly =>
      _$this._monthly ??= new MapBuilder<String, TransportationMetrics>();
  set monthly(MapBuilder<String, TransportationMetrics>? monthly) =>
      _$this._monthly = monthly;

  MapBuilder<String, TransportationMetrics>? _yearly;
  MapBuilder<String, TransportationMetrics> get yearly =>
      _$this._yearly ??= new MapBuilder<String, TransportationMetrics>();
  set yearly(MapBuilder<String, TransportationMetrics>? yearly) =>
      _$this._yearly = yearly;

  TransportationDataBuilder() {
    TransportationData._defaults(this);
  }

  TransportationDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idLocation = $v.idLocation;
      _location = $v.location;
      _moda = $v.moda;
      _seasonal = $v.seasonal?.toBuilder();
      _weekly = $v.weekly?.toBuilder();
      _monthly = $v.monthly?.toBuilder();
      _yearly = $v.yearly?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransportationData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransportationData;
  }

  @override
  void update(void Function(TransportationDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransportationData build() => _build();

  _$TransportationData _build() {
    _$TransportationData _$result;
    try {
      _$result = _$v ??
          new _$TransportationData._(
            idLocation: idLocation,
            location: location,
            moda: moda,
            seasonal: _seasonal?.build(),
            weekly: _weekly?.build(),
            monthly: _monthly?.build(),
            yearly: _yearly?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'seasonal';
        _seasonal?.build();
        _$failedField = 'weekly';
        _weekly?.build();
        _$failedField = 'monthly';
        _monthly?.build();
        _$failedField = 'yearly';
        _yearly?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransportationData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
