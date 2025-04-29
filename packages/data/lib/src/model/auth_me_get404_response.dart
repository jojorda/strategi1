//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_me_get404_response.g.dart';

/// AuthMeGet404Response
///
/// Properties:
/// * [status] 
/// * [message] 
@BuiltValue()
abstract class AuthMeGet404Response implements Built<AuthMeGet404Response, AuthMeGet404ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'message')
  String? get message;

  AuthMeGet404Response._();

  factory AuthMeGet404Response([void updates(AuthMeGet404ResponseBuilder b)]) = _$AuthMeGet404Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthMeGet404ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthMeGet404Response> get serializer => _$AuthMeGet404ResponseSerializer();
}

class _$AuthMeGet404ResponseSerializer implements PrimitiveSerializer<AuthMeGet404Response> {
  @override
  final Iterable<Type> types = const [AuthMeGet404Response, _$AuthMeGet404Response];

  @override
  final String wireName = r'AuthMeGet404Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthMeGet404Response object, {
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
    AuthMeGet404Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthMeGet404ResponseBuilder result,
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
  AuthMeGet404Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthMeGet404ResponseBuilder();
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

