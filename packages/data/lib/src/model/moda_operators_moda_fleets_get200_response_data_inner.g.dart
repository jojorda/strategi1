// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_operators_moda_fleets_get200_response_data_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaOperatorsModaFleetsGet200ResponseDataInner
    extends ModaOperatorsModaFleetsGet200ResponseDataInner {
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? location;
  @override
  final String? longLat;
  @override
  final String? plateNumber;
  @override
  final String? brand;
  @override
  final int? wheelCount;
  @override
  final int? maxPassengerCount;
  @override
  final BuiltList<ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner>?
      documents;

  factory _$ModaOperatorsModaFleetsGet200ResponseDataInner(
          [void Function(ModaOperatorsModaFleetsGet200ResponseDataInnerBuilder)?
              updates]) =>
      (new ModaOperatorsModaFleetsGet200ResponseDataInnerBuilder()
            ..update(updates))
          ._build();

  _$ModaOperatorsModaFleetsGet200ResponseDataInner._(
      {this.id,
      this.name,
      this.location,
      this.longLat,
      this.plateNumber,
      this.brand,
      this.wheelCount,
      this.maxPassengerCount,
      this.documents})
      : super._();

  @override
  ModaOperatorsModaFleetsGet200ResponseDataInner rebuild(
          void Function(ModaOperatorsModaFleetsGet200ResponseDataInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaOperatorsModaFleetsGet200ResponseDataInnerBuilder toBuilder() =>
      new ModaOperatorsModaFleetsGet200ResponseDataInnerBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModaOperatorsModaFleetsGet200ResponseDataInner &&
        id == other.id &&
        name == other.name &&
        location == other.location &&
        longLat == other.longLat &&
        plateNumber == other.plateNumber &&
        brand == other.brand &&
        wheelCount == other.wheelCount &&
        maxPassengerCount == other.maxPassengerCount &&
        documents == other.documents;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, longLat.hashCode);
    _$hash = $jc(_$hash, plateNumber.hashCode);
    _$hash = $jc(_$hash, brand.hashCode);
    _$hash = $jc(_$hash, wheelCount.hashCode);
    _$hash = $jc(_$hash, maxPassengerCount.hashCode);
    _$hash = $jc(_$hash, documents.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ModaOperatorsModaFleetsGet200ResponseDataInner')
          ..add('id', id)
          ..add('name', name)
          ..add('location', location)
          ..add('longLat', longLat)
          ..add('plateNumber', plateNumber)
          ..add('brand', brand)
          ..add('wheelCount', wheelCount)
          ..add('maxPassengerCount', maxPassengerCount)
          ..add('documents', documents))
        .toString();
  }
}

class ModaOperatorsModaFleetsGet200ResponseDataInnerBuilder
    implements
        Builder<ModaOperatorsModaFleetsGet200ResponseDataInner,
            ModaOperatorsModaFleetsGet200ResponseDataInnerBuilder> {
  _$ModaOperatorsModaFleetsGet200ResponseDataInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _longLat;
  String? get longLat => _$this._longLat;
  set longLat(String? longLat) => _$this._longLat = longLat;

  String? _plateNumber;
  String? get plateNumber => _$this._plateNumber;
  set plateNumber(String? plateNumber) => _$this._plateNumber = plateNumber;

  String? _brand;
  String? get brand => _$this._brand;
  set brand(String? brand) => _$this._brand = brand;

  int? _wheelCount;
  int? get wheelCount => _$this._wheelCount;
  set wheelCount(int? wheelCount) => _$this._wheelCount = wheelCount;

  int? _maxPassengerCount;
  int? get maxPassengerCount => _$this._maxPassengerCount;
  set maxPassengerCount(int? maxPassengerCount) =>
      _$this._maxPassengerCount = maxPassengerCount;

  ListBuilder<ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner>?
      _documents;
  ListBuilder<ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner>
      get documents => _$this._documents ??= new ListBuilder<
          ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner>();
  set documents(
          ListBuilder<
                  ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner>?
              documents) =>
      _$this._documents = documents;

  ModaOperatorsModaFleetsGet200ResponseDataInnerBuilder() {
    ModaOperatorsModaFleetsGet200ResponseDataInner._defaults(this);
  }

  ModaOperatorsModaFleetsGet200ResponseDataInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _location = $v.location;
      _longLat = $v.longLat;
      _plateNumber = $v.plateNumber;
      _brand = $v.brand;
      _wheelCount = $v.wheelCount;
      _maxPassengerCount = $v.maxPassengerCount;
      _documents = $v.documents?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModaOperatorsModaFleetsGet200ResponseDataInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModaOperatorsModaFleetsGet200ResponseDataInner;
  }

  @override
  void update(
      void Function(ModaOperatorsModaFleetsGet200ResponseDataInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaOperatorsModaFleetsGet200ResponseDataInner build() => _build();

  _$ModaOperatorsModaFleetsGet200ResponseDataInner _build() {
    _$ModaOperatorsModaFleetsGet200ResponseDataInner _$result;
    try {
      _$result = _$v ??
          new _$ModaOperatorsModaFleetsGet200ResponseDataInner._(
            id: id,
            name: name,
            location: location,
            longLat: longLat,
            plateNumber: plateNumber,
            brand: brand,
            wheelCount: wheelCount,
            maxPassengerCount: maxPassengerCount,
            documents: _documents?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'documents';
        _documents?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModaOperatorsModaFleetsGet200ResponseDataInner',
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
