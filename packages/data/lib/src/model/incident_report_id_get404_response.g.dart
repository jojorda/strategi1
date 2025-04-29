// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident_report_id_get404_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IncidentReportIdGet404Response extends IncidentReportIdGet404Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final num? statusCode;

  factory _$IncidentReportIdGet404Response(
          [void Function(IncidentReportIdGet404ResponseBuilder)? updates]) =>
      (new IncidentReportIdGet404ResponseBuilder()..update(updates))._build();

  _$IncidentReportIdGet404Response._(
      {this.success, this.message, this.statusCode})
      : super._();

  @override
  IncidentReportIdGet404Response rebuild(
          void Function(IncidentReportIdGet404ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IncidentReportIdGet404ResponseBuilder toBuilder() =>
      new IncidentReportIdGet404ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IncidentReportIdGet404Response &&
        success == other.success &&
        message == other.message &&
        statusCode == other.statusCode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, statusCode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IncidentReportIdGet404Response')
          ..add('success', success)
          ..add('message', message)
          ..add('statusCode', statusCode))
        .toString();
  }
}

class IncidentReportIdGet404ResponseBuilder
    implements
        Builder<IncidentReportIdGet404Response,
            IncidentReportIdGet404ResponseBuilder> {
  _$IncidentReportIdGet404Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  num? _statusCode;
  num? get statusCode => _$this._statusCode;
  set statusCode(num? statusCode) => _$this._statusCode = statusCode;

  IncidentReportIdGet404ResponseBuilder() {
    IncidentReportIdGet404Response._defaults(this);
  }

  IncidentReportIdGet404ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message;
      _statusCode = $v.statusCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IncidentReportIdGet404Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IncidentReportIdGet404Response;
  }

  @override
  void update(void Function(IncidentReportIdGet404ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IncidentReportIdGet404Response build() => _build();

  _$IncidentReportIdGet404Response _build() {
    final _$result = _$v ??
        new _$IncidentReportIdGet404Response._(
          success: success,
          message: message,
          statusCode: statusCode,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
