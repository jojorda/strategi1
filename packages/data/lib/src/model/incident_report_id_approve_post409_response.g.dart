// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident_report_id_approve_post409_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IncidentReportIdApprovePost409Response
    extends IncidentReportIdApprovePost409Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final num? statusCode;

  factory _$IncidentReportIdApprovePost409Response(
          [void Function(IncidentReportIdApprovePost409ResponseBuilder)?
              updates]) =>
      (new IncidentReportIdApprovePost409ResponseBuilder()..update(updates))
          ._build();

  _$IncidentReportIdApprovePost409Response._(
      {this.success, this.message, this.statusCode})
      : super._();

  @override
  IncidentReportIdApprovePost409Response rebuild(
          void Function(IncidentReportIdApprovePost409ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IncidentReportIdApprovePost409ResponseBuilder toBuilder() =>
      new IncidentReportIdApprovePost409ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IncidentReportIdApprovePost409Response &&
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
            r'IncidentReportIdApprovePost409Response')
          ..add('success', success)
          ..add('message', message)
          ..add('statusCode', statusCode))
        .toString();
  }
}

class IncidentReportIdApprovePost409ResponseBuilder
    implements
        Builder<IncidentReportIdApprovePost409Response,
            IncidentReportIdApprovePost409ResponseBuilder> {
  _$IncidentReportIdApprovePost409Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  num? _statusCode;
  num? get statusCode => _$this._statusCode;
  set statusCode(num? statusCode) => _$this._statusCode = statusCode;

  IncidentReportIdApprovePost409ResponseBuilder() {
    IncidentReportIdApprovePost409Response._defaults(this);
  }

  IncidentReportIdApprovePost409ResponseBuilder get _$this {
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
  void replace(IncidentReportIdApprovePost409Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IncidentReportIdApprovePost409Response;
  }

  @override
  void update(
      void Function(IncidentReportIdApprovePost409ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IncidentReportIdApprovePost409Response build() => _build();

  _$IncidentReportIdApprovePost409Response _build() {
    final _$result = _$v ??
        new _$IncidentReportIdApprovePost409Response._(
          success: success,
          message: message,
          statusCode: statusCode,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
