// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_refresh_token_post403_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthRefreshTokenPost403Response
    extends AuthRefreshTokenPost403Response {
  @override
  final bool? status;
  @override
  final String? message;

  factory _$AuthRefreshTokenPost403Response(
          [void Function(AuthRefreshTokenPost403ResponseBuilder)? updates]) =>
      (new AuthRefreshTokenPost403ResponseBuilder()..update(updates))._build();

  _$AuthRefreshTokenPost403Response._({this.status, this.message}) : super._();

  @override
  AuthRefreshTokenPost403Response rebuild(
          void Function(AuthRefreshTokenPost403ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthRefreshTokenPost403ResponseBuilder toBuilder() =>
      new AuthRefreshTokenPost403ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthRefreshTokenPost403Response &&
        status == other.status &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthRefreshTokenPost403Response')
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class AuthRefreshTokenPost403ResponseBuilder
    implements
        Builder<AuthRefreshTokenPost403Response,
            AuthRefreshTokenPost403ResponseBuilder> {
  _$AuthRefreshTokenPost403Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  AuthRefreshTokenPost403ResponseBuilder() {
    AuthRefreshTokenPost403Response._defaults(this);
  }

  AuthRefreshTokenPost403ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthRefreshTokenPost403Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthRefreshTokenPost403Response;
  }

  @override
  void update(void Function(AuthRefreshTokenPost403ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthRefreshTokenPost403Response build() => _build();

  _$AuthRefreshTokenPost403Response _build() {
    final _$result = _$v ??
        new _$AuthRefreshTokenPost403Response._(
          status: status,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
