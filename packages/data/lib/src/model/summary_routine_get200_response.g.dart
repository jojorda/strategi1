// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_routine_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SummaryRoutineGet200Response extends SummaryRoutineGet200Response {
  @override
  final bool? status;
  @override
  final SummaryRoutineGet200ResponseData? data;
  @override
  final BuiltMap<String, JsonObject?>? filter;

  factory _$SummaryRoutineGet200Response(
          [void Function(SummaryRoutineGet200ResponseBuilder)? updates]) =>
      (new SummaryRoutineGet200ResponseBuilder()..update(updates))._build();

  _$SummaryRoutineGet200Response._({this.status, this.data, this.filter})
      : super._();

  @override
  SummaryRoutineGet200Response rebuild(
          void Function(SummaryRoutineGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SummaryRoutineGet200ResponseBuilder toBuilder() =>
      new SummaryRoutineGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SummaryRoutineGet200Response &&
        status == other.status &&
        data == other.data &&
        filter == other.filter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SummaryRoutineGet200Response')
          ..add('status', status)
          ..add('data', data)
          ..add('filter', filter))
        .toString();
  }
}

class SummaryRoutineGet200ResponseBuilder
    implements
        Builder<SummaryRoutineGet200Response,
            SummaryRoutineGet200ResponseBuilder> {
  _$SummaryRoutineGet200Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  SummaryRoutineGet200ResponseDataBuilder? _data;
  SummaryRoutineGet200ResponseDataBuilder get data =>
      _$this._data ??= new SummaryRoutineGet200ResponseDataBuilder();
  set data(SummaryRoutineGet200ResponseDataBuilder? data) =>
      _$this._data = data;

  MapBuilder<String, JsonObject?>? _filter;
  MapBuilder<String, JsonObject?> get filter =>
      _$this._filter ??= new MapBuilder<String, JsonObject?>();
  set filter(MapBuilder<String, JsonObject?>? filter) =>
      _$this._filter = filter;

  SummaryRoutineGet200ResponseBuilder() {
    SummaryRoutineGet200Response._defaults(this);
  }

  SummaryRoutineGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _filter = $v.filter?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SummaryRoutineGet200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SummaryRoutineGet200Response;
  }

  @override
  void update(void Function(SummaryRoutineGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SummaryRoutineGet200Response build() => _build();

  _$SummaryRoutineGet200Response _build() {
    _$SummaryRoutineGet200Response _$result;
    try {
      _$result = _$v ??
          new _$SummaryRoutineGet200Response._(
            status: status,
            data: _data?.build(),
            filter: _filter?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'filter';
        _filter?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SummaryRoutineGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
