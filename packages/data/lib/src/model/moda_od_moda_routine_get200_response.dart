//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/moda_od_moda_routine_get200_response_data_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'moda_od_moda_routine_get200_response.g.dart';

/// ModaOdModaRoutineGet200Response
///
/// Properties:
/// * [status] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class ModaOdModaRoutineGet200Response implements Built<ModaOdModaRoutineGet200Response, ModaOdModaRoutineGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  BuiltList<ModaOdModaRoutineGet200ResponseDataInner>? get data;

  ModaOdModaRoutineGet200Response._();

  factory ModaOdModaRoutineGet200Response([void updates(ModaOdModaRoutineGet200ResponseBuilder b)]) = _$ModaOdModaRoutineGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModaOdModaRoutineGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModaOdModaRoutineGet200Response> get serializer => _$ModaOdModaRoutineGet200ResponseSerializer();
}

class _$ModaOdModaRoutineGet200ResponseSerializer implements PrimitiveSerializer<ModaOdModaRoutineGet200Response> {
  @override
  final Iterable<Type> types = const [ModaOdModaRoutineGet200Response, _$ModaOdModaRoutineGet200Response];

  @override
  final String wireName = r'ModaOdModaRoutineGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModaOdModaRoutineGet200Response object, {
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
        specifiedType: const FullType(BuiltList, [FullType(ModaOdModaRoutineGet200ResponseDataInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModaOdModaRoutineGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModaOdModaRoutineGet200ResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(ModaOdModaRoutineGet200ResponseDataInner)]),
          ) as BuiltList<ModaOdModaRoutineGet200ResponseDataInner>;
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
  ModaOdModaRoutineGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModaOdModaRoutineGet200ResponseBuilder();
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

