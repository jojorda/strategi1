//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/news_rss_get200_response_data_items_inner_enclosure.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'news_rss_get200_response_data_items_inner.g.dart';

/// NewsRssGet200ResponseDataItemsInner
///
/// Properties:
/// * [title] 
/// * [link] 
/// * [pubDate] 
/// * [description] 
/// * [author] 
/// * [guid] 
/// * [enclosure] 
@BuiltValue()
abstract class NewsRssGet200ResponseDataItemsInner implements Built<NewsRssGet200ResponseDataItemsInner, NewsRssGet200ResponseDataItemsInnerBuilder> {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'link')
  String? get link;

  @BuiltValueField(wireName: r'pubDate')
  String? get pubDate;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'author')
  String? get author;

  @BuiltValueField(wireName: r'guid')
  String? get guid;

  @BuiltValueField(wireName: r'enclosure')
  NewsRssGet200ResponseDataItemsInnerEnclosure? get enclosure;

  NewsRssGet200ResponseDataItemsInner._();

  factory NewsRssGet200ResponseDataItemsInner([void updates(NewsRssGet200ResponseDataItemsInnerBuilder b)]) = _$NewsRssGet200ResponseDataItemsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NewsRssGet200ResponseDataItemsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NewsRssGet200ResponseDataItemsInner> get serializer => _$NewsRssGet200ResponseDataItemsInnerSerializer();
}

class _$NewsRssGet200ResponseDataItemsInnerSerializer implements PrimitiveSerializer<NewsRssGet200ResponseDataItemsInner> {
  @override
  final Iterable<Type> types = const [NewsRssGet200ResponseDataItemsInner, _$NewsRssGet200ResponseDataItemsInner];

  @override
  final String wireName = r'NewsRssGet200ResponseDataItemsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NewsRssGet200ResponseDataItemsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.link != null) {
      yield r'link';
      yield serializers.serialize(
        object.link,
        specifiedType: const FullType(String),
      );
    }
    if (object.pubDate != null) {
      yield r'pubDate';
      yield serializers.serialize(
        object.pubDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.author != null) {
      yield r'author';
      yield serializers.serialize(
        object.author,
        specifiedType: const FullType(String),
      );
    }
    if (object.guid != null) {
      yield r'guid';
      yield serializers.serialize(
        object.guid,
        specifiedType: const FullType(String),
      );
    }
    if (object.enclosure != null) {
      yield r'enclosure';
      yield serializers.serialize(
        object.enclosure,
        specifiedType: const FullType(NewsRssGet200ResponseDataItemsInnerEnclosure),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NewsRssGet200ResponseDataItemsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NewsRssGet200ResponseDataItemsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'link':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.link = valueDes;
          break;
        case r'pubDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pubDate = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'author':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.author = valueDes;
          break;
        case r'guid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.guid = valueDes;
          break;
        case r'enclosure':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NewsRssGet200ResponseDataItemsInnerEnclosure),
          ) as NewsRssGet200ResponseDataItemsInnerEnclosure;
          result.enclosure.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NewsRssGet200ResponseDataItemsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NewsRssGet200ResponseDataItemsInnerBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

