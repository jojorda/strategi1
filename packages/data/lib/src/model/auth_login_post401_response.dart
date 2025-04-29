//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_login_post401_response.g.dart';

/// AuthLoginPost401Response
///
/// Properties:
/// * [status] 
/// * [message] 
@BuiltValue()
abstract class AuthLoginPost401Response implements Built<AuthLoginPost401Response, AuthLoginPost401ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'message')
  String? get message;

  AuthLoginPost401Response._();

  factory AuthLoginPost401Response([void updates(AuthLoginPost401ResponseBuilder b)]) = _$AuthLoginPost401Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthLoginPost401ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthLoginPost401Response> get serializer => _$AuthLoginPost401ResponseSerializer();
}

class _$AuthLoginPost401ResponseSerializer implements PrimitiveSerializer<AuthLoginPost401Response> {
  @override
  final Iterable<Type> types = const [AuthLoginPost401Response, _$AuthLoginPost401Response];

  @override
  final String wireName = r'AuthLoginPost401Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthLoginPost401Response object, {
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
    AuthLoginPost401Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthLoginPost401ResponseBuilder result,
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
  AuthLoginPost401Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthLoginPost401ResponseBuilder();
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

