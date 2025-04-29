// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_login_post500_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthLoginPost500Response extends AuthLoginPost500Response {
  @override
  final bool? status;
  @override
  final String? message;

  factory _$AuthLoginPost500Response(
          [void Function(AuthLoginPost500ResponseBuilder)? updates]) =>
      (new AuthLoginPost500ResponseBuilder()..update(updates))._build();

  _$AuthLoginPost500Response._({this.status, this.message}) : super._();

  @override
  AuthLoginPost500Response rebuild(
          void Function(AuthLoginPost500ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthLoginPost500ResponseBuilder toBuilder() =>
      new AuthLoginPost500ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthLoginPost500Response &&
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
    return (newBuiltValueToStringHelper(r'AuthLoginPost500Response')
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class AuthLoginPost500ResponseBuilder
    implements
        Builder<AuthLoginPost500Response, AuthLoginPost500ResponseBuilder> {
  _$AuthLoginPost500Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  AuthLoginPost500ResponseBuilder() {
    AuthLoginPost500Response._defaults(this);
  }

  AuthLoginPost500ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthLoginPost500Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthLoginPost500Response;
  }

  @override
  void update(void Function(AuthLoginPost500ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthLoginPost500Response build() => _build();

  _$AuthLoginPost500Response _build() {
    final _$result = _$v ??
        new _$AuthLoginPost500Response._(
          status: status,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
