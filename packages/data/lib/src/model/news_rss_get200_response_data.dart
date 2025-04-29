//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/news_rss_get200_response_data_image.dart';
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/news_rss_get200_response_data_items_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'news_rss_get200_response_data.g.dart';

/// NewsRssGet200ResponseData
///
/// Properties:
/// * [title] 
/// * [link] 
/// * [description] 
/// * [image] 
/// * [language] 
/// * [pubDate] 
/// * [items] 
@BuiltValue()
abstract class NewsRssGet200ResponseData implements Built<NewsRssGet200ResponseData, NewsRssGet200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'link')
  String? get link;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'image')
  NewsRssGet200ResponseDataImage? get image;

  @BuiltValueField(wireName: r'language')
  String? get language;

  @BuiltValueField(wireName: r'pubDate')
  String? get pubDate;

  @BuiltValueField(wireName: r'items')
  BuiltList<NewsRssGet200ResponseDataItemsInner>? get items;

  NewsRssGet200ResponseData._();

  factory NewsRssGet200ResponseData([void updates(NewsRssGet200ResponseDataBuilder b)]) = _$NewsRssGet200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NewsRssGet200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NewsRssGet200ResponseData> get serializer => _$NewsRssGet200ResponseDataSerializer();
}

class _$NewsRssGet200ResponseDataSerializer implements PrimitiveSerializer<NewsRssGet200ResponseData> {
  @override
  final Iterable<Type> types = const [NewsRssGet200ResponseData, _$NewsRssGet200ResponseData];

  @override
  final String wireName = r'NewsRssGet200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NewsRssGet200ResponseData object, {
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
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
        specifiedType: const FullType(NewsRssGet200ResponseDataImage),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
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
    if (object.items != null) {
      yield r'items';
      yield serializers.serialize(
        object.items,
        specifiedType: const FullType(BuiltList, [FullType(NewsRssGet200ResponseDataItemsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NewsRssGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NewsRssGet200ResponseDataBuilder result,
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
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NewsRssGet200ResponseDataImage),
          ) as NewsRssGet200ResponseDataImage;
          result.image.replace(valueDes);
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.language = valueDes;
          break;
        case r'pubDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pubDate = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(NewsRssGet200ResponseDataItemsInner)]),
          ) as BuiltList<NewsRssGet200ResponseDataItemsInner>;
          result.items.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NewsRssGet200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NewsRssGet200ResponseDataBuilder();
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

