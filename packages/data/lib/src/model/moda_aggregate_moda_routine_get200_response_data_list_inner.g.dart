// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_aggregate_moda_routine_get200_response_data_list_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaAggregateModaRoutineGet200ResponseDataListInner
    extends ModaAggregateModaRoutineGet200ResponseDataListInner {
  @override
  final int? idLocation;
  @override
  final String? name;
  @override
  final String? city;
  @override
  final String? type;
  @override
  final int? departure;
  @override
  final int? arrival;
  @override
  final int? vehicleDeparture;
  @override
  final int? vehicleArrival;
  @override
  final String? longitude;
  @override
  final String? latitude;
  @override
  final String? coordinate;
  @override
  final String? timezone;

  factory _$ModaAggregateModaRoutineGet200ResponseDataListInner(
          [void Function(
                  ModaAggregateModaRoutineGet200ResponseDataListInnerBuilder)?
              updates]) =>
      (new ModaAggregateModaRoutineGet200ResponseDataListInnerBuilder()
            ..update(updates))
          ._build();

  _$ModaAggregateModaRoutineGet200ResponseDataListInner._(
      {this.idLocation,
      this.name,
      this.city,
      this.type,
      this.departure,
      this.arrival,
      this.vehicleDeparture,
      this.vehicleArrival,
      this.longitude,
      this.latitude,
      this.coordinate,
      this.timezone})
      : super._();

  @override
  ModaAggregateModaRoutineGet200ResponseDataListInner rebuild(
          void Function(
                  ModaAggregateModaRoutineGet200ResponseDataListInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaAggregateModaRoutineGet200ResponseDataListInnerBuilder toBuilder() =>
      new ModaAggregateModaRoutineGet200ResponseDataListInnerBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModaAggregateModaRoutineGet200ResponseDataListInner &&
        idLocation == other.idLocation &&
        name == other.name &&
        city == other.city &&
        type == other.type &&
        departure == other.departure &&
        arrival == other.arrival &&
        vehicleDeparture == other.vehicleDeparture &&
        vehicleArrival == other.vehicleArrival &&
        longitude == other.longitude &&
        latitude == other.latitude &&
        coordinate == other.coordinate &&
        timezone == other.timezone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, idLocation.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, departure.hashCode);
    _$hash = $jc(_$hash, arrival.hashCode);
    _$hash = $jc(_$hash, vehicleDeparture.hashCode);
    _$hash = $jc(_$hash, vehicleArrival.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, coordinate.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ModaAggregateModaRoutineGet200ResponseDataListInner')
          ..add('idLocation', idLocation)
          ..add('name', name)
          ..add('city', city)
          ..add('type', type)
          ..add('departure', departure)
          ..add('arrival', arrival)
          ..add('vehicleDeparture', vehicleDeparture)
          ..add('vehicleArrival', vehicleArrival)
          ..add('longitude', longitude)
          ..add('latitude', latitude)
          ..add('coordinate', coordinate)
          ..add('timezone', timezone))
        .toString();
  }
}

class ModaAggregateModaRoutineGet200ResponseDataListInnerBuilder
    implements
        Builder<ModaAggregateModaRoutineGet200ResponseDataListInner,
            ModaAggregateModaRoutineGet200ResponseDataListInnerBuilder> {
  _$ModaAggregateModaRoutineGet200ResponseDataListInner? _$v;

  int? _idLocation;
  int? get idLocation => _$this._idLocation;
  set idLocation(int? idLocation) => _$this._idLocation = idLocation;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  int? _departure;
  int? get departure => _$this._departure;
  set departure(int? departure) => _$this._departure = departure;

  int? _arrival;
  int? get arrival => _$this._arrival;
  set arrival(int? arrival) => _$this._arrival = arrival;

  int? _vehicleDeparture;
  int? get vehicleDeparture => _$this._vehicleDeparture;
  set vehicleDeparture(int? vehicleDeparture) =>
      _$this._vehicleDeparture = vehicleDeparture;

  int? _vehicleArrival;
  int? get vehicleArrival => _$this._vehicleArrival;
  set vehicleArrival(int? vehicleArrival) =>
      _$this._vehicleArrival = vehicleArrival;

  String? _longitude;
  String? get longitude => _$this._longitude;
  set longitude(String? longitude) => _$this._longitude = longitude;

  String? _latitude;
  String? get latitude => _$this._latitude;
  set latitude(String? latitude) => _$this._latitude = latitude;

  String? _coordinate;
  String? get coordinate => _$this._coordinate;
  set coordinate(String? coordinate) => _$this._coordinate = coordinate;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  ModaAggregateModaRoutineGet200ResponseDataListInnerBuilder() {
    ModaAggregateModaRoutineGet200ResponseDataListInner._defaults(this);
  }

  ModaAggregateModaRoutineGet200ResponseDataListInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idLocation = $v.idLocation;
      _name = $v.name;
      _city = $v.city;
      _type = $v.type;
      _departure = $v.departure;
      _arrival = $v.arrival;
      _vehicleDeparture = $v.vehicleDeparture;
      _vehicleArrival = $v.vehicleArrival;
      _longitude = $v.longitude;
      _latitude = $v.latitude;
      _coordinate = $v.coordinate;
      _timezone = $v.timezone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModaAggregateModaRoutineGet200ResponseDataListInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModaAggregateModaRoutineGet200ResponseDataListInner;
  }

  @override
  void update(
      void Function(ModaAggregateModaRoutineGet200ResponseDataListInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaAggregateModaRoutineGet200ResponseDataListInner build() => _build();

  _$ModaAggregateModaRoutineGet200ResponseDataListInner _build() {
    final _$result = _$v ??
        new _$ModaAggregateModaRoutineGet200ResponseDataListInner._(
          idLocation: idLocation,
          name: name,
          city: city,
          type: type,
          departure: departure,
          arrival: arrival,
          vehicleDeparture: vehicleDeparture,
          vehicleArrival: vehicleArrival,
          longitude: longitude,
          latitude: latitude,
          coordinate: coordinate,
          timezone: timezone,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
