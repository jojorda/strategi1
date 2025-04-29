// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_id_reject_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportIdRejectPostRequest extends ReportIdRejectPostRequest {
  @override
  final String? reason;
  @override
  final String? additionalComments;

  factory _$ReportIdRejectPostRequest(
          [void Function(ReportIdRejectPostRequestBuilder)? updates]) =>
      (new ReportIdRejectPostRequestBuilder()..update(updates))._build();

  _$ReportIdRejectPostRequest._({this.reason, this.additionalComments})
      : super._();

  @override
  ReportIdRejectPostRequest rebuild(
          void Function(ReportIdRejectPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportIdRejectPostRequestBuilder toBuilder() =>
      new ReportIdRejectPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportIdRejectPostRequest &&
        reason == other.reason &&
        additionalComments == other.additionalComments;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, additionalComments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportIdRejectPostRequest')
          ..add('reason', reason)
          ..add('additionalComments', additionalComments))
        .toString();
  }
}

class ReportIdRejectPostRequestBuilder
    implements
        Builder<ReportIdRejectPostRequest, ReportIdRejectPostRequestBuilder> {
  _$ReportIdRejectPostRequest? _$v;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  String? _additionalComments;
  String? get additionalComments => _$this._additionalComments;
  set additionalComments(String? additionalComments) =>
      _$this._additionalComments = additionalComments;

  ReportIdRejectPostRequestBuilder() {
    ReportIdRejectPostRequest._defaults(this);
  }

  ReportIdRejectPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _additionalComments = $v.additionalComments;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportIdRejectPostRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReportIdRejectPostRequest;
  }

  @override
  void update(void Function(ReportIdRejectPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportIdRejectPostRequest build() => _build();

  _$ReportIdRejectPostRequest _build() {
    final _$result = _$v ??
        new _$ReportIdRejectPostRequest._(
          reason: reason,
          additionalComments: additionalComments,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
