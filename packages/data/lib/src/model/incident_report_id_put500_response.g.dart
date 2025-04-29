// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident_report_id_put500_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IncidentReportIdPut500Response extends IncidentReportIdPut500Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final num? statusCode;

  factory _$IncidentReportIdPut500Response(
          [void Function(IncidentReportIdPut500ResponseBuilder)? updates]) =>
      (new IncidentReportIdPut500ResponseBuilder()..update(updates))._build();

  _$IncidentReportIdPut500Response._(
      {this.success, this.message, this.statusCode})
      : super._();

  @override
  IncidentReportIdPut500Response rebuild(
          void Function(IncidentReportIdPut500ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IncidentReportIdPut500ResponseBuilder toBuilder() =>
      new IncidentReportIdPut500ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IncidentReportIdPut500Response &&
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
    return (newBuiltValueToStringHelper(r'IncidentReportIdPut500Response')
          ..add('success', success)
          ..add('message', message)
          ..add('statusCode', statusCode))
        .toString();
  }
}

class IncidentReportIdPut500ResponseBuilder
    implements
        Builder<IncidentReportIdPut500Response,
            IncidentReportIdPut500ResponseBuilder> {
  _$IncidentReportIdPut500Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  num? _statusCode;
  num? get statusCode => _$this._statusCode;
  set statusCode(num? statusCode) => _$this._statusCode = statusCode;

  IncidentReportIdPut500ResponseBuilder() {
    IncidentReportIdPut500Response._defaults(this);
  }

  IncidentReportIdPut500ResponseBuilder get _$this {
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
  void replace(IncidentReportIdPut500Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IncidentReportIdPut500Response;
  }

  @override
  void update(void Function(IncidentReportIdPut500ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IncidentReportIdPut500Response build() => _build();

  _$IncidentReportIdPut500Response _build() {
    final _$result = _$v ??
        new _$IncidentReportIdPut500Response._(
          success: success,
          message: message,
          statusCode: statusCode,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
