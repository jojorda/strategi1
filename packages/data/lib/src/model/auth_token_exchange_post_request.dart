//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_token_exchange_post_request.g.dart';

/// AuthTokenExchangePostRequest
///
/// Properties:
/// * [accessToken] 
@BuiltValue()
abstract class AuthTokenExchangePostRequest implements Built<AuthTokenExchangePostRequest, AuthTokenExchangePostRequestBuilder> {
  @BuiltValueField(wireName: r'accessToken')
  String get accessToken;

  AuthTokenExchangePostRequest._();

  factory AuthTokenExchangePostRequest([void updates(AuthTokenExchangePostRequestBuilder b)]) = _$AuthTokenExchangePostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthTokenExchangePostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthTokenExchangePostRequest> get serializer => _$AuthTokenExchangePostRequestSerializer();
}

class _$AuthTokenExchangePostRequestSerializer implements PrimitiveSerializer<AuthTokenExchangePostRequest> {
  @override
  final Iterable<Type> types = const [AuthTokenExchangePostRequest, _$AuthTokenExchangePostRequest];

  @override
  final String wireName = r'AuthTokenExchangePostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthTokenExchangePostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accessToken';
    yield serializers.serialize(
      object.accessToken,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthTokenExchangePostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthTokenExchangePostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accessToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accessToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthTokenExchangePostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthTokenExchangePostRequestBuilder();
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

