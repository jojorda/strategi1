// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_login_post401_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthLoginPost401Response extends AuthLoginPost401Response {
  @override
  final bool? status;
  @override
  final String? message;

  factory _$AuthLoginPost401Response(
          [void Function(AuthLoginPost401ResponseBuilder)? updates]) =>
      (new AuthLoginPost401ResponseBuilder()..update(updates))._build();

  _$AuthLoginPost401Response._({this.status, this.message}) : super._();

  @override
  AuthLoginPost401Response rebuild(
          void Function(AuthLoginPost401ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthLoginPost401ResponseBuilder toBuilder() =>
      new AuthLoginPost401ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthLoginPost401Response &&
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
    return (newBuiltValueToStringHelper(r'AuthLoginPost401Response')
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class AuthLoginPost401ResponseBuilder
    implements
        Builder<AuthLoginPost401Response, AuthLoginPost401ResponseBuilder> {
  _$AuthLoginPost401Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  AuthLoginPost401ResponseBuilder() {
    AuthLoginPost401Response._defaults(this);
  }

  AuthLoginPost401ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthLoginPost401Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthLoginPost401Response;
  }

  @override
  void update(void Function(AuthLoginPost401ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthLoginPost401Response build() => _build();

  _$AuthLoginPost401Response _build() {
    final _$result = _$v ??
        new _$AuthLoginPost401Response._(
          status: status,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
