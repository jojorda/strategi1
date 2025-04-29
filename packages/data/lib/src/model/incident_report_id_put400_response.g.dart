// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident_report_id_put400_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IncidentReportIdPut400Response extends IncidentReportIdPut400Response {
  @override
  final bool? success;
  @override
  final BuiltList<String>? message;
  @override
  final num? statusCode;

  factory _$IncidentReportIdPut400Response(
          [void Function(IncidentReportIdPut400ResponseBuilder)? updates]) =>
      (new IncidentReportIdPut400ResponseBuilder()..update(updates))._build();

  _$IncidentReportIdPut400Response._(
      {this.success, this.message, this.statusCode})
      : super._();

  @override
  IncidentReportIdPut400Response rebuild(
          void Function(IncidentReportIdPut400ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IncidentReportIdPut400ResponseBuilder toBuilder() =>
      new IncidentReportIdPut400ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IncidentReportIdPut400Response &&
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
    return (newBuiltValueToStringHelper(r'IncidentReportIdPut400Response')
          ..add('success', success)
          ..add('message', message)
          ..add('statusCode', statusCode))
        .toString();
  }
}

class IncidentReportIdPut400ResponseBuilder
    implements
        Builder<IncidentReportIdPut400Response,
            IncidentReportIdPut400ResponseBuilder> {
  _$IncidentReportIdPut400Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ListBuilder<String>? _message;
  ListBuilder<String> get message =>
      _$this._message ??= new ListBuilder<String>();
  set message(ListBuilder<String>? message) => _$this._message = message;

  num? _statusCode;
  num? get statusCode => _$this._statusCode;
  set statusCode(num? statusCode) => _$this._statusCode = statusCode;

  IncidentReportIdPut400ResponseBuilder() {
    IncidentReportIdPut400Response._defaults(this);
  }

  IncidentReportIdPut400ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _message = $v.message?.toBuilder();
      _statusCode = $v.statusCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IncidentReportIdPut400Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IncidentReportIdPut400Response;
  }

  @override
  void update(void Function(IncidentReportIdPut400ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IncidentReportIdPut400Response build() => _build();

  _$IncidentReportIdPut400Response _build() {
    _$IncidentReportIdPut400Response _$result;
    try {
      _$result = _$v ??
          new _$IncidentReportIdPut400Response._(
            success: success,
            message: _message?.build(),
            statusCode: statusCode,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'message';
        _message?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IncidentReportIdPut400Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
