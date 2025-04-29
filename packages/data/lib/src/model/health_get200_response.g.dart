// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HealthGet200Response extends HealthGet200Response {
  @override
  final bool? status;
  @override
  final HealthGet200ResponseData? data;

  factory _$HealthGet200Response(
          [void Function(HealthGet200ResponseBuilder)? updates]) =>
      (new HealthGet200ResponseBuilder()..update(updates))._build();

  _$HealthGet200Response._({this.status, this.data}) : super._();

  @override
  HealthGet200Response rebuild(
          void Function(HealthGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HealthGet200ResponseBuilder toBuilder() =>
      new HealthGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HealthGet200Response &&
        status == other.status &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HealthGet200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class HealthGet200ResponseBuilder
    implements Builder<HealthGet200Response, HealthGet200ResponseBuilder> {
  _$HealthGet200Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  HealthGet200ResponseDataBuilder? _data;
  HealthGet200ResponseDataBuilder get data =>
      _$this._data ??= new HealthGet200ResponseDataBuilder();
  set data(HealthGet200ResponseDataBuilder? data) => _$this._data = data;

  HealthGet200ResponseBuilder() {
    HealthGet200Response._defaults(this);
  }

  HealthGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HealthGet200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HealthGet200Response;
  }

  @override
  void update(void Function(HealthGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HealthGet200Response build() => _build();

  _$HealthGet200Response _build() {
    _$HealthGet200Response _$result;
    try {
      _$result = _$v ??
          new _$HealthGet200Response._(
            status: status,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HealthGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
