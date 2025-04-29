// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_aggregate_moda_routine_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaAggregateModaRoutineGet200Response
    extends ModaAggregateModaRoutineGet200Response {
  @override
  final bool? status;
  @override
  final String? message;
  @override
  final ModaAggregateModaRoutineGet200ResponseData? data;

  factory _$ModaAggregateModaRoutineGet200Response(
          [void Function(ModaAggregateModaRoutineGet200ResponseBuilder)?
              updates]) =>
      (new ModaAggregateModaRoutineGet200ResponseBuilder()..update(updates))
          ._build();

  _$ModaAggregateModaRoutineGet200Response._(
      {this.status, this.message, this.data})
      : super._();

  @override
  ModaAggregateModaRoutineGet200Response rebuild(
          void Function(ModaAggregateModaRoutineGet200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaAggregateModaRoutineGet200ResponseBuilder toBuilder() =>
      new ModaAggregateModaRoutineGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModaAggregateModaRoutineGet200Response &&
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
            r'ModaAggregateModaRoutineGet200Response')
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class ModaAggregateModaRoutineGet200ResponseBuilder
    implements
        Builder<ModaAggregateModaRoutineGet200Response,
            ModaAggregateModaRoutineGet200ResponseBuilder> {
  _$ModaAggregateModaRoutineGet200Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ModaAggregateModaRoutineGet200ResponseDataBuilder? _data;
  ModaAggregateModaRoutineGet200ResponseDataBuilder get data =>
      _$this._data ??= new ModaAggregateModaRoutineGet200ResponseDataBuilder();
  set data(ModaAggregateModaRoutineGet200ResponseDataBuilder? data) =>
      _$this._data = data;

  ModaAggregateModaRoutineGet200ResponseBuilder() {
    ModaAggregateModaRoutineGet200Response._defaults(this);
  }

  ModaAggregateModaRoutineGet200ResponseBuilder get _$this {
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
  void replace(ModaAggregateModaRoutineGet200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModaAggregateModaRoutineGet200Response;
  }

  @override
  void update(
      void Function(ModaAggregateModaRoutineGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaAggregateModaRoutineGet200Response build() => _build();

  _$ModaAggregateModaRoutineGet200Response _build() {
    _$ModaAggregateModaRoutineGet200Response _$result;
    try {
      _$result = _$v ??
          new _$ModaAggregateModaRoutineGet200Response._(
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
            r'ModaAggregateModaRoutineGet200Response',
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
