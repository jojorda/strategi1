// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_od_moda_routine_detail_get200_response_data_origin.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaOdModaRoutineDetailGet200ResponseDataOrigin
    extends ModaOdModaRoutineDetailGet200ResponseDataOrigin {
  @override
  final BuiltMap<String,
      ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue>? weekly;
  @override
  final BuiltMap<String,
      ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue>? monthly;
  @override
  final BuiltMap<String,
      ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue>? yearly;

  factory _$ModaOdModaRoutineDetailGet200ResponseDataOrigin(
          [void Function(
                  ModaOdModaRoutineDetailGet200ResponseDataOriginBuilder)?
              updates]) =>
      (new ModaOdModaRoutineDetailGet200ResponseDataOriginBuilder()
            ..update(updates))
          ._build();

  _$ModaOdModaRoutineDetailGet200ResponseDataOrigin._(
      {this.weekly, this.monthly, this.yearly})
      : super._();

  @override
  ModaOdModaRoutineDetailGet200ResponseDataOrigin rebuild(
          void Function(ModaOdModaRoutineDetailGet200ResponseDataOriginBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaOdModaRoutineDetailGet200ResponseDataOriginBuilder toBuilder() =>
      new ModaOdModaRoutineDetailGet200ResponseDataOriginBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModaOdModaRoutineDetailGet200ResponseDataOrigin &&
        weekly == other.weekly &&
        monthly == other.monthly &&
        yearly == other.yearly;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, weekly.hashCode);
    _$hash = $jc(_$hash, monthly.hashCode);
    _$hash = $jc(_$hash, yearly.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ModaOdModaRoutineDetailGet200ResponseDataOrigin')
          ..add('weekly', weekly)
          ..add('monthly', monthly)
          ..add('yearly', yearly))
        .toString();
  }
}

class ModaOdModaRoutineDetailGet200ResponseDataOriginBuilder
    implements
        Builder<ModaOdModaRoutineDetailGet200ResponseDataOrigin,
            ModaOdModaRoutineDetailGet200ResponseDataOriginBuilder> {
  _$ModaOdModaRoutineDetailGet200ResponseDataOrigin? _$v;

  MapBuilder<String,
      ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue>? _weekly;
  MapBuilder<String, ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue>
      get weekly => _$this._weekly ??= new MapBuilder<String,
          ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue>();
  set weekly(
          MapBuilder<String,
                  ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue>?
              weekly) =>
      _$this._weekly = weekly;

  MapBuilder<String,
      ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue>? _monthly;
  MapBuilder<String, ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue>
      get monthly => _$this._monthly ??= new MapBuilder<String,
          ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue>();
  set monthly(
          MapBuilder<String,
                  ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue>?
              monthly) =>
      _$this._monthly = monthly;

  MapBuilder<String,
      ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue>? _yearly;
  MapBuilder<String, ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue>
      get yearly => _$this._yearly ??= new MapBuilder<String,
          ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue>();
  set yearly(
          MapBuilder<String,
                  ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue>?
              yearly) =>
      _$this._yearly = yearly;

  ModaOdModaRoutineDetailGet200ResponseDataOriginBuilder() {
    ModaOdModaRoutineDetailGet200ResponseDataOrigin._defaults(this);
  }

  ModaOdModaRoutineDetailGet200ResponseDataOriginBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _weekly = $v.weekly?.toBuilder();
      _monthly = $v.monthly?.toBuilder();
      _yearly = $v.yearly?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModaOdModaRoutineDetailGet200ResponseDataOrigin other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModaOdModaRoutineDetailGet200ResponseDataOrigin;
  }

  @override
  void update(
      void Function(ModaOdModaRoutineDetailGet200ResponseDataOriginBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaOdModaRoutineDetailGet200ResponseDataOrigin build() => _build();

  _$ModaOdModaRoutineDetailGet200ResponseDataOrigin _build() {
    _$ModaOdModaRoutineDetailGet200ResponseDataOrigin _$result;
    try {
      _$result = _$v ??
          new _$ModaOdModaRoutineDetailGet200ResponseDataOrigin._(
            weekly: _weekly?.build(),
            monthly: _monthly?.build(),
            yearly: _yearly?.build(),
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
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModaOdModaRoutineDetailGet200ResponseDataOrigin',
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
