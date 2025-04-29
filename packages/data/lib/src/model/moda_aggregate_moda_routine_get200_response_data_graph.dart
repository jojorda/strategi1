//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/moda_aggregate_moda_routine_get200_response_data_graph_monthly_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/moda_aggregate_moda_routine_get200_response_data_graph_weekly_value.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'moda_aggregate_moda_routine_get200_response_data_graph.g.dart';

/// ModaAggregateModaRoutineGet200ResponseDataGraph
///
/// Properties:
/// * [weekly] 
/// * [monthly] 
/// * [yearly] 
@BuiltValue()
abstract class ModaAggregateModaRoutineGet200ResponseDataGraph implements Built<ModaAggregateModaRoutineGet200ResponseDataGraph, ModaAggregateModaRoutineGet200ResponseDataGraphBuilder> {
  @BuiltValueField(wireName: r'weekly')
  BuiltMap<String, ModaAggregateModaRoutineGet200ResponseDataGraphWeeklyValue>? get weekly;

  @BuiltValueField(wireName: r'monthly')
  BuiltMap<String, ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue>? get monthly;

  @BuiltValueField(wireName: r'yearly')
  BuiltMap<String, ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue>? get yearly;

  ModaAggregateModaRoutineGet200ResponseDataGraph._();

  factory ModaAggregateModaRoutineGet200ResponseDataGraph([void updates(ModaAggregateModaRoutineGet200ResponseDataGraphBuilder b)]) = _$ModaAggregateModaRoutineGet200ResponseDataGraph;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModaAggregateModaRoutineGet200ResponseDataGraphBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModaAggregateModaRoutineGet200ResponseDataGraph> get serializer => _$ModaAggregateModaRoutineGet200ResponseDataGraphSerializer();
}

class _$ModaAggregateModaRoutineGet200ResponseDataGraphSerializer implements PrimitiveSerializer<ModaAggregateModaRoutineGet200ResponseDataGraph> {
  @override
  final Iterable<Type> types = const [ModaAggregateModaRoutineGet200ResponseDataGraph, _$ModaAggregateModaRoutineGet200ResponseDataGraph];

  @override
  final String wireName = r'ModaAggregateModaRoutineGet200ResponseDataGraph';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModaAggregateModaRoutineGet200ResponseDataGraph object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.weekly != null) {
      yield r'weekly';
      yield serializers.serialize(
        object.weekly,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ModaAggregateModaRoutineGet200ResponseDataGraphWeeklyValue)]),
      );
    }
    if (object.monthly != null) {
      yield r'monthly';
      yield serializers.serialize(
        object.monthly,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue)]),
      );
    }
    if (object.yearly != null) {
      yield r'yearly';
      yield serializers.serialize(
        object.yearly,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModaAggregateModaRoutineGet200ResponseDataGraph object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModaAggregateModaRoutineGet200ResponseDataGraphBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'weekly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ModaAggregateModaRoutineGet200ResponseDataGraphWeeklyValue)]),
          ) as BuiltMap<String, ModaAggregateModaRoutineGet200ResponseDataGraphWeeklyValue>;
          result.weekly.replace(valueDes);
          break;
        case r'monthly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue)]),
          ) as BuiltMap<String, ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue>;
          result.monthly.replace(valueDes);
          break;
        case r'yearly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue)]),
          ) as BuiltMap<String, ModaAggregateModaRoutineGet200ResponseDataGraphMonthlyValue>;
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
  ModaAggregateModaRoutineGet200ResponseDataGraph deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModaAggregateModaRoutineGet200ResponseDataGraphBuilder();
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

