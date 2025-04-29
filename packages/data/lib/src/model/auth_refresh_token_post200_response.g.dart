// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_refresh_token_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthRefreshTokenPost200Response
    extends AuthRefreshTokenPost200Response {
  @override
  final bool? status;
  @override
  final AuthRefreshTokenPost200ResponseData? data;

  factory _$AuthRefreshTokenPost200Response(
          [void Function(AuthRefreshTokenPost200ResponseBuilder)? updates]) =>
      (new AuthRefreshTokenPost200ResponseBuilder()..update(updates))._build();

  _$AuthRefreshTokenPost200Response._({this.status, this.data}) : super._();

  @override
  AuthRefreshTokenPost200Response rebuild(
          void Function(AuthRefreshTokenPost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthRefreshTokenPost200ResponseBuilder toBuilder() =>
      new AuthRefreshTokenPost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthRefreshTokenPost200Response &&
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
    return (newBuiltValueToStringHelper(r'AuthRefreshTokenPost200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class AuthRefreshTokenPost200ResponseBuilder
    implements
        Builder<AuthRefreshTokenPost200Response,
            AuthRefreshTokenPost200ResponseBuilder> {
  _$AuthRefreshTokenPost200Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  AuthRefreshTokenPost200ResponseDataBuilder? _data;
  AuthRefreshTokenPost200ResponseDataBuilder get data =>
      _$this._data ??= new AuthRefreshTokenPost200ResponseDataBuilder();
  set data(AuthRefreshTokenPost200ResponseDataBuilder? data) =>
      _$this._data = data;

  AuthRefreshTokenPost200ResponseBuilder() {
    AuthRefreshTokenPost200Response._defaults(this);
  }

  AuthRefreshTokenPost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthRefreshTokenPost200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthRefreshTokenPost200Response;
  }

  @override
  void update(void Function(AuthRefreshTokenPost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthRefreshTokenPost200Response build() => _build();

  _$AuthRefreshTokenPost200Response _build() {
    _$AuthRefreshTokenPost200Response _$result;
    try {
      _$result = _$v ??
          new _$AuthRefreshTokenPost200Response._(
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
            r'AuthRefreshTokenPost200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
