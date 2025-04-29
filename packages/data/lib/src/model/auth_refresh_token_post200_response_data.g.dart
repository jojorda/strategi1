// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_refresh_token_post200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthRefreshTokenPost200ResponseData
    extends AuthRefreshTokenPost200ResponseData {
  @override
  final String? accessToken;
  @override
  final String? refreshToken;
  @override
  final String? tokenType;
  @override
  final int? expiresIn;

  factory _$AuthRefreshTokenPost200ResponseData(
          [void Function(AuthRefreshTokenPost200ResponseDataBuilder)?
              updates]) =>
      (new AuthRefreshTokenPost200ResponseDataBuilder()..update(updates))
          ._build();

  _$AuthRefreshTokenPost200ResponseData._(
      {this.accessToken, this.refreshToken, this.tokenType, this.expiresIn})
      : super._();

  @override
  AuthRefreshTokenPost200ResponseData rebuild(
          void Function(AuthRefreshTokenPost200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthRefreshTokenPost200ResponseDataBuilder toBuilder() =>
      new AuthRefreshTokenPost200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthRefreshTokenPost200ResponseData &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken &&
        tokenType == other.tokenType &&
        expiresIn == other.expiresIn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jc(_$hash, tokenType.hashCode);
    _$hash = $jc(_$hash, expiresIn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthRefreshTokenPost200ResponseData')
          ..add('accessToken', accessToken)
          ..add('refreshToken', refreshToken)
          ..add('tokenType', tokenType)
          ..add('expiresIn', expiresIn))
        .toString();
  }
}

class AuthRefreshTokenPost200ResponseDataBuilder
    implements
        Builder<AuthRefreshTokenPost200ResponseData,
            AuthRefreshTokenPost200ResponseDataBuilder> {
  _$AuthRefreshTokenPost200ResponseData? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  String? _tokenType;
  String? get tokenType => _$this._tokenType;
  set tokenType(String? tokenType) => _$this._tokenType = tokenType;

  int? _expiresIn;
  int? get expiresIn => _$this._expiresIn;
  set expiresIn(int? expiresIn) => _$this._expiresIn = expiresIn;

  AuthRefreshTokenPost200ResponseDataBuilder() {
    AuthRefreshTokenPost200ResponseData._defaults(this);
  }

  AuthRefreshTokenPost200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _refreshToken = $v.refreshToken;
      _tokenType = $v.tokenType;
      _expiresIn = $v.expiresIn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthRefreshTokenPost200ResponseData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthRefreshTokenPost200ResponseData;
  }

  @override
  void update(
      void Function(AuthRefreshTokenPost200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthRefreshTokenPost200ResponseData build() => _build();

  _$AuthRefreshTokenPost200ResponseData _build() {
    final _$result = _$v ??
        new _$AuthRefreshTokenPost200ResponseData._(
          accessToken: accessToken,
          refreshToken: refreshToken,
          tokenType: tokenType,
          expiresIn: expiresIn,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
