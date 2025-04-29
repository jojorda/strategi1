// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_id_reject_post200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportIdRejectPost200ResponseData
    extends ReportIdRejectPost200ResponseData {
  @override
  final String? id;
  @override
  final bool? isApproved;
  @override
  final String? rejectedBy;
  @override
  final String? rejectedDate;
  @override
  final String? reason;
  @override
  final String? additionalComments;

  factory _$ReportIdRejectPost200ResponseData(
          [void Function(ReportIdRejectPost200ResponseDataBuilder)? updates]) =>
      (new ReportIdRejectPost200ResponseDataBuilder()..update(updates))
          ._build();

  _$ReportIdRejectPost200ResponseData._(
      {this.id,
      this.isApproved,
      this.rejectedBy,
      this.rejectedDate,
      this.reason,
      this.additionalComments})
      : super._();

  @override
  ReportIdRejectPost200ResponseData rebuild(
          void Function(ReportIdRejectPost200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportIdRejectPost200ResponseDataBuilder toBuilder() =>
      new ReportIdRejectPost200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportIdRejectPost200ResponseData &&
        id == other.id &&
        isApproved == other.isApproved &&
        rejectedBy == other.rejectedBy &&
        rejectedDate == other.rejectedDate &&
        reason == other.reason &&
        additionalComments == other.additionalComments;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isApproved.hashCode);
    _$hash = $jc(_$hash, rejectedBy.hashCode);
    _$hash = $jc(_$hash, rejectedDate.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, additionalComments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportIdRejectPost200ResponseData')
          ..add('id', id)
          ..add('isApproved', isApproved)
          ..add('rejectedBy', rejectedBy)
          ..add('rejectedDate', rejectedDate)
          ..add('reason', reason)
          ..add('additionalComments', additionalComments))
        .toString();
  }
}

class ReportIdRejectPost200ResponseDataBuilder
    implements
        Builder<ReportIdRejectPost200ResponseData,
            ReportIdRejectPost200ResponseDataBuilder> {
  _$ReportIdRejectPost200ResponseData? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _isApproved;
  bool? get isApproved => _$this._isApproved;
  set isApproved(bool? isApproved) => _$this._isApproved = isApproved;

  String? _rejectedBy;
  String? get rejectedBy => _$this._rejectedBy;
  set rejectedBy(String? rejectedBy) => _$this._rejectedBy = rejectedBy;

  String? _rejectedDate;
  String? get rejectedDate => _$this._rejectedDate;
  set rejectedDate(String? rejectedDate) => _$this._rejectedDate = rejectedDate;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  String? _additionalComments;
  String? get additionalComments => _$this._additionalComments;
  set additionalComments(String? additionalComments) =>
      _$this._additionalComments = additionalComments;

  ReportIdRejectPost200ResponseDataBuilder() {
    ReportIdRejectPost200ResponseData._defaults(this);
  }

  ReportIdRejectPost200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _isApproved = $v.isApproved;
      _rejectedBy = $v.rejectedBy;
      _rejectedDate = $v.rejectedDate;
      _reason = $v.reason;
      _additionalComments = $v.additionalComments;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReportIdRejectPost200ResponseData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReportIdRejectPost200ResponseData;
  }

  @override
  void update(
      void Function(ReportIdRejectPost200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportIdRejectPost200ResponseData build() => _build();

  _$ReportIdRejectPost200ResponseData _build() {
    final _$result = _$v ??
        new _$ReportIdRejectPost200ResponseData._(
          id: id,
          isApproved: isApproved,
          rejectedBy: rejectedBy,
          rejectedDate: rejectedDate,
          reason: reason,
          additionalComments: additionalComments,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
