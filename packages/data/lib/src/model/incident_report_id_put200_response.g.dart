// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident_report_id_put200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IncidentReportIdPut200Response extends IncidentReportIdPut200Response {
  @override
  final bool? success;
  @override
  final IncidentReportIdPut200ResponseData? data;

  factory _$IncidentReportIdPut200Response(
          [void Function(IncidentReportIdPut200ResponseBuilder)? updates]) =>
      (new IncidentReportIdPut200ResponseBuilder()..update(updates))._build();

  _$IncidentReportIdPut200Response._({this.success, this.data}) : super._();

  @override
  IncidentReportIdPut200Response rebuild(
          void Function(IncidentReportIdPut200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IncidentReportIdPut200ResponseBuilder toBuilder() =>
      new IncidentReportIdPut200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IncidentReportIdPut200Response &&
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
    return (newBuiltValueToStringHelper(r'IncidentReportIdPut200Response')
          ..add('success', success)
          ..add('data', data))
        .toString();
  }
}

class IncidentReportIdPut200ResponseBuilder
    implements
        Builder<IncidentReportIdPut200Response,
            IncidentReportIdPut200ResponseBuilder> {
  _$IncidentReportIdPut200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  IncidentReportIdPut200ResponseDataBuilder? _data;
  IncidentReportIdPut200ResponseDataBuilder get data =>
      _$this._data ??= new IncidentReportIdPut200ResponseDataBuilder();
  set data(IncidentReportIdPut200ResponseDataBuilder? data) =>
      _$this._data = data;

  IncidentReportIdPut200ResponseBuilder() {
    IncidentReportIdPut200Response._defaults(this);
  }

  IncidentReportIdPut200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IncidentReportIdPut200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IncidentReportIdPut200Response;
  }

  @override
  void update(void Function(IncidentReportIdPut200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IncidentReportIdPut200Response build() => _build();

  _$IncidentReportIdPut200Response _build() {
    _$IncidentReportIdPut200Response _$result;
    try {
      _$result = _$v ??
          new _$IncidentReportIdPut200Response._(
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
            r'IncidentReportIdPut200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
