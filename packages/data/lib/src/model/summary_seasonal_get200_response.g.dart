// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_seasonal_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SummarySeasonalGet200Response extends SummarySeasonalGet200Response {
  @override
  final bool? status;
  @override
  final SummarySeasonalGet200ResponseData? data;

  factory _$SummarySeasonalGet200Response(
          [void Function(SummarySeasonalGet200ResponseBuilder)? updates]) =>
      (new SummarySeasonalGet200ResponseBuilder()..update(updates))._build();

  _$SummarySeasonalGet200Response._({this.status, this.data}) : super._();

  @override
  SummarySeasonalGet200Response rebuild(
          void Function(SummarySeasonalGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SummarySeasonalGet200ResponseBuilder toBuilder() =>
      new SummarySeasonalGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SummarySeasonalGet200Response &&
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
    return (newBuiltValueToStringHelper(r'SummarySeasonalGet200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class SummarySeasonalGet200ResponseBuilder
    implements
        Builder<SummarySeasonalGet200Response,
            SummarySeasonalGet200ResponseBuilder> {
  _$SummarySeasonalGet200Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  SummarySeasonalGet200ResponseDataBuilder? _data;
  SummarySeasonalGet200ResponseDataBuilder get data =>
      _$this._data ??= new SummarySeasonalGet200ResponseDataBuilder();
  set data(SummarySeasonalGet200ResponseDataBuilder? data) =>
      _$this._data = data;

  SummarySeasonalGet200ResponseBuilder() {
    SummarySeasonalGet200Response._defaults(this);
  }

  SummarySeasonalGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SummarySeasonalGet200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SummarySeasonalGet200Response;
  }

  @override
  void update(void Function(SummarySeasonalGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SummarySeasonalGet200Response build() => _build();

  _$SummarySeasonalGet200Response _build() {
    _$SummarySeasonalGet200Response _$result;
    try {
      _$result = _$v ??
          new _$SummarySeasonalGet200Response._(
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
            r'SummarySeasonalGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
