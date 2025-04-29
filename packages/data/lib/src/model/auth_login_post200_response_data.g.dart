// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_login_post200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthLoginPost200ResponseData extends AuthLoginPost200ResponseData {
  @override
  final String? username;
  @override
  final String? fullname;
  @override
  final String? userId;
  @override
  final num? roleId;
  @override
  final BuiltList<String>? roles;
  @override
  final String? accessToken;
  @override
  final String? refreshToken;
  @override
  final String? tokenType;
  @override
  final num? expiresIn;

  factory _$AuthLoginPost200ResponseData(
          [void Function(AuthLoginPost200ResponseDataBuilder)? updates]) =>
      (new AuthLoginPost200ResponseDataBuilder()..update(updates))._build();

  _$AuthLoginPost200ResponseData._(
      {this.username,
      this.fullname,
      this.userId,
      this.roleId,
      this.roles,
      this.accessToken,
      this.refreshToken,
      this.tokenType,
      this.expiresIn})
      : super._();

  @override
  AuthLoginPost200ResponseData rebuild(
          void Function(AuthLoginPost200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthLoginPost200ResponseDataBuilder toBuilder() =>
      new AuthLoginPost200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthLoginPost200ResponseData &&
        username == other.username &&
        fullname == other.fullname &&
        userId == other.userId &&
        roleId == other.roleId &&
        roles == other.roles &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken &&
        tokenType == other.tokenType &&
        expiresIn == other.expiresIn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, fullname.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, roleId.hashCode);
    _$hash = $jc(_$hash, roles.hashCode);
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jc(_$hash, tokenType.hashCode);
    _$hash = $jc(_$hash, expiresIn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthLoginPost200ResponseData')
          ..add('username', username)
          ..add('fullname', fullname)
          ..add('userId', userId)
          ..add('roleId', roleId)
          ..add('roles', roles)
          ..add('accessToken', accessToken)
          ..add('refreshToken', refreshToken)
          ..add('tokenType', tokenType)
          ..add('expiresIn', expiresIn))
        .toString();
  }
}

class AuthLoginPost200ResponseDataBuilder
    implements
        Builder<AuthLoginPost200ResponseData,
            AuthLoginPost200ResponseDataBuilder> {
  _$AuthLoginPost200ResponseData? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _fullname;
  String? get fullname => _$this._fullname;
  set fullname(String? fullname) => _$this._fullname = fullname;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  num? _roleId;
  num? get roleId => _$this._roleId;
  set roleId(num? roleId) => _$this._roleId = roleId;

  ListBuilder<String>? _roles;
  ListBuilder<String> get roles => _$this._roles ??= new ListBuilder<String>();
  set roles(ListBuilder<String>? roles) => _$this._roles = roles;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  String? _tokenType;
  String? get tokenType => _$this._tokenType;
  set tokenType(String? tokenType) => _$this._tokenType = tokenType;

  num? _expiresIn;
  num? get expiresIn => _$this._expiresIn;
  set expiresIn(num? expiresIn) => _$this._expiresIn = expiresIn;

  AuthLoginPost200ResponseDataBuilder() {
    AuthLoginPost200ResponseData._defaults(this);
  }

  AuthLoginPost200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _fullname = $v.fullname;
      _userId = $v.userId;
      _roleId = $v.roleId;
      _roles = $v.roles?.toBuilder();
      _accessToken = $v.accessToken;
      _refreshToken = $v.refreshToken;
      _tokenType = $v.tokenType;
      _expiresIn = $v.expiresIn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthLoginPost200ResponseData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthLoginPost200ResponseData;
  }

  @override
  void update(void Function(AuthLoginPost200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthLoginPost200ResponseData build() => _build();

  _$AuthLoginPost200ResponseData _build() {
    _$AuthLoginPost200ResponseData _$result;
    try {
      _$result = _$v ??
          new _$AuthLoginPost200ResponseData._(
            username: username,
            fullname: fullname,
            userId: userId,
            roleId: roleId,
            roles: _roles?.build(),
            accessToken: accessToken,
            refreshToken: refreshToken,
            tokenType: tokenType,
            expiresIn: expiresIn,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'roles';
        _roles?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AuthLoginPost200ResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
