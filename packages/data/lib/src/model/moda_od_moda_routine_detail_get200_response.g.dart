// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_od_moda_routine_detail_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaOdModaRoutineDetailGet200Response
    extends ModaOdModaRoutineDetailGet200Response {
  @override
  final bool? status;
  @override
  final String? message;
  @override
  final ModaOdModaRoutineDetailGet200ResponseData? data;

  factory _$ModaOdModaRoutineDetailGet200Response(
          [void Function(ModaOdModaRoutineDetailGet200ResponseBuilder)?
              updates]) =>
      (new ModaOdModaRoutineDetailGet200ResponseBuilder()..update(updates))
          ._build();

  _$ModaOdModaRoutineDetailGet200Response._(
      {this.status, this.message, this.data})
      : super._();

  @override
  ModaOdModaRoutineDetailGet200Response rebuild(
          void Function(ModaOdModaRoutineDetailGet200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaOdModaRoutineDetailGet200ResponseBuilder toBuilder() =>
      new ModaOdModaRoutineDetailGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModaOdModaRoutineDetailGet200Response &&
        status == other.status &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ModaOdModaRoutineDetailGet200Response')
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class ModaOdModaRoutineDetailGet200ResponseBuilder
    implements
        Builder<ModaOdModaRoutineDetailGet200Response,
            ModaOdModaRoutineDetailGet200ResponseBuilder> {
  _$ModaOdModaRoutineDetailGet200Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ModaOdModaRoutineDetailGet200ResponseDataBuilder? _data;
  ModaOdModaRoutineDetailGet200ResponseDataBuilder get data =>
      _$this._data ??= new ModaOdModaRoutineDetailGet200ResponseDataBuilder();
  set data(ModaOdModaRoutineDetailGet200ResponseDataBuilder? data) =>
      _$this._data = data;

  ModaOdModaRoutineDetailGet200ResponseBuilder() {
    ModaOdModaRoutineDetailGet200Response._defaults(this);
  }

  ModaOdModaRoutineDetailGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModaOdModaRoutineDetailGet200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModaOdModaRoutineDetailGet200Response;
  }

  @override
  void update(
      void Function(ModaOdModaRoutineDetailGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaOdModaRoutineDetailGet200Response build() => _build();

  _$ModaOdModaRoutineDetailGet200Response _build() {
    _$ModaOdModaRoutineDetailGet200Response _$result;
    try {
      _$result = _$v ??
          new _$ModaOdModaRoutineDetailGet200Response._(
            status: status,
            message: message,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModaOdModaRoutineDetailGet200Response',
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
