// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_me_get404_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthMeGet404Response extends AuthMeGet404Response {
  @override
  final bool? status;
  @override
  final String? message;

  factory _$AuthMeGet404Response(
          [void Function(AuthMeGet404ResponseBuilder)? updates]) =>
      (new AuthMeGet404ResponseBuilder()..update(updates))._build();

  _$AuthMeGet404Response._({this.status, this.message}) : super._();

  @override
  AuthMeGet404Response rebuild(
          void Function(AuthMeGet404ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthMeGet404ResponseBuilder toBuilder() =>
      new AuthMeGet404ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthMeGet404Response &&
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
    return (newBuiltValueToStringHelper(r'AuthMeGet404Response')
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class AuthMeGet404ResponseBuilder
    implements Builder<AuthMeGet404Response, AuthMeGet404ResponseBuilder> {
  _$AuthMeGet404Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  AuthMeGet404ResponseBuilder() {
    AuthMeGet404Response._defaults(this);
  }

  AuthMeGet404ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthMeGet404Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthMeGet404Response;
  }

  @override
  void update(void Function(AuthMeGet404ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthMeGet404Response build() => _build();

  _$AuthMeGet404Response _build() {
    final _$result = _$v ??
        new _$AuthMeGet404Response._(
          status: status,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
