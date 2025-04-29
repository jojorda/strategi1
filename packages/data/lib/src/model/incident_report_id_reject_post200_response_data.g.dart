// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident_report_id_reject_post200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IncidentReportIdRejectPost200ResponseData
    extends IncidentReportIdRejectPost200ResponseData {
  @override
  final String? id;
  @override
  final bool? isRejected;
  @override
  final String? rejectedBy;
  @override
  final String? rejectedDate;
  @override
  final String? reason;
  @override
  final String? additionalComments;

  factory _$IncidentReportIdRejectPost200ResponseData(
          [void Function(IncidentReportIdRejectPost200ResponseDataBuilder)?
              updates]) =>
      (new IncidentReportIdRejectPost200ResponseDataBuilder()..update(updates))
          ._build();

  _$IncidentReportIdRejectPost200ResponseData._(
      {this.id,
      this.isRejected,
      this.rejectedBy,
      this.rejectedDate,
      this.reason,
      this.additionalComments})
      : super._();

  @override
  IncidentReportIdRejectPost200ResponseData rebuild(
          void Function(IncidentReportIdRejectPost200ResponseDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IncidentReportIdRejectPost200ResponseDataBuilder toBuilder() =>
      new IncidentReportIdRejectPost200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IncidentReportIdRejectPost200ResponseData &&
        id == other.id &&
        isRejected == other.isRejected &&
        rejectedBy == other.rejectedBy &&
        rejectedDate == other.rejectedDate &&
        reason == other.reason &&
        additionalComments == other.additionalComments;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isRejected.hashCode);
    _$hash = $jc(_$hash, rejectedBy.hashCode);
    _$hash = $jc(_$hash, rejectedDate.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, additionalComments.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'IncidentReportIdRejectPost200ResponseData')
          ..add('id', id)
          ..add('isRejected', isRejected)
          ..add('rejectedBy', rejectedBy)
          ..add('rejectedDate', rejectedDate)
          ..add('reason', reason)
          ..add('additionalComments', additionalComments))
        .toString();
  }
}

class IncidentReportIdRejectPost200ResponseDataBuilder
    implements
        Builder<IncidentReportIdRejectPost200ResponseData,
            IncidentReportIdRejectPost200ResponseDataBuilder> {
  _$IncidentReportIdRejectPost200ResponseData? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _isRejected;
  bool? get isRejected => _$this._isRejected;
  set isRejected(bool? isRejected) => _$this._isRejected = isRejected;

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

  IncidentReportIdRejectPost200ResponseDataBuilder() {
    IncidentReportIdRejectPost200ResponseData._defaults(this);
  }

  IncidentReportIdRejectPost200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _isRejected = $v.isRejected;
      _rejectedBy = $v.rejectedBy;
      _rejectedDate = $v.rejectedDate;
      _reason = $v.reason;
      _additionalComments = $v.additionalComments;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IncidentReportIdRejectPost200ResponseData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IncidentReportIdRejectPost200ResponseData;
  }

  @override
  void update(
      void Function(IncidentReportIdRejectPost200ResponseDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  IncidentReportIdRejectPost200ResponseData build() => _build();

  _$IncidentReportIdRejectPost200ResponseData _build() {
    final _$result = _$v ??
        new _$IncidentReportIdRejectPost200ResponseData._(
          id: id,
          isRejected: isRejected,
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
