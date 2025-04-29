// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moda_aggregate_moda_seasonal_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModaAggregateModaSeasonalGet200Response
    extends ModaAggregateModaSeasonalGet200Response {
  @override
  final bool? status;
  @override
  final String? message;
  @override
  final ModaAggregateModaSeasonalGet200ResponseData? data;

  factory _$ModaAggregateModaSeasonalGet200Response(
          [void Function(ModaAggregateModaSeasonalGet200ResponseBuilder)?
              updates]) =>
      (new ModaAggregateModaSeasonalGet200ResponseBuilder()..update(updates))
          ._build();

  _$ModaAggregateModaSeasonalGet200Response._(
      {this.status, this.message, this.data})
      : super._();

  @override
  ModaAggregateModaSeasonalGet200Response rebuild(
          void Function(ModaAggregateModaSeasonalGet200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModaAggregateModaSeasonalGet200ResponseBuilder toBuilder() =>
      new ModaAggregateModaSeasonalGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModaAggregateModaSeasonalGet200Response &&
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
            r'ModaAggregateModaSeasonalGet200Response')
          ..add('status', status)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class ModaAggregateModaSeasonalGet200ResponseBuilder
    implements
        Builder<ModaAggregateModaSeasonalGet200Response,
            ModaAggregateModaSeasonalGet200ResponseBuilder> {
  _$ModaAggregateModaSeasonalGet200Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ModaAggregateModaSeasonalGet200ResponseDataBuilder? _data;
  ModaAggregateModaSeasonalGet200ResponseDataBuilder get data =>
      _$this._data ??= new ModaAggregateModaSeasonalGet200ResponseDataBuilder();
  set data(ModaAggregateModaSeasonalGet200ResponseDataBuilder? data) =>
      _$this._data = data;

  ModaAggregateModaSeasonalGet200ResponseBuilder() {
    ModaAggregateModaSeasonalGet200Response._defaults(this);
  }

  ModaAggregateModaSeasonalGet200ResponseBuilder get _$this {
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
  void replace(ModaAggregateModaSeasonalGet200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModaAggregateModaSeasonalGet200Response;
  }

  @override
  void update(
      void Function(ModaAggregateModaSeasonalGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModaAggregateModaSeasonalGet200Response build() => _build();

  _$ModaAggregateModaSeasonalGet200Response _build() {
    _$ModaAggregateModaSeasonalGet200Response _$result;
    try {
      _$result = _$v ??
          new _$ModaAggregateModaSeasonalGet200Response._(
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
            r'ModaAggregateModaSeasonalGet200Response',
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
