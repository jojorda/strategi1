// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_login_post400_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthLoginPost400Response extends AuthLoginPost400Response {
  @override
  final bool? status;
  @override
  final String? message;

  factory _$AuthLoginPost400Response(
          [void Function(AuthLoginPost400ResponseBuilder)? updates]) =>
      (new AuthLoginPost400ResponseBuilder()..update(updates))._build();

  _$AuthLoginPost400Response._({this.status, this.message}) : super._();

  @override
  AuthLoginPost400Response rebuild(
          void Function(AuthLoginPost400ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthLoginPost400ResponseBuilder toBuilder() =>
      new AuthLoginPost400ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthLoginPost400Response &&
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
    return (newBuiltValueToStringHelper(r'AuthLoginPost400Response')
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class AuthLoginPost400ResponseBuilder
    implements
        Builder<AuthLoginPost400Response, AuthLoginPost400ResponseBuilder> {
  _$AuthLoginPost400Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  AuthLoginPost400ResponseBuilder() {
    AuthLoginPost400Response._defaults(this);
  }

  AuthLoginPost400ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthLoginPost400Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthLoginPost400Response;
  }

  @override
  void update(void Function(AuthLoginPost400ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthLoginPost400Response build() => _build();

  _$AuthLoginPost400Response _build() {
    final _$result = _$v ??
        new _$AuthLoginPost400Response._(
          status: status,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
