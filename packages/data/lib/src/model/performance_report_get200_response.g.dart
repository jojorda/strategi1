// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'performance_report_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PerformanceReportGet200Response
    extends PerformanceReportGet200Response {
  @override
  final bool? status;
  @override
  final BuiltList<PerformanceReportGet200ResponseDataInner>? data;

  factory _$PerformanceReportGet200Response(
          [void Function(PerformanceReportGet200ResponseBuilder)? updates]) =>
      (new PerformanceReportGet200ResponseBuilder()..update(updates))._build();

  _$PerformanceReportGet200Response._({this.status, this.data}) : super._();

  @override
  PerformanceReportGet200Response rebuild(
          void Function(PerformanceReportGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PerformanceReportGet200ResponseBuilder toBuilder() =>
      new PerformanceReportGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PerformanceReportGet200Response &&
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
    return (newBuiltValueToStringHelper(r'PerformanceReportGet200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class PerformanceReportGet200ResponseBuilder
    implements
        Builder<PerformanceReportGet200Response,
            PerformanceReportGet200ResponseBuilder> {
  _$PerformanceReportGet200Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  ListBuilder<PerformanceReportGet200ResponseDataInner>? _data;
  ListBuilder<PerformanceReportGet200ResponseDataInner> get data =>
      _$this._data ??=
          new ListBuilder<PerformanceReportGet200ResponseDataInner>();
  set data(ListBuilder<PerformanceReportGet200ResponseDataInner>? data) =>
      _$this._data = data;

  PerformanceReportGet200ResponseBuilder() {
    PerformanceReportGet200Response._defaults(this);
  }

  PerformanceReportGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PerformanceReportGet200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PerformanceReportGet200Response;
  }

  @override
  void update(void Function(PerformanceReportGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PerformanceReportGet200Response build() => _build();

  _$PerformanceReportGet200Response _build() {
    _$PerformanceReportGet200Response _$result;
    try {
      _$result = _$v ??
          new _$PerformanceReportGet200Response._(
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
            r'PerformanceReportGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
