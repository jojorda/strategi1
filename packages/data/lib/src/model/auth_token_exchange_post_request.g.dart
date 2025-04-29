// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_token_exchange_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthTokenExchangePostRequest extends AuthTokenExchangePostRequest {
  @override
  final String accessToken;

  factory _$AuthTokenExchangePostRequest(
          [void Function(AuthTokenExchangePostRequestBuilder)? updates]) =>
      (new AuthTokenExchangePostRequestBuilder()..update(updates))._build();

  _$AuthTokenExchangePostRequest._({required this.accessToken}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        accessToken, r'AuthTokenExchangePostRequest', 'accessToken');
  }

  @override
  AuthTokenExchangePostRequest rebuild(
          void Function(AuthTokenExchangePostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthTokenExchangePostRequestBuilder toBuilder() =>
      new AuthTokenExchangePostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthTokenExchangePostRequest &&
        accessToken == other.accessToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthTokenExchangePostRequest')
          ..add('accessToken', accessToken))
        .toString();
  }
}

class AuthTokenExchangePostRequestBuilder
    implements
        Builder<AuthTokenExchangePostRequest,
            AuthTokenExchangePostRequestBuilder> {
  _$AuthTokenExchangePostRequest? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  AuthTokenExchangePostRequestBuilder() {
    AuthTokenExchangePostRequest._defaults(this);
  }

  AuthTokenExchangePostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthTokenExchangePostRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthTokenExchangePostRequest;
  }

  @override
  void update(void Function(AuthTokenExchangePostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthTokenExchangePostRequest build() => _build();

  _$AuthTokenExchangePostRequest _build() {
    final _$result = _$v ??
        new _$AuthTokenExchangePostRequest._(
          accessToken: BuiltValueNullFieldError.checkNotNull(
              accessToken, r'AuthTokenExchangePostRequest', 'accessToken'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
