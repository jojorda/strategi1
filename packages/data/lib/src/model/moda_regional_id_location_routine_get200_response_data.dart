//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/moda_aggregate_moda_seasonal_get200_response_data_graph_seasonal_value.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'moda_regional_id_location_routine_get200_response_data.g.dart';

/// ModaRegionalIdLocationRoutineGet200ResponseData
///
/// Properties:
/// * [weekly] 
/// * [monthly] 
/// * [yearly] 
@BuiltValue()
abstract class ModaRegionalIdLocationRoutineGet200ResponseData implements Built<ModaRegionalIdLocationRoutineGet200ResponseData, ModaRegionalIdLocationRoutineGet200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'weekly')
  BuiltMap<String, ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>? get weekly;

  @BuiltValueField(wireName: r'monthly')
  BuiltMap<String, ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>? get monthly;

  @BuiltValueField(wireName: r'yearly')
  BuiltMap<String, ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>? get yearly;

  ModaRegionalIdLocationRoutineGet200ResponseData._();

  factory ModaRegionalIdLocationRoutineGet200ResponseData([void updates(ModaRegionalIdLocationRoutineGet200ResponseDataBuilder b)]) = _$ModaRegionalIdLocationRoutineGet200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModaRegionalIdLocationRoutineGet200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModaRegionalIdLocationRoutineGet200ResponseData> get serializer => _$ModaRegionalIdLocationRoutineGet200ResponseDataSerializer();
}

class _$ModaRegionalIdLocationRoutineGet200ResponseDataSerializer implements PrimitiveSerializer<ModaRegionalIdLocationRoutineGet200ResponseData> {
  @override
  final Iterable<Type> types = const [ModaRegionalIdLocationRoutineGet200ResponseData, _$ModaRegionalIdLocationRoutineGet200ResponseData];

  @override
  final String wireName = r'ModaRegionalIdLocationRoutineGet200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModaRegionalIdLocationRoutineGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.weekly != null) {
      yield r'weekly';
      yield serializers.serialize(
        object.weekly,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue)]),
      );
    }
    if (object.monthly != null) {
      yield r'monthly';
      yield serializers.serialize(
        object.monthly,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue)]),
      );
    }
    if (object.yearly != null) {
      yield r'yearly';
      yield serializers.serialize(
        object.yearly,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModaRegionalIdLocationRoutineGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModaRegionalIdLocationRoutineGet200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'weekly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue)]),
          ) as BuiltMap<String, ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>;
          result.weekly.replace(valueDes);
          break;
        case r'monthly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue)]),
          ) as BuiltMap<String, ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>;
          result.monthly.replace(valueDes);
          break;
        case r'yearly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue)]),
          ) as BuiltMap<String, ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>;
          result.yearly.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModaRegionalIdLocationRoutineGet200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModaRegionalIdLocationRoutineGet200ResponseDataBuilder();
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

