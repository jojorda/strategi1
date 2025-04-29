// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_token_exchange_post400_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthTokenExchangePost400Response
    extends AuthTokenExchangePost400Response {
  @override
  final bool? status;
  @override
  final String? message;

  factory _$AuthTokenExchangePost400Response(
          [void Function(AuthTokenExchangePost400ResponseBuilder)? updates]) =>
      (new AuthTokenExchangePost400ResponseBuilder()..update(updates))._build();

  _$AuthTokenExchangePost400Response._({this.status, this.message}) : super._();

  @override
  AuthTokenExchangePost400Response rebuild(
          void Function(AuthTokenExchangePost400ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthTokenExchangePost400ResponseBuilder toBuilder() =>
      new AuthTokenExchangePost400ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthTokenExchangePost400Response &&
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
    return (newBuiltValueToStringHelper(r'AuthTokenExchangePost400Response')
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class AuthTokenExchangePost400ResponseBuilder
    implements
        Builder<AuthTokenExchangePost400Response,
            AuthTokenExchangePost400ResponseBuilder> {
  _$AuthTokenExchangePost400Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  AuthTokenExchangePost400ResponseBuilder() {
    AuthTokenExchangePost400Response._defaults(this);
  }

  AuthTokenExchangePost400ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthTokenExchangePost400Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthTokenExchangePost400Response;
  }

  @override
  void update(void Function(AuthTokenExchangePost400ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthTokenExchangePost400Response build() => _build();

  _$AuthTokenExchangePost400Response _build() {
    final _$result = _$v ??
        new _$AuthTokenExchangePost400Response._(
          status: status,
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
