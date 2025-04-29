// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_id_approve_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportIdApprovePostRequest extends ReportIdApprovePostRequest {
  @override
  final String? notes;

  factory _$ReportIdApprovePostRequest(
          [void Function(ReportIdApprovePostRequestBuilder)? updates]) =>
      (new ReportIdApprovePostRequestBuilder()..update(updates))._build();

  _$ReportIdApprovePostRequest._({this.notes}) : super._();

  @override
  ReportIdApprovePostRequest rebuild(
          void Function(ReportIdApprovePostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportIdApprovePostRequestBuilder toBuilder() =>
      new ReportIdApprovePostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportIdApprovePostRequest && notes == other.notes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportIdApprovePostRequest')
          ..add('notes', notes))
        .toString();
  }
}

class ReportIdApprovePostRequestBuilder
    implements
        Builder<ReportIdApprovePostRequest, ReportIdApprovePostRequestBuilder> {
  _$ReportIdApprovePostRequest? _$v;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  ReportIdApprovePostRequestBuilder() {
    ReportIdApprovePostRequest._defaults(this);
  }

  ReportIdApprovePostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportIdApprovePostRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReportIdApprovePostRequest;
  }

  @override
  void update(void Function(ReportIdApprovePostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportIdApprovePostRequest build() => _build();

  _$ReportIdApprovePostRequest _build() {
    final _$result = _$v ??
        new _$ReportIdApprovePostRequest._(
          notes: notes,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
