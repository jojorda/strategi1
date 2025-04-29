//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/moda_aggregate_moda_routine_get200_response_data_chart_sailing.dart';
import 'package:strategi_mobile_api/src/model/moda_aggregate_moda_routine_get200_response_data_graph.dart';
import 'package:strategi_mobile_api/src/model/moda_aggregate_moda_routine_get200_response_data_list_inner.dart';
import 'package:strategi_mobile_api/src/model/moda_aggregate_moda_routine_get200_response_data_chart_flight.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'moda_aggregate_moda_routine_get200_response_data.g.dart';

/// ModaAggregateModaRoutineGet200ResponseData
///
/// Properties:
/// * [graph] 
/// * [list] 
/// * [chartFlight] 
/// * [chartSailing] 
@BuiltValue()
abstract class ModaAggregateModaRoutineGet200ResponseData implements Built<ModaAggregateModaRoutineGet200ResponseData, ModaAggregateModaRoutineGet200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'graph')
  ModaAggregateModaRoutineGet200ResponseDataGraph? get graph;

  @BuiltValueField(wireName: r'list')
  BuiltList<ModaAggregateModaRoutineGet200ResponseDataListInner>? get list;

  @BuiltValueField(wireName: r'chartFlight')
  ModaAggregateModaRoutineGet200ResponseDataChartFlight? get chartFlight;

  @BuiltValueField(wireName: r'chartSailing')
  ModaAggregateModaRoutineGet200ResponseDataChartSailing? get chartSailing;

  ModaAggregateModaRoutineGet200ResponseData._();

  factory ModaAggregateModaRoutineGet200ResponseData([void updates(ModaAggregateModaRoutineGet200ResponseDataBuilder b)]) = _$ModaAggregateModaRoutineGet200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModaAggregateModaRoutineGet200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModaAggregateModaRoutineGet200ResponseData> get serializer => _$ModaAggregateModaRoutineGet200ResponseDataSerializer();
}

class _$ModaAggregateModaRoutineGet200ResponseDataSerializer implements PrimitiveSerializer<ModaAggregateModaRoutineGet200ResponseData> {
  @override
  final Iterable<Type> types = const [ModaAggregateModaRoutineGet200ResponseData, _$ModaAggregateModaRoutineGet200ResponseData];

  @override
  final String wireName = r'ModaAggregateModaRoutineGet200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModaAggregateModaRoutineGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.graph != null) {
      yield r'graph';
      yield serializers.serialize(
        object.graph,
        specifiedType: const FullType(ModaAggregateModaRoutineGet200ResponseDataGraph),
      );
    }
    if (object.list != null) {
      yield r'list';
      yield serializers.serialize(
        object.list,
        specifiedType: const FullType(BuiltList, [FullType(ModaAggregateModaRoutineGet200ResponseDataListInner)]),
      );
    }
    if (object.chartFlight != null) {
      yield r'chartFlight';
      yield serializers.serialize(
        object.chartFlight,
        specifiedType: const FullType(ModaAggregateModaRoutineGet200ResponseDataChartFlight),
      );
    }
    if (object.chartSailing != null) {
      yield r'chartSailing';
      yield serializers.serialize(
        object.chartSailing,
        specifiedType: const FullType(ModaAggregateModaRoutineGet200ResponseDataChartSailing),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModaAggregateModaRoutineGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModaAggregateModaRoutineGet200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'graph':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ModaAggregateModaRoutineGet200ResponseDataGraph),
          ) as ModaAggregateModaRoutineGet200ResponseDataGraph;
          result.graph.replace(valueDes);
          break;
        case r'list':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ModaAggregateModaRoutineGet200ResponseDataListInner)]),
          ) as BuiltList<ModaAggregateModaRoutineGet200ResponseDataListInner>;
          result.list.replace(valueDes);
          break;
        case r'chartFlight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ModaAggregateModaRoutineGet200ResponseDataChartFlight),
          ) as ModaAggregateModaRoutineGet200ResponseDataChartFlight;
          result.chartFlight.replace(valueDes);
          break;
        case r'chartSailing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ModaAggregateModaRoutineGet200ResponseDataChartSailing),
          ) as ModaAggregateModaRoutineGet200ResponseDataChartSailing;
          result.chartSailing.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModaAggregateModaRoutineGet200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModaAggregateModaRoutineGet200ResponseDataBuilder();
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

