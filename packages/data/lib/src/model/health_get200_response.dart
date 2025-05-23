//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/health_get200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'health_get200_response.g.dart';

/// HealthGet200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class HealthGet200Response implements Built<HealthGet200Response, HealthGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'data')
  HealthGet200ResponseData? get data;

  HealthGet200Response._();

  factory HealthGet200Response([void updates(HealthGet200ResponseBuilder b)]) = _$HealthGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HealthGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HealthGet200Response> get serializer => _$HealthGet200ResponseSerializer();
}

class _$HealthGet200ResponseSerializer implements PrimitiveSerializer<HealthGet200Response> {
  @override
  final Iterable<Type> types = const [HealthGet200Response, _$HealthGet200Response];

  @override
  final String wireName = r'HealthGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HealthGet200Response object, {
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
        specifiedType: const FullType(HealthGet200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HealthGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HealthGet200ResponseBuilder result,
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
            specifiedType: const FullType(HealthGet200ResponseData),
          ) as HealthGet200ResponseData;
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
  HealthGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HealthGet200ResponseBuilder();
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

