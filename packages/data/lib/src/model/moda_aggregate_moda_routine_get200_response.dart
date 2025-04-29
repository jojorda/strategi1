//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/moda_aggregate_moda_routine_get200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'moda_aggregate_moda_routine_get200_response.g.dart';

/// ModaAggregateModaRoutineGet200Response
///
/// Properties:
/// * [status] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class ModaAggregateModaRoutineGet200Response implements Built<ModaAggregateModaRoutineGet200Response, ModaAggregateModaRoutineGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  ModaAggregateModaRoutineGet200ResponseData? get data;

  ModaAggregateModaRoutineGet200Response._();

  factory ModaAggregateModaRoutineGet200Response([void updates(ModaAggregateModaRoutineGet200ResponseBuilder b)]) = _$ModaAggregateModaRoutineGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModaAggregateModaRoutineGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModaAggregateModaRoutineGet200Response> get serializer => _$ModaAggregateModaRoutineGet200ResponseSerializer();
}

class _$ModaAggregateModaRoutineGet200ResponseSerializer implements PrimitiveSerializer<ModaAggregateModaRoutineGet200Response> {
  @override
  final Iterable<Type> types = const [ModaAggregateModaRoutineGet200Response, _$ModaAggregateModaRoutineGet200Response];

  @override
  final String wireName = r'ModaAggregateModaRoutineGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModaAggregateModaRoutineGet200Response object, {
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
        specifiedType: const FullType(ModaAggregateModaRoutineGet200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModaAggregateModaRoutineGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModaAggregateModaRoutineGet200ResponseBuilder result,
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
            specifiedType: const FullType(ModaAggregateModaRoutineGet200ResponseData),
          ) as ModaAggregateModaRoutineGet200ResponseData;
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
  ModaAggregateModaRoutineGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModaAggregateModaRoutineGet200ResponseBuilder();
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

