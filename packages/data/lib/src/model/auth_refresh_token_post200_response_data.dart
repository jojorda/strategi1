//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_refresh_token_post200_response_data.g.dart';

/// AuthRefreshTokenPost200ResponseData
///
/// Properties:
/// * [accessToken] - The new access token
/// * [refreshToken] - The new refresh token
/// * [tokenType] 
/// * [expiresIn] - Expiration time in seconds
@BuiltValue()
abstract class AuthRefreshTokenPost200ResponseData implements Built<AuthRefreshTokenPost200ResponseData, AuthRefreshTokenPost200ResponseDataBuilder> {
  /// The new access token
  @BuiltValueField(wireName: r'accessToken')
  String? get accessToken;

  /// The new refresh token
  @BuiltValueField(wireName: r'refreshToken')
  String? get refreshToken;

  @BuiltValueField(wireName: r'tokenType')
  String? get tokenType;

  /// Expiration time in seconds
  @BuiltValueField(wireName: r'expiresIn')
  int? get expiresIn;

  AuthRefreshTokenPost200ResponseData._();

  factory AuthRefreshTokenPost200ResponseData([void updates(AuthRefreshTokenPost200ResponseDataBuilder b)]) = _$AuthRefreshTokenPost200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthRefreshTokenPost200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthRefreshTokenPost200ResponseData> get serializer => _$AuthRefreshTokenPost200ResponseDataSerializer();
}

class _$AuthRefreshTokenPost200ResponseDataSerializer implements PrimitiveSerializer<AuthRefreshTokenPost200ResponseData> {
  @override
  final Iterable<Type> types = const [AuthRefreshTokenPost200ResponseData, _$AuthRefreshTokenPost200ResponseData];

  @override
  final String wireName = r'AuthRefreshTokenPost200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthRefreshTokenPost200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.accessToken != null) {
      yield r'accessToken';
      yield serializers.serialize(
        object.accessToken,
        specifiedType: const FullType(String),
      );
    }
    if (object.refreshToken != null) {
      yield r'refreshToken';
      yield serializers.serialize(
        object.refreshToken,
        specifiedType: const FullType(String),
      );
    }
    if (object.tokenType != null) {
      yield r'tokenType';
      yield serializers.serialize(
        object.tokenType,
        specifiedType: const FullType(String),
      );
    }
    if (object.expiresIn != null) {
      yield r'expiresIn';
      yield serializers.serialize(
        object.expiresIn,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthRefreshTokenPost200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthRefreshTokenPost200ResponseDataBuilder result,
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
        case r'refreshToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.refreshToken = valueDes;
          break;
        case r'tokenType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tokenType = valueDes;
          break;
        case r'expiresIn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.expiresIn = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthRefreshTokenPost200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthRefreshTokenPost200ResponseDataBuilder();
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

