// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_regional_routine_get200_response_data_list_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaRegionalRoutineGet200ResponseDataListInner
    extends ModaRegionalRoutineGet200ResponseDataListInner {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? region;
  @override
  final num? value;
  @override
  final double? latitude;
  @override
  final double? longitude;

  factory _$ModaRegionalRoutineGet200ResponseDataListInner(
          [void Function(ModaRegionalRoutineGet200ResponseDataListInnerBuilder)?
              updates]) =>
      (new ModaRegionalRoutineGet200ResponseDataListInnerBuilder()
            ..update(updates))
          ._build();

  _$ModaRegionalRoutineGet200ResponseDataListInner._(
      {this.id,
      this.name,
      this.type,
      this.region,
      this.value,
      this.latitude,
      this.longitude})
      : super._();

  @override
  ModaRegionalRoutineGet200ResponseDataListInner rebuild(
          void Function(ModaRegionalRoutineGet200ResponseDataListInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaRegionalRoutineGet200ResponseDataListInnerBuilder toBuilder() =>
      new ModaRegionalRoutineGet200ResponseDataListInnerBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModaRegionalRoutineGet200ResponseDataListInner &&
        id == other.id &&
        name == other.name &&
        type == other.type &&
        region == other.region &&
        value == other.value &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ModaRegionalRoutineGet200ResponseDataListInner')
          ..add('id', id)
          ..add('name', name)
          ..add('type', type)
          ..add('region', region)
          ..add('value', value)
          ..add('latitude', latitude)
          ..add('longitude', longitude))
        .toString();
  }
}

class ModaRegionalRoutineGet200ResponseDataListInnerBuilder
    implements
        Builder<ModaRegionalRoutineGet200ResponseDataListInner,
            ModaRegionalRoutineGet200ResponseDataListInnerBuilder> {
  _$ModaRegionalRoutineGet200ResponseDataListInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  num? _value;
  num? get value => _$this._value;
  set value(num? value) => _$this._value = value;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  ModaRegionalRoutineGet200ResponseDataListInnerBuilder() {
    ModaRegionalRoutineGet200ResponseDataListInner._defaults(this);
  }

  ModaRegionalRoutineGet200ResponseDataListInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _type = $v.type;
      _region = $v.region;
      _value = $v.value;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModaRegionalRoutineGet200ResponseDataListInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModaRegionalRoutineGet200ResponseDataListInner;
  }

  @override
  void update(
      void Function(ModaRegionalRoutineGet200ResponseDataListInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaRegionalRoutineGet200ResponseDataListInner build() => _build();

  _$ModaRegionalRoutineGet200ResponseDataListInner _build() {
    final _$result = _$v ??
        new _$ModaRegionalRoutineGet200ResponseDataListInner._(
          id: id,
          name: name,
          type: type,
          region: region,
          value: value,
          latitude: latitude,
          longitude: longitude,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
