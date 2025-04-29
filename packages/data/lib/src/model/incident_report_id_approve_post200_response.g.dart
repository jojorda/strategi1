// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident_report_id_approve_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IncidentReportIdApprovePost200Response
    extends IncidentReportIdApprovePost200Response {
  @override
  final bool? success;
  @override
  final IncidentReportIdApprovePost200ResponseData? data;
  @override
  final String? message;

  factory _$IncidentReportIdApprovePost200Response(
          [void Function(IncidentReportIdApprovePost200ResponseBuilder)?
              updates]) =>
      (new IncidentReportIdApprovePost200ResponseBuilder()..update(updates))
          ._build();

  _$IncidentReportIdApprovePost200Response._(
      {this.success, this.data, this.message})
      : super._();

  @override
  IncidentReportIdApprovePost200Response rebuild(
          void Function(IncidentReportIdApprovePost200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IncidentReportIdApprovePost200ResponseBuilder toBuilder() =>
      new IncidentReportIdApprovePost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IncidentReportIdApprovePost200Response &&
        success == other.success &&
        data == other.data &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'IncidentReportIdApprovePost200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class IncidentReportIdApprovePost200ResponseBuilder
    implements
        Builder<IncidentReportIdApprovePost200Response,
            IncidentReportIdApprovePost200ResponseBuilder> {
  _$IncidentReportIdApprovePost200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  IncidentReportIdApprovePost200ResponseDataBuilder? _data;
  IncidentReportIdApprovePost200ResponseDataBuilder get data =>
      _$this._data ??= new IncidentReportIdApprovePost200ResponseDataBuilder();
  set data(IncidentReportIdApprovePost200ResponseDataBuilder? data) =>
      _$this._data = data;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  IncidentReportIdApprovePost200ResponseBuilder() {
    IncidentReportIdApprovePost200Response._defaults(this);
  }

  IncidentReportIdApprovePost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IncidentReportIdApprovePost200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IncidentReportIdApprovePost200Response;
  }

  @override
  void update(
      void Function(IncidentReportIdApprovePost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IncidentReportIdApprovePost200Response build() => _build();

  _$IncidentReportIdApprovePost200Response _build() {
    _$IncidentReportIdApprovePost200Response _$result;
    try {
      _$result = _$v ??
          new _$IncidentReportIdApprovePost200Response._(
            success: success,
            data: _data?.build(),
            message: message,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IncidentReportIdApprovePost200Response',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
