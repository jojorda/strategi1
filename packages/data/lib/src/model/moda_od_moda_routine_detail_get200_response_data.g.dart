// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_od_moda_routine_detail_get200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaOdModaRoutineDetailGet200ResponseData
    extends ModaOdModaRoutineDetailGet200ResponseData {
  @override
  final ModaOdModaRoutineDetailGet200ResponseDataOrigin? origin;
  @override
  final ModaOdModaRoutineDetailGet200ResponseDataOrigin? destination;

  factory _$ModaOdModaRoutineDetailGet200ResponseData(
          [void Function(ModaOdModaRoutineDetailGet200ResponseDataBuilder)?
              updates]) =>
      (new ModaOdModaRoutineDetailGet200ResponseDataBuilder()..update(updates))
          ._build();

  _$ModaOdModaRoutineDetailGet200ResponseData._({this.origin, this.destination})
      : super._();

  @override
  ModaOdModaRoutineDetailGet200ResponseData rebuild(
          void Function(ModaOdModaRoutineDetailGet200ResponseDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaOdModaRoutineDetailGet200ResponseDataBuilder toBuilder() =>
      new ModaOdModaRoutineDetailGet200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModaOdModaRoutineDetailGet200ResponseData &&
        origin == other.origin &&
        destination == other.destination;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, destination.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ModaOdModaRoutineDetailGet200ResponseData')
          ..add('origin', origin)
          ..add('destination', destination))
        .toString();
  }
}

class ModaOdModaRoutineDetailGet200ResponseDataBuilder
    implements
        Builder<ModaOdModaRoutineDetailGet200ResponseData,
            ModaOdModaRoutineDetailGet200ResponseDataBuilder> {
  _$ModaOdModaRoutineDetailGet200ResponseData? _$v;

  ModaOdModaRoutineDetailGet200ResponseDataOriginBuilder? _origin;
  ModaOdModaRoutineDetailGet200ResponseDataOriginBuilder get origin =>
      _$this._origin ??=
          new ModaOdModaRoutineDetailGet200ResponseDataOriginBuilder();
  set origin(ModaOdModaRoutineDetailGet200ResponseDataOriginBuilder? origin) =>
      _$this._origin = origin;

  ModaOdModaRoutineDetailGet200ResponseDataOriginBuilder? _destination;
  ModaOdModaRoutineDetailGet200ResponseDataOriginBuilder get destination =>
      _$this._destination ??=
          new ModaOdModaRoutineDetailGet200ResponseDataOriginBuilder();
  set destination(
          ModaOdModaRoutineDetailGet200ResponseDataOriginBuilder?
              destination) =>
      _$this._destination = destination;

  ModaOdModaRoutineDetailGet200ResponseDataBuilder() {
    ModaOdModaRoutineDetailGet200ResponseData._defaults(this);
  }

  ModaOdModaRoutineDetailGet200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _origin = $v.origin?.toBuilder();
      _destination = $v.destination?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModaOdModaRoutineDetailGet200ResponseData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModaOdModaRoutineDetailGet200ResponseData;
  }

  @override
  void update(
      void Function(ModaOdModaRoutineDetailGet200ResponseDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaOdModaRoutineDetailGet200ResponseData build() => _build();

  _$ModaOdModaRoutineDetailGet200ResponseData _build() {
    _$ModaOdModaRoutineDetailGet200ResponseData _$result;
    try {
      _$result = _$v ??
          new _$ModaOdModaRoutineDetailGet200ResponseData._(
            origin: _origin?.build(),
            destination: _destination?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'origin';
        _origin?.build();
        _$failedField = 'destination';
        _destination?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModaOdModaRoutineDetailGet200ResponseData',
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
