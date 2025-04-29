// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_posko_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaginatedPoskoResponse extends PaginatedPoskoResponse {
  @override
  final bool? success;
  @override
  final BuiltList<Posko>? data;
  @override
  final int? count;
  @override
  final int? page;
  @override
  final int? limit;
  @override
  final int? totalPages;

  factory _$PaginatedPoskoResponse(
          [void Function(PaginatedPoskoResponseBuilder)? updates]) =>
      (new PaginatedPoskoResponseBuilder()..update(updates))._build();

  _$PaginatedPoskoResponse._(
      {this.success,
      this.data,
      this.count,
      this.page,
      this.limit,
      this.totalPages})
      : super._();

  @override
  PaginatedPoskoResponse rebuild(
          void Function(PaginatedPoskoResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaginatedPoskoResponseBuilder toBuilder() =>
      new PaginatedPoskoResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaginatedPoskoResponse &&
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
    return (newBuiltValueToStringHelper(r'PaginatedPoskoResponse')
          ..add('success', success)
          ..add('data', data)
          ..add('count', count)
          ..add('page', page)
          ..add('limit', limit)
          ..add('totalPages', totalPages))
        .toString();
  }
}

class PaginatedPoskoResponseBuilder
    implements Builder<PaginatedPoskoResponse, PaginatedPoskoResponseBuilder> {
  _$PaginatedPoskoResponse? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ListBuilder<Posko>? _data;
  ListBuilder<Posko> get data => _$this._data ??= new ListBuilder<Posko>();
  set data(ListBuilder<Posko>? data) => _$this._data = data;

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

  PaginatedPoskoResponseBuilder() {
    PaginatedPoskoResponse._defaults(this);
  }

  PaginatedPoskoResponseBuilder get _$this {
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
  void replace(PaginatedPoskoResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PaginatedPoskoResponse;
  }

  @override
  void update(void Function(PaginatedPoskoResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaginatedPoskoResponse build() => _build();

  _$PaginatedPoskoResponse _build() {
    _$PaginatedPoskoResponse _$result;
    try {
      _$result = _$v ??
          new _$PaginatedPoskoResponse._(
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
            r'PaginatedPoskoResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
