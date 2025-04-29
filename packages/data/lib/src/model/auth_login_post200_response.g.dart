// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_login_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthLoginPost200Response extends AuthLoginPost200Response {
  @override
  final bool? status;
  @override
  final AuthLoginPost200ResponseData? data;

  factory _$AuthLoginPost200Response(
          [void Function(AuthLoginPost200ResponseBuilder)? updates]) =>
      (new AuthLoginPost200ResponseBuilder()..update(updates))._build();

  _$AuthLoginPost200Response._({this.status, this.data}) : super._();

  @override
  AuthLoginPost200Response rebuild(
          void Function(AuthLoginPost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthLoginPost200ResponseBuilder toBuilder() =>
      new AuthLoginPost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthLoginPost200Response &&
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
    return (newBuiltValueToStringHelper(r'AuthLoginPost200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class AuthLoginPost200ResponseBuilder
    implements
        Builder<AuthLoginPost200Response, AuthLoginPost200ResponseBuilder> {
  _$AuthLoginPost200Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  AuthLoginPost200ResponseDataBuilder? _data;
  AuthLoginPost200ResponseDataBuilder get data =>
      _$this._data ??= new AuthLoginPost200ResponseDataBuilder();
  set data(AuthLoginPost200ResponseDataBuilder? data) => _$this._data = data;

  AuthLoginPost200ResponseBuilder() {
    AuthLoginPost200Response._defaults(this);
  }

  AuthLoginPost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthLoginPost200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthLoginPost200Response;
  }

  @override
  void update(void Function(AuthLoginPost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthLoginPost200Response build() => _build();

  _$AuthLoginPost200Response _build() {
    _$AuthLoginPost200Response _$result;
    try {
      _$result = _$v ??
          new _$AuthLoginPost200Response._(
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
            r'AuthLoginPost200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
