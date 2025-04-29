//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/auth_refresh_token_post200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_refresh_token_post200_response.g.dart';

/// AuthRefreshTokenPost200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class AuthRefreshTokenPost200Response implements Built<AuthRefreshTokenPost200Response, AuthRefreshTokenPost200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'data')
  AuthRefreshTokenPost200ResponseData? get data;

  AuthRefreshTokenPost200Response._();

  factory AuthRefreshTokenPost200Response([void updates(AuthRefreshTokenPost200ResponseBuilder b)]) = _$AuthRefreshTokenPost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthRefreshTokenPost200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthRefreshTokenPost200Response> get serializer => _$AuthRefreshTokenPost200ResponseSerializer();
}

class _$AuthRefreshTokenPost200ResponseSerializer implements PrimitiveSerializer<AuthRefreshTokenPost200Response> {
  @override
  final Iterable<Type> types = const [AuthRefreshTokenPost200Response, _$AuthRefreshTokenPost200Response];

  @override
  final String wireName = r'AuthRefreshTokenPost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthRefreshTokenPost200Response object, {
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
        specifiedType: const FullType(AuthRefreshTokenPost200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthRefreshTokenPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthRefreshTokenPost200ResponseBuilder result,
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
            specifiedType: const FullType(AuthRefreshTokenPost200ResponseData),
          ) as AuthRefreshTokenPost200ResponseData;
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
  AuthRefreshTokenPost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthRefreshTokenPost200ResponseBuilder();
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

