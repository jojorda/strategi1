// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportGet200Response extends ReportGet200Response {
  @override
  final bool? success;
  @override
  final BuiltList<Report>? data;
  @override
  final int? count;
  @override
  final int? page;
  @override
  final int? limit;
  @override
  final int? totalPages;

  factory _$ReportGet200Response(
          [void Function(ReportGet200ResponseBuilder)? updates]) =>
      (new ReportGet200ResponseBuilder()..update(updates))._build();

  _$ReportGet200Response._(
      {this.success,
      this.data,
      this.count,
      this.page,
      this.limit,
      this.totalPages})
      : super._();

  @override
  ReportGet200Response rebuild(
          void Function(ReportGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReportGet200ResponseBuilder toBuilder() =>
      new ReportGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportGet200Response &&
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
    return (newBuiltValueToStringHelper(r'ReportGet200Response')
          ..add('success', success)
          ..add('data', data)
          ..add('count', count)
          ..add('page', page)
          ..add('limit', limit)
          ..add('totalPages', totalPages))
        .toString();
  }
}

class ReportGet200ResponseBuilder
    implements Builder<ReportGet200Response, ReportGet200ResponseBuilder> {
  _$ReportGet200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ListBuilder<Report>? _data;
  ListBuilder<Report> get data => _$this._data ??= new ListBuilder<Report>();
  set data(ListBuilder<Report>? data) => _$this._data = data;

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

  ReportGet200ResponseBuilder() {
    ReportGet200Response._defaults(this);
  }

  ReportGet200ResponseBuilder get _$this {
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
  void replace(ReportGet200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReportGet200Response;
  }

  @override
  void update(void Function(ReportGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportGet200Response build() => _build();

  _$ReportGet200Response _build() {
    _$ReportGet200Response _$result;
    try {
      _$result = _$v ??
          new _$ReportGet200Response._(
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
            r'ReportGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
