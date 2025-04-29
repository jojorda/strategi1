// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident_report_id_reject_post409_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IncidentReportIdRejectPost409Response
    extends IncidentReportIdRejectPost409Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final num? statusCode;

  factory _$IncidentReportIdRejectPost409Response(
          [void Function(IncidentReportIdRejectPost409ResponseBuilder)?
              updates]) =>
      (new IncidentReportIdRejectPost409ResponseBuilder()..update(updates))
          ._build();

  _$IncidentReportIdRejectPost409Response._(
      {this.success, this.message, this.statusCode})
      : super._();

  @override
  IncidentReportIdRejectPost409Response rebuild(
          void Function(IncidentReportIdRejectPost409ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IncidentReportIdRejectPost409ResponseBuilder toBuilder() =>
      new IncidentReportIdRejectPost409ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IncidentReportIdRejectPost409Response &&
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
            r'IncidentReportIdRejectPost409Response')
          ..add('success', success)
          ..add('message', message)
          ..add('statusCode', statusCode))
        .toString();
  }
}

class IncidentReportIdRejectPost409ResponseBuilder
    implements
        Builder<IncidentReportIdRejectPost409Response,
            IncidentReportIdRejectPost409ResponseBuilder> {
  _$IncidentReportIdRejectPost409Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  num? _statusCode;
  num? get statusCode => _$this._statusCode;
  set statusCode(num? statusCode) => _$this._statusCode = statusCode;

  IncidentReportIdRejectPost409ResponseBuilder() {
    IncidentReportIdRejectPost409Response._defaults(this);
  }

  IncidentReportIdRejectPost409ResponseBuilder get _$this {
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
  void replace(IncidentReportIdRejectPost409Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IncidentReportIdRejectPost409Response;
  }

  @override
  void update(
      void Function(IncidentReportIdRejectPost409ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IncidentReportIdRejectPost409Response build() => _build();

  _$IncidentReportIdRejectPost409Response _build() {
    final _$result = _$v ??
        new _$IncidentReportIdRejectPost409Response._(
          success: success,
          message: message,
          statusCode: statusCode,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
