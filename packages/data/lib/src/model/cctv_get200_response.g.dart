// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cctv_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CctvGet200Response extends CctvGet200Response {
  @override
  final bool? status;
  @override
  final BuiltList<CctvGet200ResponseDataInner>? data;

  factory _$CctvGet200Response(
          [void Function(CctvGet200ResponseBuilder)? updates]) =>
      (new CctvGet200ResponseBuilder()..update(updates))._build();

  _$CctvGet200Response._({this.status, this.data}) : super._();

  @override
  CctvGet200Response rebuild(
          void Function(CctvGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CctvGet200ResponseBuilder toBuilder() =>
      new CctvGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CctvGet200Response &&
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
    return (newBuiltValueToStringHelper(r'CctvGet200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class CctvGet200ResponseBuilder
    implements Builder<CctvGet200Response, CctvGet200ResponseBuilder> {
  _$CctvGet200Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  ListBuilder<CctvGet200ResponseDataInner>? _data;
  ListBuilder<CctvGet200ResponseDataInner> get data =>
      _$this._data ??= new ListBuilder<CctvGet200ResponseDataInner>();
  set data(ListBuilder<CctvGet200ResponseDataInner>? data) =>
      _$this._data = data;

  CctvGet200ResponseBuilder() {
    CctvGet200Response._defaults(this);
  }

  CctvGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CctvGet200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CctvGet200Response;
  }

  @override
  void update(void Function(CctvGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CctvGet200Response build() => _build();

  _$CctvGet200Response _build() {
    _$CctvGet200Response _$result;
    try {
      _$result = _$v ??
          new _$CctvGet200Response._(
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
            r'CctvGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
