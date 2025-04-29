//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_refresh_token_post403_response.g.dart';

/// AuthRefreshTokenPost403Response
///
/// Properties:
/// * [status] 
/// * [message] 
@BuiltValue()
abstract class AuthRefreshTokenPost403Response implements Built<AuthRefreshTokenPost403Response, AuthRefreshTokenPost403ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'message')
  String? get message;

  AuthRefreshTokenPost403Response._();

  factory AuthRefreshTokenPost403Response([void updates(AuthRefreshTokenPost403ResponseBuilder b)]) = _$AuthRefreshTokenPost403Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthRefreshTokenPost403ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthRefreshTokenPost403Response> get serializer => _$AuthRefreshTokenPost403ResponseSerializer();
}

class _$AuthRefreshTokenPost403ResponseSerializer implements PrimitiveSerializer<AuthRefreshTokenPost403Response> {
  @override
  final Iterable<Type> types = const [AuthRefreshTokenPost403Response, _$AuthRefreshTokenPost403Response];

  @override
  final String wireName = r'AuthRefreshTokenPost403Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthRefreshTokenPost403Response object, {
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
    AuthRefreshTokenPost403Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthRefreshTokenPost403ResponseBuilder result,
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
  AuthRefreshTokenPost403Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthRefreshTokenPost403ResponseBuilder();
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

