// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident_report_id_reject_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IncidentReportIdRejectPost200Response
    extends IncidentReportIdRejectPost200Response {
  @override
  final bool? success;
  @override
  final IncidentReportIdRejectPost200ResponseData? data;
  @override
  final String? message;

  factory _$IncidentReportIdRejectPost200Response(
          [void Function(IncidentReportIdRejectPost200ResponseBuilder)?
              updates]) =>
      (new IncidentReportIdRejectPost200ResponseBuilder()..update(updates))
          ._build();

  _$IncidentReportIdRejectPost200Response._(
      {this.success, this.data, this.message})
      : super._();

  @override
  IncidentReportIdRejectPost200Response rebuild(
          void Function(IncidentReportIdRejectPost200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IncidentReportIdRejectPost200ResponseBuilder toBuilder() =>
      new IncidentReportIdRejectPost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IncidentReportIdRejectPost200Response &&
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
    return (newBuiltValueToStringHelper(
            r'IncidentReportIdRejectPost200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('message', message))
        .toString();
  }
}

class IncidentReportIdRejectPost200ResponseBuilder
    implements
        Builder<IncidentReportIdRejectPost200Response,
            IncidentReportIdRejectPost200ResponseBuilder> {
  _$IncidentReportIdRejectPost200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  IncidentReportIdRejectPost200ResponseDataBuilder? _data;
  IncidentReportIdRejectPost200ResponseDataBuilder get data =>
      _$this._data ??= new IncidentReportIdRejectPost200ResponseDataBuilder();
  set data(IncidentReportIdRejectPost200ResponseDataBuilder? data) =>
      _$this._data = data;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  IncidentReportIdRejectPost200ResponseBuilder() {
    IncidentReportIdRejectPost200Response._defaults(this);
  }

  IncidentReportIdRejectPost200ResponseBuilder get _$this {
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
  void replace(IncidentReportIdRejectPost200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IncidentReportIdRejectPost200Response;
  }

  @override
  void update(
      void Function(IncidentReportIdRejectPost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IncidentReportIdRejectPost200Response build() => _build();

  _$IncidentReportIdRejectPost200Response _build() {
    _$IncidentReportIdRejectPost200Response _$result;
    try {
      _$result = _$v ??
          new _$IncidentReportIdRejectPost200Response._(
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
            r'IncidentReportIdRejectPost200Response',
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
