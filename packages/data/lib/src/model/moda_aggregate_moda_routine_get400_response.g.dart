// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_aggregate_moda_routine_get400_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaAggregateModaRoutineGet400Response
    extends ModaAggregateModaRoutineGet400Response {
  @override
  final bool? status;
  @override
  final String? message;

  factory _$ModaAggregateModaRoutineGet400Response(
          [void Function(ModaAggregateModaRoutineGet400ResponseBuilder)?
              updates]) =>
      (new ModaAggregateModaRoutineGet400ResponseBuilder()..update(updates))
          ._build();

  _$ModaAggregateModaRoutineGet400Response._({this.status, this.message})
      : super._();

  @override
  ModaAggregateModaRoutineGet400Response rebuild(
          void Function(ModaAggregateModaRoutineGet400ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaAggregateModaRoutineGet400ResponseBuilder toBuilder() =>
      new ModaAggregateModaRoutineGet400ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModaAggregateModaRoutineGet400Response &&
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
    return (newBuiltValueToStringHelper(
            r'ModaAggregateModaRoutineGet400Response')
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class ModaAggregateModaRoutineGet400ResponseBuilder
    implements
        Builder<ModaAggregateModaRoutineGet400Response,
            ModaAggregateModaRoutineGet400ResponseBuilder> {
  _$ModaAggregateModaRoutineGet400Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ModaAggregateModaRoutineGet400ResponseBuilder() {
    ModaAggregateModaRoutineGet400Response._defaults(this);
  }

  ModaAggregateModaRoutineGet400ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModaAggregateModaRoutineGet400Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModaAggregateModaRoutineGet400Response;
  }

  @override
  void update(
      void Function(ModaAggregateModaRoutineGet400ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaAggregateModaRoutineGet400Response build() => _build();

  _$ModaAggregateModaRoutineGet400Response _build() {
    final _$result = _$v ??
        new _$ModaAggregateModaRoutineGet400Response._(
          status: status,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
