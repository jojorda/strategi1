// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident_report_id_delete200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IncidentReportIdDelete200Response
    extends IncidentReportIdDelete200Response {
  @override
  final String? message;

  factory _$IncidentReportIdDelete200Response(
          [void Function(IncidentReportIdDelete200ResponseBuilder)? updates]) =>
      (new IncidentReportIdDelete200ResponseBuilder()..update(updates))
          ._build();

  _$IncidentReportIdDelete200Response._({this.message}) : super._();

  @override
  IncidentReportIdDelete200Response rebuild(
          void Function(IncidentReportIdDelete200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IncidentReportIdDelete200ResponseBuilder toBuilder() =>
      new IncidentReportIdDelete200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IncidentReportIdDelete200Response &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IncidentReportIdDelete200Response')
          ..add('message', message))
        .toString();
  }
}

class IncidentReportIdDelete200ResponseBuilder
    implements
        Builder<IncidentReportIdDelete200Response,
            IncidentReportIdDelete200ResponseBuilder> {
  _$IncidentReportIdDelete200Response? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  IncidentReportIdDelete200ResponseBuilder() {
    IncidentReportIdDelete200Response._defaults(this);
  }

  IncidentReportIdDelete200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IncidentReportIdDelete200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IncidentReportIdDelete200Response;
  }

  @override
  void update(
      void Function(IncidentReportIdDelete200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IncidentReportIdDelete200Response build() => _build();

  _$IncidentReportIdDelete200Response _build() {
    final _$result = _$v ??
        new _$IncidentReportIdDelete200Response._(
          message: message,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
