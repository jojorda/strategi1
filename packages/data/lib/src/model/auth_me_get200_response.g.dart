// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_me_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthMeGet200Response extends AuthMeGet200Response {
  @override
  final bool? status;
  @override
  final AuthMeGet200ResponseData? data;

  factory _$AuthMeGet200Response(
          [void Function(AuthMeGet200ResponseBuilder)? updates]) =>
      (new AuthMeGet200ResponseBuilder()..update(updates))._build();

  _$AuthMeGet200Response._({this.status, this.data}) : super._();

  @override
  AuthMeGet200Response rebuild(
          void Function(AuthMeGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthMeGet200ResponseBuilder toBuilder() =>
      new AuthMeGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthMeGet200Response &&
        status == other.status &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthMeGet200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class AuthMeGet200ResponseBuilder
    implements Builder<AuthMeGet200Response, AuthMeGet200ResponseBuilder> {
  _$AuthMeGet200Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  AuthMeGet200ResponseDataBuilder? _data;
  AuthMeGet200ResponseDataBuilder get data =>
      _$this._data ??= new AuthMeGet200ResponseDataBuilder();
  set data(AuthMeGet200ResponseDataBuilder? data) => _$this._data = data;

  AuthMeGet200ResponseBuilder() {
    AuthMeGet200Response._defaults(this);
  }

  AuthMeGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthMeGet200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthMeGet200Response;
  }

  @override
  void update(void Function(AuthMeGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthMeGet200Response build() => _build();

  _$AuthMeGet200Response _build() {
    _$AuthMeGet200Response _$result;
    try {
      _$result = _$v ??
          new _$AuthMeGet200Response._(
            status: status,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AuthMeGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
