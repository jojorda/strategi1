// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident_report_id_reject_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IncidentReportIdRejectPostRequest
    extends IncidentReportIdRejectPostRequest {
  @override
  final String rejectedBy;
  @override
  final String reason;
  @override
  final String? additionalComments;

  factory _$IncidentReportIdRejectPostRequest(
          [void Function(IncidentReportIdRejectPostRequestBuilder)? updates]) =>
      (new IncidentReportIdRejectPostRequestBuilder()..update(updates))
          ._build();

  _$IncidentReportIdRejectPostRequest._(
      {required this.rejectedBy, required this.reason, this.additionalComments})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        rejectedBy, r'IncidentReportIdRejectPostRequest', 'rejectedBy');
    BuiltValueNullFieldError.checkNotNull(
        reason, r'IncidentReportIdRejectPostRequest', 'reason');
  }

  @override
  IncidentReportIdRejectPostRequest rebuild(
          void Function(IncidentReportIdRejectPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IncidentReportIdRejectPostRequestBuilder toBuilder() =>
      new IncidentReportIdRejectPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IncidentReportIdRejectPostRequest &&
        rejectedBy == other.rejectedBy &&
        reason == other.reason &&
        additionalComments == other.additionalComments;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rejectedBy.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, additionalComments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IncidentReportIdRejectPostRequest')
          ..add('rejectedBy', rejectedBy)
          ..add('reason', reason)
          ..add('additionalComments', additionalComments))
        .toString();
  }
}

class IncidentReportIdRejectPostRequestBuilder
    implements
        Builder<IncidentReportIdRejectPostRequest,
            IncidentReportIdRejectPostRequestBuilder> {
  _$IncidentReportIdRejectPostRequest? _$v;

  String? _rejectedBy;
  String? get rejectedBy => _$this._rejectedBy;
  set rejectedBy(String? rejectedBy) => _$this._rejectedBy = rejectedBy;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  String? _additionalComments;
  String? get additionalComments => _$this._additionalComments;
  set additionalComments(String? additionalComments) =>
      _$this._additionalComments = additionalComments;

  IncidentReportIdRejectPostRequestBuilder() {
    IncidentReportIdRejectPostRequest._defaults(this);
  }

  IncidentReportIdRejectPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rejectedBy = $v.rejectedBy;
      _reason = $v.reason;
      _additionalComments = $v.additionalComments;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IncidentReportIdRejectPostRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IncidentReportIdRejectPostRequest;
  }

  @override
  void update(
      void Function(IncidentReportIdRejectPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IncidentReportIdRejectPostRequest build() => _build();

  _$IncidentReportIdRejectPostRequest _build() {
    final _$result = _$v ??
        new _$IncidentReportIdRejectPostRequest._(
          rejectedBy: BuiltValueNullFieldError.checkNotNull(
              rejectedBy, r'IncidentReportIdRejectPostRequest', 'rejectedBy'),
          reason: BuiltValueNullFieldError.checkNotNull(
              reason, r'IncidentReportIdRejectPostRequest', 'reason'),
          additionalComments: additionalComments,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
