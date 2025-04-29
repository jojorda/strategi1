// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_id_approve_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportIdApprovePost200Response extends ReportIdApprovePost200Response {
  @override
  final bool? success;
  @override
  final ReportIdApprovePost200ResponseData? data;
  @override
  final String? message;

  factory _$ReportIdApprovePost200Response(
          [void Function(ReportIdApprovePost200ResponseBuilder)? updates]) =>
      (new ReportIdApprovePost200ResponseBuilder()..update(updates))._build();

  _$ReportIdApprovePost200Response._({this.success, this.data, this.message})
      : super._();

  @override
  ReportIdApprovePost200Response rebuild(
          void Function(ReportIdApprovePost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportIdApprovePost200ResponseBuilder toBuilder() =>
      new ReportIdApprovePost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportIdApprovePost200Response &&
        success == other.success &&
        data == other.data &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportIdApprovePost200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class ReportIdApprovePost200ResponseBuilder
    implements
        Builder<ReportIdApprovePost200Response,
            ReportIdApprovePost200ResponseBuilder> {
  _$ReportIdApprovePost200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ReportIdApprovePost200ResponseDataBuilder? _data;
  ReportIdApprovePost200ResponseDataBuilder get data =>
      _$this._data ??= new ReportIdApprovePost200ResponseDataBuilder();
  set data(ReportIdApprovePost200ResponseDataBuilder? data) =>
      _$this._data = data;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ReportIdApprovePost200ResponseBuilder() {
    ReportIdApprovePost200Response._defaults(this);
  }

  ReportIdApprovePost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportIdApprovePost200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReportIdApprovePost200Response;
  }

  @override
  void update(void Function(ReportIdApprovePost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportIdApprovePost200Response build() => _build();

  _$ReportIdApprovePost200Response _build() {
    _$ReportIdApprovePost200Response _$result;
    try {
      _$result = _$v ??
          new _$ReportIdApprovePost200Response._(
            success: success,
            data: _data?.build(),
            message: message,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReportIdApprovePost200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
