// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_rss_get200_response_data_items_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NewsRssGet200ResponseDataItemsInner
    extends NewsRssGet200ResponseDataItemsInner {
  @override
  final String? title;
  @override
  final String? link;
  @override
  final String? pubDate;
  @override
  final String? description;
  @override
  final String? author;
  @override
  final String? guid;
  @override
  final NewsRssGet200ResponseDataItemsInnerEnclosure? enclosure;

  factory _$NewsRssGet200ResponseDataItemsInner(
          [void Function(NewsRssGet200ResponseDataItemsInnerBuilder)?
              updates]) =>
      (new NewsRssGet200ResponseDataItemsInnerBuilder()..update(updates))
          ._build();

  _$NewsRssGet200ResponseDataItemsInner._(
      {this.title,
      this.link,
      this.pubDate,
      this.description,
      this.author,
      this.guid,
      this.enclosure})
      : super._();

  @override
  NewsRssGet200ResponseDataItemsInner rebuild(
          void Function(NewsRssGet200ResponseDataItemsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsRssGet200ResponseDataItemsInnerBuilder toBuilder() =>
      new NewsRssGet200ResponseDataItemsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewsRssGet200ResponseDataItemsInner &&
        title == other.title &&
        link == other.link &&
        pubDate == other.pubDate &&
        description == other.description &&
        author == other.author &&
        guid == other.guid &&
        enclosure == other.enclosure;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jc(_$hash, pubDate.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jc(_$hash, guid.hashCode);
    _$hash = $jc(_$hash, enclosure.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NewsRssGet200ResponseDataItemsInner')
          ..add('title', title)
          ..add('link', link)
          ..add('pubDate', pubDate)
          ..add('description', description)
          ..add('author', author)
          ..add('guid', guid)
          ..add('enclosure', enclosure))
        .toString();
  }
}

class NewsRssGet200ResponseDataItemsInnerBuilder
    implements
        Builder<NewsRssGet200ResponseDataItemsInner,
            NewsRssGet200ResponseDataItemsInnerBuilder> {
  _$NewsRssGet200ResponseDataItemsInner? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  String? _pubDate;
  String? get pubDate => _$this._pubDate;
  set pubDate(String? pubDate) => _$this._pubDate = pubDate;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _author;
  String? get author => _$this._author;
  set author(String? author) => _$this._author = author;

  String? _guid;
  String? get guid => _$this._guid;
  set guid(String? guid) => _$this._guid = guid;

  NewsRssGet200ResponseDataItemsInnerEnclosureBuilder? _enclosure;
  NewsRssGet200ResponseDataItemsInnerEnclosureBuilder get enclosure =>
      _$this._enclosure ??=
          new NewsRssGet200ResponseDataItemsInnerEnclosureBuilder();
  set enclosure(
          NewsRssGet200ResponseDataItemsInnerEnclosureBuilder? enclosure) =>
      _$this._enclosure = enclosure;

  NewsRssGet200ResponseDataItemsInnerBuilder() {
    NewsRssGet200ResponseDataItemsInner._defaults(this);
  }

  NewsRssGet200ResponseDataItemsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _link = $v.link;
      _pubDate = $v.pubDate;
      _description = $v.description;
      _author = $v.author;
      _guid = $v.guid;
      _enclosure = $v.enclosure?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewsRssGet200ResponseDataItemsInner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NewsRssGet200ResponseDataItemsInner;
  }

  @override
  void update(
      void Function(NewsRssGet200ResponseDataItemsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NewsRssGet200ResponseDataItemsInner build() => _build();

  _$NewsRssGet200ResponseDataItemsInner _build() {
    _$NewsRssGet200ResponseDataItemsInner _$result;
    try {
      _$result = _$v ??
          new _$NewsRssGet200ResponseDataItemsInner._(
            title: title,
            link: link,
            pubDate: pubDate,
            description: description,
            author: author,
            guid: guid,
            enclosure: _enclosure?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'enclosure';
        _enclosure?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NewsRssGet200ResponseDataItemsInner',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
