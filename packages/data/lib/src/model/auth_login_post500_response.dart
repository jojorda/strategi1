//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_login_post500_response.g.dart';

/// AuthLoginPost500Response
///
/// Properties:
/// * [status] 
/// * [message] 
@BuiltValue()
abstract class AuthLoginPost500Response implements Built<AuthLoginPost500Response, AuthLoginPost500ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'message')
  String? get message;

  AuthLoginPost500Response._();

  factory AuthLoginPost500Response([void updates(AuthLoginPost500ResponseBuilder b)]) = _$AuthLoginPost500Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthLoginPost500ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthLoginPost500Response> get serializer => _$AuthLoginPost500ResponseSerializer();
}

class _$AuthLoginPost500ResponseSerializer implements PrimitiveSerializer<AuthLoginPost500Response> {
  @override
  final Iterable<Type> types = const [AuthLoginPost500Response, _$AuthLoginPost500Response];

  @override
  final String wireName = r'AuthLoginPost500Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthLoginPost500Response object, {
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
    AuthLoginPost500Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthLoginPost500ResponseBuilder result,
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
  AuthLoginPost500Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthLoginPost500ResponseBuilder();
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

