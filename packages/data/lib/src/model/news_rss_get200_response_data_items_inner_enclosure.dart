//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'news_rss_get200_response_data_items_inner_enclosure.g.dart';

/// NewsRssGet200ResponseDataItemsInnerEnclosure
///
/// Properties:
/// * [url] 
/// * [length] 
/// * [type] 
@BuiltValue()
abstract class NewsRssGet200ResponseDataItemsInnerEnclosure implements Built<NewsRssGet200ResponseDataItemsInnerEnclosure, NewsRssGet200ResponseDataItemsInnerEnclosureBuilder> {
  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'length')
  String? get length;

  @BuiltValueField(wireName: r'type')
  String? get type;

  NewsRssGet200ResponseDataItemsInnerEnclosure._();

  factory NewsRssGet200ResponseDataItemsInnerEnclosure([void updates(NewsRssGet200ResponseDataItemsInnerEnclosureBuilder b)]) = _$NewsRssGet200ResponseDataItemsInnerEnclosure;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NewsRssGet200ResponseDataItemsInnerEnclosureBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NewsRssGet200ResponseDataItemsInnerEnclosure> get serializer => _$NewsRssGet200ResponseDataItemsInnerEnclosureSerializer();
}

class _$NewsRssGet200ResponseDataItemsInnerEnclosureSerializer implements PrimitiveSerializer<NewsRssGet200ResponseDataItemsInnerEnclosure> {
  @override
  final Iterable<Type> types = const [NewsRssGet200ResponseDataItemsInnerEnclosure, _$NewsRssGet200ResponseDataItemsInnerEnclosure];

  @override
  final String wireName = r'NewsRssGet200ResponseDataItemsInnerEnclosure';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NewsRssGet200ResponseDataItemsInnerEnclosure object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.length != null) {
      yield r'length';
      yield serializers.serialize(
        object.length,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NewsRssGet200ResponseDataItemsInnerEnclosure object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NewsRssGet200ResponseDataItemsInnerEnclosureBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'length':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.length = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NewsRssGet200ResponseDataItemsInnerEnclosure deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NewsRssGet200ResponseDataItemsInnerEnclosureBuilder();
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

