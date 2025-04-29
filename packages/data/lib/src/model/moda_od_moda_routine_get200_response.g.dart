// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_od_moda_routine_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaOdModaRoutineGet200Response
    extends ModaOdModaRoutineGet200Response {
  @override
  final bool? status;
  @override
  final String? message;
  @override
  final BuiltList<ModaOdModaRoutineGet200ResponseDataInner>? data;

  factory _$ModaOdModaRoutineGet200Response(
          [void Function(ModaOdModaRoutineGet200ResponseBuilder)? updates]) =>
      (new ModaOdModaRoutineGet200ResponseBuilder()..update(updates))._build();

  _$ModaOdModaRoutineGet200Response._({this.status, this.message, this.data})
      : super._();

  @override
  ModaOdModaRoutineGet200Response rebuild(
          void Function(ModaOdModaRoutineGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaOdModaRoutineGet200ResponseBuilder toBuilder() =>
      new ModaOdModaRoutineGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModaOdModaRoutineGet200Response &&
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
    return (newBuiltValueToStringHelper(r'ModaOdModaRoutineGet200Response')
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class ModaOdModaRoutineGet200ResponseBuilder
    implements
        Builder<ModaOdModaRoutineGet200Response,
            ModaOdModaRoutineGet200ResponseBuilder> {
  _$ModaOdModaRoutineGet200Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ListBuilder<ModaOdModaRoutineGet200ResponseDataInner>? _data;
  ListBuilder<ModaOdModaRoutineGet200ResponseDataInner> get data =>
      _$this._data ??=
          new ListBuilder<ModaOdModaRoutineGet200ResponseDataInner>();
  set data(ListBuilder<ModaOdModaRoutineGet200ResponseDataInner>? data) =>
      _$this._data = data;

  ModaOdModaRoutineGet200ResponseBuilder() {
    ModaOdModaRoutineGet200Response._defaults(this);
  }

  ModaOdModaRoutineGet200ResponseBuilder get _$this {
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
  void replace(ModaOdModaRoutineGet200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModaOdModaRoutineGet200Response;
  }

  @override
  void update(void Function(ModaOdModaRoutineGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaOdModaRoutineGet200Response build() => _build();

  _$ModaOdModaRoutineGet200Response _build() {
    _$ModaOdModaRoutineGet200Response _$result;
    try {
      _$result = _$v ??
          new _$ModaOdModaRoutineGet200Response._(
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
            r'ModaOdModaRoutineGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
