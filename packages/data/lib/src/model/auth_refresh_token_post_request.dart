//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_refresh_token_post_request.g.dart';

/// AuthRefreshTokenPostRequest
///
/// Properties:
/// * [refreshToken] - The refresh token issued during login
@BuiltValue()
abstract class AuthRefreshTokenPostRequest implements Built<AuthRefreshTokenPostRequest, AuthRefreshTokenPostRequestBuilder> {
  /// The refresh token issued during login
  @BuiltValueField(wireName: r'refreshToken')
  String get refreshToken;

  AuthRefreshTokenPostRequest._();

  factory AuthRefreshTokenPostRequest([void updates(AuthRefreshTokenPostRequestBuilder b)]) = _$AuthRefreshTokenPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthRefreshTokenPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthRefreshTokenPostRequest> get serializer => _$AuthRefreshTokenPostRequestSerializer();
}

class _$AuthRefreshTokenPostRequestSerializer implements PrimitiveSerializer<AuthRefreshTokenPostRequest> {
  @override
  final Iterable<Type> types = const [AuthRefreshTokenPostRequest, _$AuthRefreshTokenPostRequest];

  @override
  final String wireName = r'AuthRefreshTokenPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthRefreshTokenPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'refreshToken';
    yield serializers.serialize(
      object.refreshToken,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthRefreshTokenPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthRefreshTokenPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'refreshToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.refreshToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthRefreshTokenPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthRefreshTokenPostRequestBuilder();
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

