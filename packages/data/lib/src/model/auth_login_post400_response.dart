//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_login_post400_response.g.dart';

/// AuthLoginPost400Response
///
/// Properties:
/// * [status] 
/// * [message] 
@BuiltValue()
abstract class AuthLoginPost400Response implements Built<AuthLoginPost400Response, AuthLoginPost400ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'message')
  String? get message;

  AuthLoginPost400Response._();

  factory AuthLoginPost400Response([void updates(AuthLoginPost400ResponseBuilder b)]) = _$AuthLoginPost400Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthLoginPost400ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthLoginPost400Response> get serializer => _$AuthLoginPost400ResponseSerializer();
}

class _$AuthLoginPost400ResponseSerializer implements PrimitiveSerializer<AuthLoginPost400Response> {
  @override
  final Iterable<Type> types = const [AuthLoginPost400Response, _$AuthLoginPost400Response];

  @override
  final String wireName = r'AuthLoginPost400Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthLoginPost400Response object, {
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
    AuthLoginPost400Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthLoginPost400ResponseBuilder result,
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
  AuthLoginPost400Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthLoginPost400ResponseBuilder();
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

