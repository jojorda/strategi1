// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident_report_id_approve_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IncidentReportIdApprovePostRequest
    extends IncidentReportIdApprovePostRequest {
  @override
  final String approvedBy;
  @override
  final String? notes;

  factory _$IncidentReportIdApprovePostRequest(
          [void Function(IncidentReportIdApprovePostRequestBuilder)?
              updates]) =>
      (new IncidentReportIdApprovePostRequestBuilder()..update(updates))
          ._build();

  _$IncidentReportIdApprovePostRequest._({required this.approvedBy, this.notes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        approvedBy, r'IncidentReportIdApprovePostRequest', 'approvedBy');
  }

  @override
  IncidentReportIdApprovePostRequest rebuild(
          void Function(IncidentReportIdApprovePostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IncidentReportIdApprovePostRequestBuilder toBuilder() =>
      new IncidentReportIdApprovePostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IncidentReportIdApprovePostRequest &&
        approvedBy == other.approvedBy &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, approvedBy.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IncidentReportIdApprovePostRequest')
          ..add('approvedBy', approvedBy)
          ..add('notes', notes))
        .toString();
  }
}

class IncidentReportIdApprovePostRequestBuilder
    implements
        Builder<IncidentReportIdApprovePostRequest,
            IncidentReportIdApprovePostRequestBuilder> {
  _$IncidentReportIdApprovePostRequest? _$v;

  String? _approvedBy;
  String? get approvedBy => _$this._approvedBy;
  set approvedBy(String? approvedBy) => _$this._approvedBy = approvedBy;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  IncidentReportIdApprovePostRequestBuilder() {
    IncidentReportIdApprovePostRequest._defaults(this);
  }

  IncidentReportIdApprovePostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _approvedBy = $v.approvedBy;
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IncidentReportIdApprovePostRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IncidentReportIdApprovePostRequest;
  }

  @override
  void update(
      void Function(IncidentReportIdApprovePostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IncidentReportIdApprovePostRequest build() => _build();

  _$IncidentReportIdApprovePostRequest _build() {
    final _$result = _$v ??
        new _$IncidentReportIdApprovePostRequest._(
          approvedBy: BuiltValueNullFieldError.checkNotNull(
              approvedBy, r'IncidentReportIdApprovePostRequest', 'approvedBy'),
          notes: notes,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
