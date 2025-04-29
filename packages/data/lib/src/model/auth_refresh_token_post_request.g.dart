// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_refresh_token_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthRefreshTokenPostRequest extends AuthRefreshTokenPostRequest {
  @override
  final String refreshToken;

  factory _$AuthRefreshTokenPostRequest(
          [void Function(AuthRefreshTokenPostRequestBuilder)? updates]) =>
      (new AuthRefreshTokenPostRequestBuilder()..update(updates))._build();

  _$AuthRefreshTokenPostRequest._({required this.refreshToken}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        refreshToken, r'AuthRefreshTokenPostRequest', 'refreshToken');
  }

  @override
  AuthRefreshTokenPostRequest rebuild(
          void Function(AuthRefreshTokenPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthRefreshTokenPostRequestBuilder toBuilder() =>
      new AuthRefreshTokenPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthRefreshTokenPostRequest &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthRefreshTokenPostRequest')
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class AuthRefreshTokenPostRequestBuilder
    implements
        Builder<AuthRefreshTokenPostRequest,
            AuthRefreshTokenPostRequestBuilder> {
  _$AuthRefreshTokenPostRequest? _$v;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  AuthRefreshTokenPostRequestBuilder() {
    AuthRefreshTokenPostRequest._defaults(this);
  }

  AuthRefreshTokenPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthRefreshTokenPostRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthRefreshTokenPostRequest;
  }

  @override
  void update(void Function(AuthRefreshTokenPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthRefreshTokenPostRequest build() => _build();

  _$AuthRefreshTokenPostRequest _build() {
    final _$result = _$v ??
        new _$AuthRefreshTokenPostRequest._(
          refreshToken: BuiltValueNullFieldError.checkNotNull(
              refreshToken, r'AuthRefreshTokenPostRequest', 'refreshToken'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
