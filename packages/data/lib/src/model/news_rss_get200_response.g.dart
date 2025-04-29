// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_rss_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NewsRssGet200Response extends NewsRssGet200Response {
  @override
  final bool? status;
  @override
  final NewsRssGet200ResponseData? data;

  factory _$NewsRssGet200Response(
          [void Function(NewsRssGet200ResponseBuilder)? updates]) =>
      (new NewsRssGet200ResponseBuilder()..update(updates))._build();

  _$NewsRssGet200Response._({this.status, this.data}) : super._();

  @override
  NewsRssGet200Response rebuild(
          void Function(NewsRssGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsRssGet200ResponseBuilder toBuilder() =>
      new NewsRssGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewsRssGet200Response &&
        status == other.status &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NewsRssGet200Response')
          ..add('status', status)
          ..add('data', data))
        .toString();
  }
}

class NewsRssGet200ResponseBuilder
    implements Builder<NewsRssGet200Response, NewsRssGet200ResponseBuilder> {
  _$NewsRssGet200Response? _$v;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  NewsRssGet200ResponseDataBuilder? _data;
  NewsRssGet200ResponseDataBuilder get data =>
      _$this._data ??= new NewsRssGet200ResponseDataBuilder();
  set data(NewsRssGet200ResponseDataBuilder? data) => _$this._data = data;

  NewsRssGet200ResponseBuilder() {
    NewsRssGet200Response._defaults(this);
  }

  NewsRssGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _data = $v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewsRssGet200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NewsRssGet200Response;
  }

  @override
  void update(void Function(NewsRssGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NewsRssGet200Response build() => _build();

  _$NewsRssGet200Response _build() {
    _$NewsRssGet200Response _$result;
    try {
      _$result = _$v ??
          new _$NewsRssGet200Response._(
            status: status,
            data: _data?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NewsRssGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
