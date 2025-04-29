// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_regional_id_location_routine_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaRegionalIdLocationRoutineGet200Response
    extends ModaRegionalIdLocationRoutineGet200Response {
  @override
  final bool? status;
  @override
  final String? message;
  @override
  final ModaRegionalIdLocationRoutineGet200ResponseData? data;

  factory _$ModaRegionalIdLocationRoutineGet200Response(
          [void Function(ModaRegionalIdLocationRoutineGet200ResponseBuilder)?
              updates]) =>
      (new ModaRegionalIdLocationRoutineGet200ResponseBuilder()
            ..update(updates))
          ._build();

  _$ModaRegionalIdLocationRoutineGet200Response._(
      {this.status, this.message, this.data})
      : super._();

  @override
  ModaRegionalIdLocationRoutineGet200Response rebuild(
          void Function(ModaRegionalIdLocationRoutineGet200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaRegionalIdLocationRoutineGet200ResponseBuilder toBuilder() =>
      new ModaRegionalIdLocationRoutineGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModaRegionalIdLocationRoutineGet200Response &&
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
            r'ModaRegionalIdLocationRoutineGet200Response')
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class ModaRegionalIdLocationRoutineGet200ResponseBuilder
    implements
        Builder<ModaRegionalIdLocationRoutineGet200Response,
            ModaRegionalIdLocationRoutineGet200ResponseBuilder> {
  _$ModaRegionalIdLocationRoutineGet200Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ModaRegionalIdLocationRoutineGet200ResponseDataBuilder? _data;
  ModaRegionalIdLocationRoutineGet200ResponseDataBuilder get data =>
      _$this._data ??=
          new ModaRegionalIdLocationRoutineGet200ResponseDataBuilder();
  set data(ModaRegionalIdLocationRoutineGet200ResponseDataBuilder? data) =>
      _$this._data = data;

  ModaRegionalIdLocationRoutineGet200ResponseBuilder() {
    ModaRegionalIdLocationRoutineGet200Response._defaults(this);
  }

  ModaRegionalIdLocationRoutineGet200ResponseBuilder get _$this {
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
  void replace(ModaRegionalIdLocationRoutineGet200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModaRegionalIdLocationRoutineGet200Response;
  }

  @override
  void update(
      void Function(ModaRegionalIdLocationRoutineGet200ResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaRegionalIdLocationRoutineGet200Response build() => _build();

  _$ModaRegionalIdLocationRoutineGet200Response _build() {
    _$ModaRegionalIdLocationRoutineGet200Response _$result;
    try {
      _$result = _$v ??
          new _$ModaRegionalIdLocationRoutineGet200Response._(
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
            r'ModaRegionalIdLocationRoutineGet200Response',
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
