// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_regional_routine_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaRegionalRoutineGet200Response
    extends ModaRegionalRoutineGet200Response {
  @override
  final bool? status;
  @override
  final String? message;
  @override
  final ModaRegionalRoutineGet200ResponseData? data;

  factory _$ModaRegionalRoutineGet200Response(
          [void Function(ModaRegionalRoutineGet200ResponseBuilder)? updates]) =>
      (new ModaRegionalRoutineGet200ResponseBuilder()..update(updates))
          ._build();

  _$ModaRegionalRoutineGet200Response._({this.status, this.message, this.data})
      : super._();

  @override
  ModaRegionalRoutineGet200Response rebuild(
          void Function(ModaRegionalRoutineGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaRegionalRoutineGet200ResponseBuilder toBuilder() =>
      new ModaRegionalRoutineGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModaRegionalRoutineGet200Response &&
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
    return (newBuiltValueToStringHelper(r'ModaRegionalRoutineGet200Response')
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class ModaRegionalRoutineGet200ResponseBuilder
    implements
        Builder<ModaRegionalRoutineGet200Response,
            ModaRegionalRoutineGet200ResponseBuilder> {
  _$ModaRegionalRoutineGet200Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ModaRegionalRoutineGet200ResponseDataBuilder? _data;
  ModaRegionalRoutineGet200ResponseDataBuilder get data =>
      _$this._data ??= new ModaRegionalRoutineGet200ResponseDataBuilder();
  set data(ModaRegionalRoutineGet200ResponseDataBuilder? data) =>
      _$this._data = data;

  ModaRegionalRoutineGet200ResponseBuilder() {
    ModaRegionalRoutineGet200Response._defaults(this);
  }

  ModaRegionalRoutineGet200ResponseBuilder get _$this {
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
  void replace(ModaRegionalRoutineGet200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModaRegionalRoutineGet200Response;
  }

  @override
  void update(
      void Function(ModaRegionalRoutineGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaRegionalRoutineGet200Response build() => _build();

  _$ModaRegionalRoutineGet200Response _build() {
    _$ModaRegionalRoutineGet200Response _$result;
    try {
      _$result = _$v ??
          new _$ModaRegionalRoutineGet200Response._(
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
            r'ModaRegionalRoutineGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
