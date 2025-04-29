// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_regional_routine_get400_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaRegionalRoutineGet400Response
    extends ModaRegionalRoutineGet400Response {
  @override
  final bool? status;
  @override
  final String? message;

  factory _$ModaRegionalRoutineGet400Response(
          [void Function(ModaRegionalRoutineGet400ResponseBuilder)? updates]) =>
      (new ModaRegionalRoutineGet400ResponseBuilder()..update(updates))
          ._build();

  _$ModaRegionalRoutineGet400Response._({this.status, this.message})
      : super._();

  @override
  ModaRegionalRoutineGet400Response rebuild(
          void Function(ModaRegionalRoutineGet400ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaRegionalRoutineGet400ResponseBuilder toBuilder() =>
      new ModaRegionalRoutineGet400ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModaRegionalRoutineGet400Response &&
        status == other.status &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ModaRegionalRoutineGet400Response')
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class ModaRegionalRoutineGet400ResponseBuilder
    implements
        Builder<ModaRegionalRoutineGet400Response,
            ModaRegionalRoutineGet400ResponseBuilder> {
  _$ModaRegionalRoutineGet400Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ModaRegionalRoutineGet400ResponseBuilder() {
    ModaRegionalRoutineGet400Response._defaults(this);
  }

  ModaRegionalRoutineGet400ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModaRegionalRoutineGet400Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModaRegionalRoutineGet400Response;
  }

  @override
  void update(
      void Function(ModaRegionalRoutineGet400ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaRegionalRoutineGet400Response build() => _build();

  _$ModaRegionalRoutineGet400Response _build() {
    final _$result = _$v ??
        new _$ModaRegionalRoutineGet400Response._(
          status: status,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
