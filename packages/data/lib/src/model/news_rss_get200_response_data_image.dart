//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'news_rss_get200_response_data_image.g.dart';

/// NewsRssGet200ResponseDataImage
///
/// Properties:
/// * [url] 
@BuiltValue()
abstract class NewsRssGet200ResponseDataImage implements Built<NewsRssGet200ResponseDataImage, NewsRssGet200ResponseDataImageBuilder> {
  @BuiltValueField(wireName: r'url')
  String? get url;

  NewsRssGet200ResponseDataImage._();

  factory NewsRssGet200ResponseDataImage([void updates(NewsRssGet200ResponseDataImageBuilder b)]) = _$NewsRssGet200ResponseDataImage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NewsRssGet200ResponseDataImageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NewsRssGet200ResponseDataImage> get serializer => _$NewsRssGet200ResponseDataImageSerializer();
}

class _$NewsRssGet200ResponseDataImageSerializer implements PrimitiveSerializer<NewsRssGet200ResponseDataImage> {
  @override
  final Iterable<Type> types = const [NewsRssGet200ResponseDataImage, _$NewsRssGet200ResponseDataImage];

  @override
  final String wireName = r'NewsRssGet200ResponseDataImage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NewsRssGet200ResponseDataImage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NewsRssGet200ResponseDataImage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NewsRssGet200ResponseDataImageBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NewsRssGet200ResponseDataImage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NewsRssGet200ResponseDataImageBuilder();
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

