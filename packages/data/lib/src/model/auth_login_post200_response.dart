//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/auth_login_post200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'auth_login_post200_response.g.dart';

/// AuthLoginPost200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class AuthLoginPost200Response implements Built<AuthLoginPost200Response, AuthLoginPost200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'data')
  AuthLoginPost200ResponseData? get data;

  AuthLoginPost200Response._();

  factory AuthLoginPost200Response([void updates(AuthLoginPost200ResponseBuilder b)]) = _$AuthLoginPost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuthLoginPost200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuthLoginPost200Response> get serializer => _$AuthLoginPost200ResponseSerializer();
}

class _$AuthLoginPost200ResponseSerializer implements PrimitiveSerializer<AuthLoginPost200Response> {
  @override
  final Iterable<Type> types = const [AuthLoginPost200Response, _$AuthLoginPost200Response];

  @override
  final String wireName = r'AuthLoginPost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuthLoginPost200Response object, {
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
        specifiedType: const FullType(AuthLoginPost200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AuthLoginPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuthLoginPost200ResponseBuilder result,
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
            specifiedType: const FullType(AuthLoginPost200ResponseData),
          ) as AuthLoginPost200ResponseData;
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
  AuthLoginPost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuthLoginPost200ResponseBuilder();
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

