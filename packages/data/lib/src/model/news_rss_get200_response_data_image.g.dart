// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_rss_get200_response_data_image.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NewsRssGet200ResponseDataImage extends NewsRssGet200ResponseDataImage {
  @override
  final String? url;

  factory _$NewsRssGet200ResponseDataImage(
          [void Function(NewsRssGet200ResponseDataImageBuilder)? updates]) =>
      (new NewsRssGet200ResponseDataImageBuilder()..update(updates))._build();

  _$NewsRssGet200ResponseDataImage._({this.url}) : super._();

  @override
  NewsRssGet200ResponseDataImage rebuild(
          void Function(NewsRssGet200ResponseDataImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsRssGet200ResponseDataImageBuilder toBuilder() =>
      new NewsRssGet200ResponseDataImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewsRssGet200ResponseDataImage && url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NewsRssGet200ResponseDataImage')
          ..add('url', url))
        .toString();
  }
}

class NewsRssGet200ResponseDataImageBuilder
    implements
        Builder<NewsRssGet200ResponseDataImage,
            NewsRssGet200ResponseDataImageBuilder> {
  _$NewsRssGet200ResponseDataImage? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  NewsRssGet200ResponseDataImageBuilder() {
    NewsRssGet200ResponseDataImage._defaults(this);
  }

  NewsRssGet200ResponseDataImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewsRssGet200ResponseDataImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NewsRssGet200ResponseDataImage;
  }

  @override
  void update(void Function(NewsRssGet200ResponseDataImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NewsRssGet200ResponseDataImage build() => _build();

  _$NewsRssGet200ResponseDataImage _build() {
    final _$result = _$v ??
        new _$NewsRssGet200ResponseDataImage._(
          url: url,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
