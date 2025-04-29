// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_login_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthLoginPostRequest extends AuthLoginPostRequest {
  @override
  final String username;
  @override
  final String password;

  factory _$AuthLoginPostRequest(
          [void Function(AuthLoginPostRequestBuilder)? updates]) =>
      (new AuthLoginPostRequestBuilder()..update(updates))._build();

  _$AuthLoginPostRequest._({required this.username, required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        username, r'AuthLoginPostRequest', 'username');
    BuiltValueNullFieldError.checkNotNull(
        password, r'AuthLoginPostRequest', 'password');
  }

  @override
  AuthLoginPostRequest rebuild(
          void Function(AuthLoginPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthLoginPostRequestBuilder toBuilder() =>
      new AuthLoginPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthLoginPostRequest &&
        username == other.username &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthLoginPostRequest')
          ..add('username', username)
          ..add('password', password))
        .toString();
  }
}

class AuthLoginPostRequestBuilder
    implements Builder<AuthLoginPostRequest, AuthLoginPostRequestBuilder> {
  _$AuthLoginPostRequest? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  AuthLoginPostRequestBuilder() {
    AuthLoginPostRequest._defaults(this);
  }

  AuthLoginPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthLoginPostRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthLoginPostRequest;
  }

  @override
  void update(void Function(AuthLoginPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthLoginPostRequest build() => _build();

  _$AuthLoginPostRequest _build() {
    final _$result = _$v ??
        new _$AuthLoginPostRequest._(
          username: BuiltValueNullFieldError.checkNotNull(
              username, r'AuthLoginPostRequest', 'username'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'AuthLoginPostRequest', 'password'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
