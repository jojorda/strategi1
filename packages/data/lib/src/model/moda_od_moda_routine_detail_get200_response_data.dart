//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/moda_od_moda_routine_detail_get200_response_data_origin.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'moda_od_moda_routine_detail_get200_response_data.g.dart';

/// ModaOdModaRoutineDetailGet200ResponseData
///
/// Properties:
/// * [origin] 
/// * [destination] 
@BuiltValue()
abstract class ModaOdModaRoutineDetailGet200ResponseData implements Built<ModaOdModaRoutineDetailGet200ResponseData, ModaOdModaRoutineDetailGet200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'origin')
  ModaOdModaRoutineDetailGet200ResponseDataOrigin? get origin;

  @BuiltValueField(wireName: r'destination')
  ModaOdModaRoutineDetailGet200ResponseDataOrigin? get destination;

  ModaOdModaRoutineDetailGet200ResponseData._();

  factory ModaOdModaRoutineDetailGet200ResponseData([void updates(ModaOdModaRoutineDetailGet200ResponseDataBuilder b)]) = _$ModaOdModaRoutineDetailGet200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModaOdModaRoutineDetailGet200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModaOdModaRoutineDetailGet200ResponseData> get serializer => _$ModaOdModaRoutineDetailGet200ResponseDataSerializer();
}

class _$ModaOdModaRoutineDetailGet200ResponseDataSerializer implements PrimitiveSerializer<ModaOdModaRoutineDetailGet200ResponseData> {
  @override
  final Iterable<Type> types = const [ModaOdModaRoutineDetailGet200ResponseData, _$ModaOdModaRoutineDetailGet200ResponseData];

  @override
  final String wireName = r'ModaOdModaRoutineDetailGet200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModaOdModaRoutineDetailGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.origin != null) {
      yield r'origin';
      yield serializers.serialize(
        object.origin,
        specifiedType: const FullType(ModaOdModaRoutineDetailGet200ResponseDataOrigin),
      );
    }
    if (object.destination != null) {
      yield r'destination';
      yield serializers.serialize(
        object.destination,
        specifiedType: const FullType(ModaOdModaRoutineDetailGet200ResponseDataOrigin),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModaOdModaRoutineDetailGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModaOdModaRoutineDetailGet200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'origin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ModaOdModaRoutineDetailGet200ResponseDataOrigin),
          ) as ModaOdModaRoutineDetailGet200ResponseDataOrigin;
          result.origin.replace(valueDes);
          break;
        case r'destination':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ModaOdModaRoutineDetailGet200ResponseDataOrigin),
          ) as ModaOdModaRoutineDetailGet200ResponseDataOrigin;
          result.destination.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModaOdModaRoutineDetailGet200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModaOdModaRoutineDetailGet200ResponseDataBuilder();
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

