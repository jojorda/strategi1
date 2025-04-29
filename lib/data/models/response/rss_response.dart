import 'package:json_annotation/json_annotation.dart';

part 'rss_response.g.dart';

@JsonSerializable()
class RssResponse {
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "link")
  String? link;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "image")
  Image? image;
  @JsonKey(name: "language")
  String? language;
  @JsonKey(name: "pubDate")
  String? pubDate;
  @JsonKey(name: "items")
  List<NewsItem>? items;

  RssResponse({
    this.title,
    this.link,
    this.description,
    this.image,
    this.language,
    this.pubDate,
    this.items,
  });

  factory RssResponse.fromJson(Map<String, dynamic> json) =>
      _$RssResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RssResponseToJson(this);
}

@JsonSerializable()
class Image {
  @JsonKey(name: "url")
  String? url;

  Image({
    this.url,
  });

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);
}

@JsonSerializable()
class NewsItem {
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "link")
  String? link;
  @JsonKey(name: "pubDate")
  String? pubDate;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "author")
  String? author;
  @JsonKey(name: "guid")
  String? guid;
  @JsonKey(name: "enclosure")
  Enclosure? enclosure;

  NewsItem({
    this.title,
    this.link,
    this.pubDate,
    this.description,
    this.author,
    this.guid,
    this.enclosure,
  });

  factory NewsItem.fromJson(Map<String, dynamic> json) =>
      _$NewsItemFromJson(json);

  Map<String, dynamic> toJson() => _$NewsItemToJson(this);
}

@JsonSerializable()
class Enclosure {
  @JsonKey(name: "url")
  String? url;
  @JsonKey(name: "length")
  String? length;
  @JsonKey(name: "type")
  String? type;

  Enclosure({
    this.url,
    this.length,
    this.type,
  });

  factory Enclosure.fromJson(Map<String, dynamic> json) =>
      _$EnclosureFromJson(json);

  Map<String, dynamic> toJson() => _$EnclosureToJson(this);
}
