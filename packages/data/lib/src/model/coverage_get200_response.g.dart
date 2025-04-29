// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coverage_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CoverageGet200Response extends CoverageGet200Response {
  @override
  final bool? status;
  @override
  final BuiltList<Streaming>? data;

  factory _$CoverageGet200Response(
          [void Function(CoverageGet200ResponseBuilder)? updates]) =>
      (new CoverageGet200ResponseBuilder()..update(updates))._build();

  _$CoverageGet200Response._({this.status, this.data}) : super._();

  @override
  CoverageGet200Response rebuild(
          void Function(CoverageGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoverageGet200ResponseBuilder toBuilder() =>
      new CoverageGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoverageGet200Response &&
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
    return (newBuiltValueToStringHelper(r'CoverageGet200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class CoverageGet200ResponseBuilder
    implements Builder<CoverageGet200Response, CoverageGet200ResponseBuilder> {
  _$CoverageGet200Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  ListBuilder<Streaming>? _data;
  ListBuilder<Streaming> get data =>
      _$this._data ??= new ListBuilder<Streaming>();
  set data(ListBuilder<Streaming>? data) => _$this._data = data;

  CoverageGet200ResponseBuilder() {
    CoverageGet200Response._defaults(this);
  }

  CoverageGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoverageGet200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CoverageGet200Response;
  }

  @override
  void update(void Function(CoverageGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CoverageGet200Response build() => _build();

  _$CoverageGet200Response _build() {
    _$CoverageGet200Response _$result;
    try {
      _$result = _$v ??
          new _$CoverageGet200Response._(
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
            r'CoverageGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
