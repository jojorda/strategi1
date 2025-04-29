// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident_report_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IncidentReportGet200Response extends IncidentReportGet200Response {
  @override
  final bool? success;
  @override
  final BuiltList<IncidentReportGet200ResponseDataInner>? data;
  @override
  final int? count;
  @override
  final int? page;
  @override
  final int? limit;
  @override
  final int? totalPages;

  factory _$IncidentReportGet200Response(
          [void Function(IncidentReportGet200ResponseBuilder)? updates]) =>
      (new IncidentReportGet200ResponseBuilder()..update(updates))._build();

  _$IncidentReportGet200Response._(
      {this.success,
      this.data,
      this.count,
      this.page,
      this.limit,
      this.totalPages})
      : super._();

  @override
  IncidentReportGet200Response rebuild(
          void Function(IncidentReportGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IncidentReportGet200ResponseBuilder toBuilder() =>
      new IncidentReportGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IncidentReportGet200Response &&
        success == other.success &&
        data == other.data &&
        count == other.count &&
        page == other.page &&
        limit == other.limit &&
        totalPages == other.totalPages;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, totalPages.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IncidentReportGet200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('count', count)
          ..add('page', page)
          ..add('limit', limit)
          ..add('totalPages', totalPages))
        .toString();
  }
}

class IncidentReportGet200ResponseBuilder
    implements
        Builder<IncidentReportGet200Response,
            IncidentReportGet200ResponseBuilder> {
  _$IncidentReportGet200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ListBuilder<IncidentReportGet200ResponseDataInner>? _data;
  ListBuilder<IncidentReportGet200ResponseDataInner> get data =>
      _$this._data ??= new ListBuilder<IncidentReportGet200ResponseDataInner>();
  set data(ListBuilder<IncidentReportGet200ResponseDataInner>? data) =>
      _$this._data = data;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  int? _totalPages;
  int? get totalPages => _$this._totalPages;
  set totalPages(int? totalPages) => _$this._totalPages = totalPages;

  IncidentReportGet200ResponseBuilder() {
    IncidentReportGet200Response._defaults(this);
  }

  IncidentReportGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _data = $v.data?.toBuilder();
      _count = $v.count;
      _page = $v.page;
      _limit = $v.limit;
      _totalPages = $v.totalPages;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IncidentReportGet200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IncidentReportGet200Response;
  }

  @override
  void update(void Function(IncidentReportGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IncidentReportGet200Response build() => _build();

  _$IncidentReportGet200Response _build() {
    _$IncidentReportGet200Response _$result;
    try {
      _$result = _$v ??
          new _$IncidentReportGet200Response._(
            success: success,
            data: _data?.build(),
            count: count,
            page: page,
            limit: limit,
            totalPages: totalPages,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'IncidentReportGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
