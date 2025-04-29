// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident_report_id_reject_post400_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IncidentReportIdRejectPost400Response
    extends IncidentReportIdRejectPost400Response {
  @override
  final bool? success;
  @override
  final BuiltList<String>? message;
  @override
  final num? statusCode;

  factory _$IncidentReportIdRejectPost400Response(
          [void Function(IncidentReportIdRejectPost400ResponseBuilder)?
              updates]) =>
      (new IncidentReportIdRejectPost400ResponseBuilder()..update(updates))
          ._build();

  _$IncidentReportIdRejectPost400Response._(
      {this.success, this.message, this.statusCode})
      : super._();

  @override
  IncidentReportIdRejectPost400Response rebuild(
          void Function(IncidentReportIdRejectPost400ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IncidentReportIdRejectPost400ResponseBuilder toBuilder() =>
      new IncidentReportIdRejectPost400ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IncidentReportIdRejectPost400Response &&
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
            r'IncidentReportIdRejectPost400Response')
          ..add('success', success)
          ..add('message', message)
          ..add('statusCode', statusCode))
        .toString();
  }
}

class IncidentReportIdRejectPost400ResponseBuilder
    implements
        Builder<IncidentReportIdRejectPost400Response,
            IncidentReportIdRejectPost400ResponseBuilder> {
  _$IncidentReportIdRejectPost400Response? _$v;

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

  IncidentReportIdRejectPost400ResponseBuilder() {
    IncidentReportIdRejectPost400Response._defaults(this);
  }

  IncidentReportIdRejectPost400ResponseBuilder get _$this {
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
  void replace(IncidentReportIdRejectPost400Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IncidentReportIdRejectPost400Response;
  }

  @override
  void update(
      void Function(IncidentReportIdRejectPost400ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IncidentReportIdRejectPost400Response build() => _build();

  _$IncidentReportIdRejectPost400Response _build() {
    _$IncidentReportIdRejectPost400Response _$result;
    try {
      _$result = _$v ??
          new _$IncidentReportIdRejectPost400Response._(
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
            r'IncidentReportIdRejectPost400Response',
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
