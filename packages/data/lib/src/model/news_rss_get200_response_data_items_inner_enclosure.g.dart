// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_rss_get200_response_data_items_inner_enclosure.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NewsRssGet200ResponseDataItemsInnerEnclosure
    extends NewsRssGet200ResponseDataItemsInnerEnclosure {
  @override
  final String? url;
  @override
  final String? length;
  @override
  final String? type;

  factory _$NewsRssGet200ResponseDataItemsInnerEnclosure(
          [void Function(NewsRssGet200ResponseDataItemsInnerEnclosureBuilder)?
              updates]) =>
      (new NewsRssGet200ResponseDataItemsInnerEnclosureBuilder()
            ..update(updates))
          ._build();

  _$NewsRssGet200ResponseDataItemsInnerEnclosure._(
      {this.url, this.length, this.type})
      : super._();

  @override
  NewsRssGet200ResponseDataItemsInnerEnclosure rebuild(
          void Function(NewsRssGet200ResponseDataItemsInnerEnclosureBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsRssGet200ResponseDataItemsInnerEnclosureBuilder toBuilder() =>
      new NewsRssGet200ResponseDataItemsInnerEnclosureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewsRssGet200ResponseDataItemsInnerEnclosure &&
        url == other.url &&
        length == other.length &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, length.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'NewsRssGet200ResponseDataItemsInnerEnclosure')
          ..add('url', url)
          ..add('length', length)
          ..add('type', type))
        .toString();
  }
}

class NewsRssGet200ResponseDataItemsInnerEnclosureBuilder
    implements
        Builder<NewsRssGet200ResponseDataItemsInnerEnclosure,
            NewsRssGet200ResponseDataItemsInnerEnclosureBuilder> {
  _$NewsRssGet200ResponseDataItemsInnerEnclosure? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _length;
  String? get length => _$this._length;
  set length(String? length) => _$this._length = length;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  NewsRssGet200ResponseDataItemsInnerEnclosureBuilder() {
    NewsRssGet200ResponseDataItemsInnerEnclosure._defaults(this);
  }

  NewsRssGet200ResponseDataItemsInnerEnclosureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _length = $v.length;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewsRssGet200ResponseDataItemsInnerEnclosure other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NewsRssGet200ResponseDataItemsInnerEnclosure;
  }

  @override
  void update(
      void Function(NewsRssGet200ResponseDataItemsInnerEnclosureBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  NewsRssGet200ResponseDataItemsInnerEnclosure build() => _build();

  _$NewsRssGet200ResponseDataItemsInnerEnclosure _build() {
    final _$result = _$v ??
        new _$NewsRssGet200ResponseDataItemsInnerEnclosure._(
          url: url,
          length: length,
          type: type,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
