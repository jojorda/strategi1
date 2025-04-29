// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_rss_get200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NewsRssGet200ResponseData extends NewsRssGet200ResponseData {
  @override
  final String? title;
  @override
  final String? link;
  @override
  final String? description;
  @override
  final NewsRssGet200ResponseDataImage? image;
  @override
  final String? language;
  @override
  final String? pubDate;
  @override
  final BuiltList<NewsRssGet200ResponseDataItemsInner>? items;

  factory _$NewsRssGet200ResponseData(
          [void Function(NewsRssGet200ResponseDataBuilder)? updates]) =>
      (new NewsRssGet200ResponseDataBuilder()..update(updates))._build();

  _$NewsRssGet200ResponseData._(
      {this.title,
      this.link,
      this.description,
      this.image,
      this.language,
      this.pubDate,
      this.items})
      : super._();

  @override
  NewsRssGet200ResponseData rebuild(
          void Function(NewsRssGet200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsRssGet200ResponseDataBuilder toBuilder() =>
      new NewsRssGet200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewsRssGet200ResponseData &&
        title == other.title &&
        link == other.link &&
        description == other.description &&
        image == other.image &&
        language == other.language &&
        pubDate == other.pubDate &&
        items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, pubDate.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NewsRssGet200ResponseData')
          ..add('title', title)
          ..add('link', link)
          ..add('description', description)
          ..add('image', image)
          ..add('language', language)
          ..add('pubDate', pubDate)
          ..add('items', items))
        .toString();
  }
}

class NewsRssGet200ResponseDataBuilder
    implements
        Builder<NewsRssGet200ResponseData, NewsRssGet200ResponseDataBuilder> {
  _$NewsRssGet200ResponseData? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  NewsRssGet200ResponseDataImageBuilder? _image;
  NewsRssGet200ResponseDataImageBuilder get image =>
      _$this._image ??= new NewsRssGet200ResponseDataImageBuilder();
  set image(NewsRssGet200ResponseDataImageBuilder? image) =>
      _$this._image = image;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _pubDate;
  String? get pubDate => _$this._pubDate;
  set pubDate(String? pubDate) => _$this._pubDate = pubDate;

  ListBuilder<NewsRssGet200ResponseDataItemsInner>? _items;
  ListBuilder<NewsRssGet200ResponseDataItemsInner> get items =>
      _$this._items ??= new ListBuilder<NewsRssGet200ResponseDataItemsInner>();
  set items(ListBuilder<NewsRssGet200ResponseDataItemsInner>? items) =>
      _$this._items = items;

  NewsRssGet200ResponseDataBuilder() {
    NewsRssGet200ResponseData._defaults(this);
  }

  NewsRssGet200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _link = $v.link;
      _description = $v.description;
      _image = $v.image?.toBuilder();
      _language = $v.language;
      _pubDate = $v.pubDate;
      _items = $v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewsRssGet200ResponseData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NewsRssGet200ResponseData;
  }

  @override
  void update(void Function(NewsRssGet200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NewsRssGet200ResponseData build() => _build();

  _$NewsRssGet200ResponseData _build() {
    _$NewsRssGet200ResponseData _$result;
    try {
      _$result = _$v ??
          new _$NewsRssGet200ResponseData._(
            title: title,
            link: link,
            description: description,
            image: _image?.build(),
            language: language,
            pubDate: pubDate,
            items: _items?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'image';
        _image?.build();

        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'NewsRssGet200ResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
