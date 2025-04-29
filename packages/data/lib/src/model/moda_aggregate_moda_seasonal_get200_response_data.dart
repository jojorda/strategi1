//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/moda_aggregate_moda_routine_get200_response_data_chart_sailing.dart';
import 'package:strategi_mobile_api/src/model/moda_aggregate_moda_seasonal_get200_response_data_list_inner.dart';
import 'package:strategi_mobile_api/src/model/moda_aggregate_moda_routine_get200_response_data_chart_flight.dart';
import 'package:strategi_mobile_api/src/model/moda_aggregate_moda_seasonal_get200_response_data_graph.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'moda_aggregate_moda_seasonal_get200_response_data.g.dart';

/// ModaAggregateModaSeasonalGet200ResponseData
///
/// Properties:
/// * [graph] 
/// * [list] 
/// * [chartFlight] 
/// * [chartSailing] 
@BuiltValue()
abstract class ModaAggregateModaSeasonalGet200ResponseData implements Built<ModaAggregateModaSeasonalGet200ResponseData, ModaAggregateModaSeasonalGet200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'graph')
  ModaAggregateModaSeasonalGet200ResponseDataGraph? get graph;

  @BuiltValueField(wireName: r'list')
  BuiltList<ModaAggregateModaSeasonalGet200ResponseDataListInner>? get list;

  @BuiltValueField(wireName: r'chartFlight')
  ModaAggregateModaRoutineGet200ResponseDataChartFlight? get chartFlight;

  @BuiltValueField(wireName: r'chartSailing')
  ModaAggregateModaRoutineGet200ResponseDataChartSailing? get chartSailing;

  ModaAggregateModaSeasonalGet200ResponseData._();

  factory ModaAggregateModaSeasonalGet200ResponseData([void updates(ModaAggregateModaSeasonalGet200ResponseDataBuilder b)]) = _$ModaAggregateModaSeasonalGet200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModaAggregateModaSeasonalGet200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModaAggregateModaSeasonalGet200ResponseData> get serializer => _$ModaAggregateModaSeasonalGet200ResponseDataSerializer();
}

class _$ModaAggregateModaSeasonalGet200ResponseDataSerializer implements PrimitiveSerializer<ModaAggregateModaSeasonalGet200ResponseData> {
  @override
  final Iterable<Type> types = const [ModaAggregateModaSeasonalGet200ResponseData, _$ModaAggregateModaSeasonalGet200ResponseData];

  @override
  final String wireName = r'ModaAggregateModaSeasonalGet200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModaAggregateModaSeasonalGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.graph != null) {
      yield r'graph';
      yield serializers.serialize(
        object.graph,
        specifiedType: const FullType(ModaAggregateModaSeasonalGet200ResponseDataGraph),
      );
    }
    if (object.list != null) {
      yield r'list';
      yield serializers.serialize(
        object.list,
        specifiedType: const FullType(BuiltList, [FullType(ModaAggregateModaSeasonalGet200ResponseDataListInner)]),
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
    ModaAggregateModaSeasonalGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModaAggregateModaSeasonalGet200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'graph':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ModaAggregateModaSeasonalGet200ResponseDataGraph),
          ) as ModaAggregateModaSeasonalGet200ResponseDataGraph;
          result.graph.replace(valueDes);
          break;
        case r'list':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ModaAggregateModaSeasonalGet200ResponseDataListInner)]),
          ) as BuiltList<ModaAggregateModaSeasonalGet200ResponseDataListInner>;
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
  ModaAggregateModaSeasonalGet200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModaAggregateModaSeasonalGet200ResponseDataBuilder();
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

