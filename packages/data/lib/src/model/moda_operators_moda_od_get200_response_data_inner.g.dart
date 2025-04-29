// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_operators_moda_od_get200_response_data_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaOperatorsModaOdGet200ResponseDataInner
    extends ModaOperatorsModaOdGet200ResponseDataInner {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? origin;
  @override
  final String? destination;

  factory _$ModaOperatorsModaOdGet200ResponseDataInner(
          [void Function(ModaOperatorsModaOdGet200ResponseDataInnerBuilder)?
              updates]) =>
      (new ModaOperatorsModaOdGet200ResponseDataInnerBuilder()..update(updates))
          ._build();

  _$ModaOperatorsModaOdGet200ResponseDataInner._(
      {this.id, this.name, this.origin, this.destination})
      : super._();

  @override
  ModaOperatorsModaOdGet200ResponseDataInner rebuild(
          void Function(ModaOperatorsModaOdGet200ResponseDataInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaOperatorsModaOdGet200ResponseDataInnerBuilder toBuilder() =>
      new ModaOperatorsModaOdGet200ResponseDataInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModaOperatorsModaOdGet200ResponseDataInner &&
        id == other.id &&
        name == other.name &&
        origin == other.origin &&
        destination == other.destination;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, destination.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ModaOperatorsModaOdGet200ResponseDataInner')
          ..add('id', id)
          ..add('name', name)
          ..add('origin', origin)
          ..add('destination', destination))
        .toString();
  }
}

class ModaOperatorsModaOdGet200ResponseDataInnerBuilder
    implements
        Builder<ModaOperatorsModaOdGet200ResponseDataInner,
            ModaOperatorsModaOdGet200ResponseDataInnerBuilder> {
  _$ModaOperatorsModaOdGet200ResponseDataInner? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _origin;
  String? get origin => _$this._origin;
  set origin(String? origin) => _$this._origin = origin;

  String? _destination;
  String? get destination => _$this._destination;
  set destination(String? destination) => _$this._destination = destination;

  ModaOperatorsModaOdGet200ResponseDataInnerBuilder() {
    ModaOperatorsModaOdGet200ResponseDataInner._defaults(this);
  }

  ModaOperatorsModaOdGet200ResponseDataInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _origin = $v.origin;
      _destination = $v.destination;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModaOperatorsModaOdGet200ResponseDataInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModaOperatorsModaOdGet200ResponseDataInner;
  }

  @override
  void update(
      void Function(ModaOperatorsModaOdGet200ResponseDataInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaOperatorsModaOdGet200ResponseDataInner build() => _build();

  _$ModaOperatorsModaOdGet200ResponseDataInner _build() {
    final _$result = _$v ??
        new _$ModaOperatorsModaOdGet200ResponseDataInner._(
          id: id,
          name: name,
          origin: origin,
          destination: destination,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
