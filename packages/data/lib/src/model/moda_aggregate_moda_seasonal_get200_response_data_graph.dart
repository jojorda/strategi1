//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/moda_aggregate_moda_seasonal_get200_response_data_graph_seasonal_value.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'moda_aggregate_moda_seasonal_get200_response_data_graph.g.dart';

/// ModaAggregateModaSeasonalGet200ResponseDataGraph
///
/// Properties:
/// * [seasonal] 
@BuiltValue()
abstract class ModaAggregateModaSeasonalGet200ResponseDataGraph implements Built<ModaAggregateModaSeasonalGet200ResponseDataGraph, ModaAggregateModaSeasonalGet200ResponseDataGraphBuilder> {
  @BuiltValueField(wireName: r'seasonal')
  BuiltMap<String, ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>? get seasonal;

  ModaAggregateModaSeasonalGet200ResponseDataGraph._();

  factory ModaAggregateModaSeasonalGet200ResponseDataGraph([void updates(ModaAggregateModaSeasonalGet200ResponseDataGraphBuilder b)]) = _$ModaAggregateModaSeasonalGet200ResponseDataGraph;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModaAggregateModaSeasonalGet200ResponseDataGraphBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModaAggregateModaSeasonalGet200ResponseDataGraph> get serializer => _$ModaAggregateModaSeasonalGet200ResponseDataGraphSerializer();
}

class _$ModaAggregateModaSeasonalGet200ResponseDataGraphSerializer implements PrimitiveSerializer<ModaAggregateModaSeasonalGet200ResponseDataGraph> {
  @override
  final Iterable<Type> types = const [ModaAggregateModaSeasonalGet200ResponseDataGraph, _$ModaAggregateModaSeasonalGet200ResponseDataGraph];

  @override
  final String wireName = r'ModaAggregateModaSeasonalGet200ResponseDataGraph';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModaAggregateModaSeasonalGet200ResponseDataGraph object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.seasonal != null) {
      yield r'seasonal';
      yield serializers.serialize(
        object.seasonal,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModaAggregateModaSeasonalGet200ResponseDataGraph object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModaAggregateModaSeasonalGet200ResponseDataGraphBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'seasonal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue)]),
          ) as BuiltMap<String, ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>;
          result.seasonal.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModaAggregateModaSeasonalGet200ResponseDataGraph deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModaAggregateModaSeasonalGet200ResponseDataGraphBuilder();
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

