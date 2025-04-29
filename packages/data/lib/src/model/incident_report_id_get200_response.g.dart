// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident_report_id_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IncidentReportIdGet200Response extends IncidentReportIdGet200Response {
  @override
  final bool? success;
  @override
  final IncidentReportIdGet200ResponseData? data;

  factory _$IncidentReportIdGet200Response(
          [void Function(IncidentReportIdGet200ResponseBuilder)? updates]) =>
      (new IncidentReportIdGet200ResponseBuilder()..update(updates))._build();

  _$IncidentReportIdGet200Response._({this.success, this.data}) : super._();

  @override
  IncidentReportIdGet200Response rebuild(
          void Function(IncidentReportIdGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IncidentReportIdGet200ResponseBuilder toBuilder() =>
      new IncidentReportIdGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IncidentReportIdGet200Response &&
        success == other.success &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IncidentReportIdGet200Response')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class IncidentReportIdGet200ResponseBuilder
    implements
        Builder<IncidentReportIdGet200Response,
            IncidentReportIdGet200ResponseBuilder> {
  _$IncidentReportIdGet200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  IncidentReportIdGet200ResponseDataBuilder? _data;
  IncidentReportIdGet200ResponseDataBuilder get data =>
      _$this._data ??= new IncidentReportIdGet200ResponseDataBuilder();
  set data(IncidentReportIdGet200ResponseDataBuilder? data) =>
      _$this._data = data;

  IncidentReportIdGet200ResponseBuilder() {
    IncidentReportIdGet200Response._defaults(this);
  }

  IncidentReportIdGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IncidentReportIdGet200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IncidentReportIdGet200Response;
  }

  @override
  void update(void Function(IncidentReportIdGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IncidentReportIdGet200Response build() => _build();

  _$IncidentReportIdGet200Response _build() {
    _$IncidentReportIdGet200Response _$result;
    try {
      _$result = _$v ??
          new _$IncidentReportIdGet200Response._(
            success: success,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IncidentReportIdGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
