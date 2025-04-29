// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_me_get200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthMeGet200ResponseData extends AuthMeGet200ResponseData {
  @override
  final String? username;
  @override
  final String? fullname;
  @override
  final int? userId;
  @override
  final int? roleId;
  @override
  final String? role;
  @override
  final BuiltList<String>? access;
  @override
  final String? alias;
  @override
  final String? kantor;
  @override
  final String? photoUrl;
  @override
  final String? email;

  factory _$AuthMeGet200ResponseData(
          [void Function(AuthMeGet200ResponseDataBuilder)? updates]) =>
      (new AuthMeGet200ResponseDataBuilder()..update(updates))._build();

  _$AuthMeGet200ResponseData._(
      {this.username,
      this.fullname,
      this.userId,
      this.roleId,
      this.role,
      this.access,
      this.alias,
      this.kantor,
      this.photoUrl,
      this.email})
      : super._();

  @override
  AuthMeGet200ResponseData rebuild(
          void Function(AuthMeGet200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthMeGet200ResponseDataBuilder toBuilder() =>
      new AuthMeGet200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthMeGet200ResponseData &&
        username == other.username &&
        fullname == other.fullname &&
        userId == other.userId &&
        roleId == other.roleId &&
        role == other.role &&
        access == other.access &&
        alias == other.alias &&
        kantor == other.kantor &&
        photoUrl == other.photoUrl &&
        email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, fullname.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, roleId.hashCode);
    _$hash = $jc(_$hash, role.hashCode);
    _$hash = $jc(_$hash, access.hashCode);
    _$hash = $jc(_$hash, alias.hashCode);
    _$hash = $jc(_$hash, kantor.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthMeGet200ResponseData')
          ..add('username', username)
          ..add('fullname', fullname)
          ..add('userId', userId)
          ..add('roleId', roleId)
          ..add('role', role)
          ..add('access', access)
          ..add('alias', alias)
          ..add('kantor', kantor)
          ..add('photoUrl', photoUrl)
          ..add('email', email))
        .toString();
  }
}

class AuthMeGet200ResponseDataBuilder
    implements
        Builder<AuthMeGet200ResponseData, AuthMeGet200ResponseDataBuilder> {
  _$AuthMeGet200ResponseData? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _fullname;
  String? get fullname => _$this._fullname;
  set fullname(String? fullname) => _$this._fullname = fullname;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  int? _roleId;
  int? get roleId => _$this._roleId;
  set roleId(int? roleId) => _$this._roleId = roleId;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  ListBuilder<String>? _access;
  ListBuilder<String> get access =>
      _$this._access ??= new ListBuilder<String>();
  set access(ListBuilder<String>? access) => _$this._access = access;

  String? _alias;
  String? get alias => _$this._alias;
  set alias(String? alias) => _$this._alias = alias;

  String? _kantor;
  String? get kantor => _$this._kantor;
  set kantor(String? kantor) => _$this._kantor = kantor;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  AuthMeGet200ResponseDataBuilder() {
    AuthMeGet200ResponseData._defaults(this);
  }

  AuthMeGet200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _fullname = $v.fullname;
      _userId = $v.userId;
      _roleId = $v.roleId;
      _role = $v.role;
      _access = $v.access?.toBuilder();
      _alias = $v.alias;
      _kantor = $v.kantor;
      _photoUrl = $v.photoUrl;
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthMeGet200ResponseData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthMeGet200ResponseData;
  }

  @override
  void update(void Function(AuthMeGet200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthMeGet200ResponseData build() => _build();

  _$AuthMeGet200ResponseData _build() {
    _$AuthMeGet200ResponseData _$result;
    try {
      _$result = _$v ??
          new _$AuthMeGet200ResponseData._(
            username: username,
            fullname: fullname,
            userId: userId,
            roleId: roleId,
            role: role,
            access: _access?.build(),
            alias: alias,
            kantor: kantor,
            photoUrl: photoUrl,
            email: email,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'access';
        _access?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AuthMeGet200ResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
