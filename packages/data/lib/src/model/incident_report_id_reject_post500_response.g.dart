// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident_report_id_reject_post500_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IncidentReportIdRejectPost500Response
    extends IncidentReportIdRejectPost500Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final num? statusCode;

  factory _$IncidentReportIdRejectPost500Response(
          [void Function(IncidentReportIdRejectPost500ResponseBuilder)?
              updates]) =>
      (new IncidentReportIdRejectPost500ResponseBuilder()..update(updates))
          ._build();

  _$IncidentReportIdRejectPost500Response._(
      {this.success, this.message, this.statusCode})
      : super._();

  @override
  IncidentReportIdRejectPost500Response rebuild(
          void Function(IncidentReportIdRejectPost500ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IncidentReportIdRejectPost500ResponseBuilder toBuilder() =>
      new IncidentReportIdRejectPost500ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IncidentReportIdRejectPost500Response &&
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
    return (newBuiltValueToStringHelper(
            r'IncidentReportIdRejectPost500Response')
          ..add('success', success)
          ..add('message', message)
          ..add('statusCode', statusCode))
        .toString();
  }
}

class IncidentReportIdRejectPost500ResponseBuilder
    implements
        Builder<IncidentReportIdRejectPost500Response,
            IncidentReportIdRejectPost500ResponseBuilder> {
  _$IncidentReportIdRejectPost500Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  num? _statusCode;
  num? get statusCode => _$this._statusCode;
  set statusCode(num? statusCode) => _$this._statusCode = statusCode;

  IncidentReportIdRejectPost500ResponseBuilder() {
    IncidentReportIdRejectPost500Response._defaults(this);
  }

  IncidentReportIdRejectPost500ResponseBuilder get _$this {
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
  void replace(IncidentReportIdRejectPost500Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IncidentReportIdRejectPost500Response;
  }

  @override
  void update(
      void Function(IncidentReportIdRejectPost500ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IncidentReportIdRejectPost500Response build() => _build();

  _$IncidentReportIdRejectPost500Response _build() {
    final _$result = _$v ??
        new _$IncidentReportIdRejectPost500Response._(
          success: success,
          message: message,
          statusCode: statusCode,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
