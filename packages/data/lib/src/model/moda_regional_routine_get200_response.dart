//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/moda_regional_routine_get200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'moda_regional_routine_get200_response.g.dart';

/// ModaRegionalRoutineGet200Response
///
/// Properties:
/// * [status] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class ModaRegionalRoutineGet200Response implements Built<ModaRegionalRoutineGet200Response, ModaRegionalRoutineGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  ModaRegionalRoutineGet200ResponseData? get data;

  ModaRegionalRoutineGet200Response._();

  factory ModaRegionalRoutineGet200Response([void updates(ModaRegionalRoutineGet200ResponseBuilder b)]) = _$ModaRegionalRoutineGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModaRegionalRoutineGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModaRegionalRoutineGet200Response> get serializer => _$ModaRegionalRoutineGet200ResponseSerializer();
}

class _$ModaRegionalRoutineGet200ResponseSerializer implements PrimitiveSerializer<ModaRegionalRoutineGet200Response> {
  @override
  final Iterable<Type> types = const [ModaRegionalRoutineGet200Response, _$ModaRegionalRoutineGet200Response];

  @override
  final String wireName = r'ModaRegionalRoutineGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModaRegionalRoutineGet200Response object, {
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
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(ModaRegionalRoutineGet200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModaRegionalRoutineGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModaRegionalRoutineGet200ResponseBuilder result,
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
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ModaRegionalRoutineGet200ResponseData),
          ) as ModaRegionalRoutineGet200ResponseData;
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
  ModaRegionalRoutineGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModaRegionalRoutineGet200ResponseBuilder();
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

