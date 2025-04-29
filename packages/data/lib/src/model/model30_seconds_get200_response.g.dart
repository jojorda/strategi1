// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model30_seconds_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Model30SecondsGet200Response extends Model30SecondsGet200Response {
  @override
  final bool? status;
  @override
  final BuiltList<Model30SecondsGet200ResponseDataInner>? data;

  factory _$Model30SecondsGet200Response(
          [void Function(Model30SecondsGet200ResponseBuilder)? updates]) =>
      (new Model30SecondsGet200ResponseBuilder()..update(updates))._build();

  _$Model30SecondsGet200Response._({this.status, this.data}) : super._();

  @override
  Model30SecondsGet200Response rebuild(
          void Function(Model30SecondsGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Model30SecondsGet200ResponseBuilder toBuilder() =>
      new Model30SecondsGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Model30SecondsGet200Response &&
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
    return (newBuiltValueToStringHelper(r'Model30SecondsGet200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class Model30SecondsGet200ResponseBuilder
    implements
        Builder<Model30SecondsGet200Response,
            Model30SecondsGet200ResponseBuilder> {
  _$Model30SecondsGet200Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  ListBuilder<Model30SecondsGet200ResponseDataInner>? _data;
  ListBuilder<Model30SecondsGet200ResponseDataInner> get data =>
      _$this._data ??= new ListBuilder<Model30SecondsGet200ResponseDataInner>();
  set data(ListBuilder<Model30SecondsGet200ResponseDataInner>? data) =>
      _$this._data = data;

  Model30SecondsGet200ResponseBuilder() {
    Model30SecondsGet200Response._defaults(this);
  }

  Model30SecondsGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Model30SecondsGet200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Model30SecondsGet200Response;
  }

  @override
  void update(void Function(Model30SecondsGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Model30SecondsGet200Response build() => _build();

  _$Model30SecondsGet200Response _build() {
    _$Model30SecondsGet200Response _$result;
    try {
      _$result = _$v ??
          new _$Model30SecondsGet200Response._(
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
            r'Model30SecondsGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
