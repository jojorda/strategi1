// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident_report_id_delete500_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IncidentReportIdDelete500Response
    extends IncidentReportIdDelete500Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final num? statusCode;

  factory _$IncidentReportIdDelete500Response(
          [void Function(IncidentReportIdDelete500ResponseBuilder)? updates]) =>
      (new IncidentReportIdDelete500ResponseBuilder()..update(updates))
          ._build();

  _$IncidentReportIdDelete500Response._(
      {this.success, this.message, this.statusCode})
      : super._();

  @override
  IncidentReportIdDelete500Response rebuild(
          void Function(IncidentReportIdDelete500ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IncidentReportIdDelete500ResponseBuilder toBuilder() =>
      new IncidentReportIdDelete500ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IncidentReportIdDelete500Response &&
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
    return (newBuiltValueToStringHelper(r'IncidentReportIdDelete500Response')
          ..add('success', success)
          ..add('message', message)
          ..add('statusCode', statusCode))
        .toString();
  }
}

class IncidentReportIdDelete500ResponseBuilder
    implements
        Builder<IncidentReportIdDelete500Response,
            IncidentReportIdDelete500ResponseBuilder> {
  _$IncidentReportIdDelete500Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  num? _statusCode;
  num? get statusCode => _$this._statusCode;
  set statusCode(num? statusCode) => _$this._statusCode = statusCode;

  IncidentReportIdDelete500ResponseBuilder() {
    IncidentReportIdDelete500Response._defaults(this);
  }

  IncidentReportIdDelete500ResponseBuilder get _$this {
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
  void replace(IncidentReportIdDelete500Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IncidentReportIdDelete500Response;
  }

  @override
  void update(
      void Function(IncidentReportIdDelete500ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IncidentReportIdDelete500Response build() => _build();

  _$IncidentReportIdDelete500Response _build() {
    final _$result = _$v ??
        new _$IncidentReportIdDelete500Response._(
          success: success,
          message: message,
          statusCode: statusCode,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
