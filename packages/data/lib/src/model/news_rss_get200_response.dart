//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/news_rss_get200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'news_rss_get200_response.g.dart';

/// NewsRssGet200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class NewsRssGet200Response implements Built<NewsRssGet200Response, NewsRssGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'data')
  NewsRssGet200ResponseData? get data;

  NewsRssGet200Response._();

  factory NewsRssGet200Response([void updates(NewsRssGet200ResponseBuilder b)]) = _$NewsRssGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NewsRssGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NewsRssGet200Response> get serializer => _$NewsRssGet200ResponseSerializer();
}

class _$NewsRssGet200ResponseSerializer implements PrimitiveSerializer<NewsRssGet200Response> {
  @override
  final Iterable<Type> types = const [NewsRssGet200Response, _$NewsRssGet200Response];

  @override
  final String wireName = r'NewsRssGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NewsRssGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(NewsRssGet200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NewsRssGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NewsRssGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.status = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NewsRssGet200ResponseData),
          ) as NewsRssGet200ResponseData;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NewsRssGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NewsRssGet200ResponseBuilder();
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

