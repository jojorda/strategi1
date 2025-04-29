// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_id_approve_post500_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportIdApprovePost500Response extends ReportIdApprovePost500Response {
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final num? statusCode;

  factory _$ReportIdApprovePost500Response(
          [void Function(ReportIdApprovePost500ResponseBuilder)? updates]) =>
      (new ReportIdApprovePost500ResponseBuilder()..update(updates))._build();

  _$ReportIdApprovePost500Response._(
      {this.success, this.message, this.statusCode})
      : super._();

  @override
  ReportIdApprovePost500Response rebuild(
          void Function(ReportIdApprovePost500ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportIdApprovePost500ResponseBuilder toBuilder() =>
      new ReportIdApprovePost500ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportIdApprovePost500Response &&
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
    return (newBuiltValueToStringHelper(r'ReportIdApprovePost500Response')
          ..add('success', success)
          ..add('message', message)
          ..add('statusCode', statusCode))
        .toString();
  }
}

class ReportIdApprovePost500ResponseBuilder
    implements
        Builder<ReportIdApprovePost500Response,
            ReportIdApprovePost500ResponseBuilder> {
  _$ReportIdApprovePost500Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  num? _statusCode;
  num? get statusCode => _$this._statusCode;
  set statusCode(num? statusCode) => _$this._statusCode = statusCode;

  ReportIdApprovePost500ResponseBuilder() {
    ReportIdApprovePost500Response._defaults(this);
  }

  ReportIdApprovePost500ResponseBuilder get _$this {
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
  void replace(ReportIdApprovePost500Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReportIdApprovePost500Response;
  }

  @override
  void update(void Function(ReportIdApprovePost500ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportIdApprovePost500Response build() => _build();

  _$ReportIdApprovePost500Response _build() {
    final _$result = _$v ??
        new _$ReportIdApprovePost500Response._(
          success: success,
          message: message,
          statusCode: statusCode,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
