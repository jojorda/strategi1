//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/moda_od_moda_routine_detail_get200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'moda_od_moda_routine_detail_get200_response.g.dart';

/// ModaOdModaRoutineDetailGet200Response
///
/// Properties:
/// * [status] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class ModaOdModaRoutineDetailGet200Response implements Built<ModaOdModaRoutineDetailGet200Response, ModaOdModaRoutineDetailGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  ModaOdModaRoutineDetailGet200ResponseData? get data;

  ModaOdModaRoutineDetailGet200Response._();

  factory ModaOdModaRoutineDetailGet200Response([void updates(ModaOdModaRoutineDetailGet200ResponseBuilder b)]) = _$ModaOdModaRoutineDetailGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModaOdModaRoutineDetailGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModaOdModaRoutineDetailGet200Response> get serializer => _$ModaOdModaRoutineDetailGet200ResponseSerializer();
}

class _$ModaOdModaRoutineDetailGet200ResponseSerializer implements PrimitiveSerializer<ModaOdModaRoutineDetailGet200Response> {
  @override
  final Iterable<Type> types = const [ModaOdModaRoutineDetailGet200Response, _$ModaOdModaRoutineDetailGet200Response];

  @override
  final String wireName = r'ModaOdModaRoutineDetailGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModaOdModaRoutineDetailGet200Response object, {
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
        specifiedType: const FullType(ModaOdModaRoutineDetailGet200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModaOdModaRoutineDetailGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModaOdModaRoutineDetailGet200ResponseBuilder result,
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
            specifiedType: const FullType(ModaOdModaRoutineDetailGet200ResponseData),
          ) as ModaOdModaRoutineDetailGet200ResponseData;
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
  ModaOdModaRoutineDetailGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModaOdModaRoutineDetailGet200ResponseBuilder();
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

