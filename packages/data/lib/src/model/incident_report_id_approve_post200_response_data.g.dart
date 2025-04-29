// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident_report_id_approve_post200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IncidentReportIdApprovePost200ResponseData
    extends IncidentReportIdApprovePost200ResponseData {
  @override
  final String? id;
  @override
  final bool? isApproved;
  @override
  final String? approvedBy;
  @override
  final String? approvedDate;
  @override
  final String? notes;

  factory _$IncidentReportIdApprovePost200ResponseData(
          [void Function(IncidentReportIdApprovePost200ResponseDataBuilder)?
              updates]) =>
      (new IncidentReportIdApprovePost200ResponseDataBuilder()..update(updates))
          ._build();

  _$IncidentReportIdApprovePost200ResponseData._(
      {this.id,
      this.isApproved,
      this.approvedBy,
      this.approvedDate,
      this.notes})
      : super._();

  @override
  IncidentReportIdApprovePost200ResponseData rebuild(
          void Function(IncidentReportIdApprovePost200ResponseDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IncidentReportIdApprovePost200ResponseDataBuilder toBuilder() =>
      new IncidentReportIdApprovePost200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IncidentReportIdApprovePost200ResponseData &&
        id == other.id &&
        isApproved == other.isApproved &&
        approvedBy == other.approvedBy &&
        approvedDate == other.approvedDate &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, isApproved.hashCode);
    _$hash = $jc(_$hash, approvedBy.hashCode);
    _$hash = $jc(_$hash, approvedDate.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'IncidentReportIdApprovePost200ResponseData')
          ..add('id', id)
          ..add('isApproved', isApproved)
          ..add('approvedBy', approvedBy)
          ..add('approvedDate', approvedDate)
          ..add('notes', notes))
        .toString();
  }
}

class IncidentReportIdApprovePost200ResponseDataBuilder
    implements
        Builder<IncidentReportIdApprovePost200ResponseData,
            IncidentReportIdApprovePost200ResponseDataBuilder> {
  _$IncidentReportIdApprovePost200ResponseData? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _isApproved;
  bool? get isApproved => _$this._isApproved;
  set isApproved(bool? isApproved) => _$this._isApproved = isApproved;

  String? _approvedBy;
  String? get approvedBy => _$this._approvedBy;
  set approvedBy(String? approvedBy) => _$this._approvedBy = approvedBy;

  String? _approvedDate;
  String? get approvedDate => _$this._approvedDate;
  set approvedDate(String? approvedDate) => _$this._approvedDate = approvedDate;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  IncidentReportIdApprovePost200ResponseDataBuilder() {
    IncidentReportIdApprovePost200ResponseData._defaults(this);
  }

  IncidentReportIdApprovePost200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _isApproved = $v.isApproved;
      _approvedBy = $v.approvedBy;
      _approvedDate = $v.approvedDate;
      _notes = $v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IncidentReportIdApprovePost200ResponseData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IncidentReportIdApprovePost200ResponseData;
  }

  @override
  void update(
      void Function(IncidentReportIdApprovePost200ResponseDataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  IncidentReportIdApprovePost200ResponseData build() => _build();

  _$IncidentReportIdApprovePost200ResponseData _build() {
    final _$result = _$v ??
        new _$IncidentReportIdApprovePost200ResponseData._(
          id: id,
          isApproved: isApproved,
          approvedBy: approvedBy,
          approvedDate: approvedDate,
          notes: notes,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
