// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident_report_get500_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IncidentReportGet500Response extends IncidentReportGet500Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final num? statusCode;

  factory _$IncidentReportGet500Response(
          [void Function(IncidentReportGet500ResponseBuilder)? updates]) =>
      (new IncidentReportGet500ResponseBuilder()..update(updates))._build();

  _$IncidentReportGet500Response._(
      {this.success, this.message, this.statusCode})
      : super._();

  @override
  IncidentReportGet500Response rebuild(
          void Function(IncidentReportGet500ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IncidentReportGet500ResponseBuilder toBuilder() =>
      new IncidentReportGet500ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IncidentReportGet500Response &&
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
    return (newBuiltValueToStringHelper(r'IncidentReportGet500Response')
          ..add('success', success)
          ..add('message', message)
          ..add('statusCode', statusCode))
        .toString();
  }
}

class IncidentReportGet500ResponseBuilder
    implements
        Builder<IncidentReportGet500Response,
            IncidentReportGet500ResponseBuilder> {
  _$IncidentReportGet500Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  num? _statusCode;
  num? get statusCode => _$this._statusCode;
  set statusCode(num? statusCode) => _$this._statusCode = statusCode;

  IncidentReportGet500ResponseBuilder() {
    IncidentReportGet500Response._defaults(this);
  }

  IncidentReportGet500ResponseBuilder get _$this {
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
  void replace(IncidentReportGet500Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IncidentReportGet500Response;
  }

  @override
  void update(void Function(IncidentReportGet500ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IncidentReportGet500Response build() => _build();

  _$IncidentReportGet500Response _build() {
    final _$result = _$v ??
        new _$IncidentReportGet500Response._(
          success: success,
          message: message,
          statusCode: statusCode,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
