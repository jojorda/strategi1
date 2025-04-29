//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_refresh_token_post400_response.g.dart';

/// AuthRefreshTokenPost400Response
///
/// Properties:
/// * [status] 
/// * [message] 
@BuiltValue()
abstract class AuthRefreshTokenPost400Response implements Built<AuthRefreshTokenPost400Response, AuthRefreshTokenPost400ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'message')
  String? get message;

  AuthRefreshTokenPost400Response._();

  factory AuthRefreshTokenPost400Response([void updates(AuthRefreshTokenPost400ResponseBuilder b)]) = _$AuthRefreshTokenPost400Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthRefreshTokenPost400ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthRefreshTokenPost400Response> get serializer => _$AuthRefreshTokenPost400ResponseSerializer();
}

class _$AuthRefreshTokenPost400ResponseSerializer implements PrimitiveSerializer<AuthRefreshTokenPost400Response> {
  @override
  final Iterable<Type> types = const [AuthRefreshTokenPost400Response, _$AuthRefreshTokenPost400Response];

  @override
  final String wireName = r'AuthRefreshTokenPost400Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthRefreshTokenPost400Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthRefreshTokenPost400Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthRefreshTokenPost400ResponseBuilder result,
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
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuthRefreshTokenPost400Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthRefreshTokenPost400ResponseBuilder();
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

