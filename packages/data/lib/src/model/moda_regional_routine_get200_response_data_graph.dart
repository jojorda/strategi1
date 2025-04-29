//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/moda_regional_routine_get200_response_data_graph_weekly_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'moda_regional_routine_get200_response_data_graph.g.dart';

/// ModaRegionalRoutineGet200ResponseDataGraph
///
/// Properties:
/// * [weekly] 
/// * [monthly] 
/// * [yearly] 
@BuiltValue()
abstract class ModaRegionalRoutineGet200ResponseDataGraph implements Built<ModaRegionalRoutineGet200ResponseDataGraph, ModaRegionalRoutineGet200ResponseDataGraphBuilder> {
  @BuiltValueField(wireName: r'weekly')
  BuiltList<ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner>? get weekly;

  @BuiltValueField(wireName: r'monthly')
  BuiltList<ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner>? get monthly;

  @BuiltValueField(wireName: r'yearly')
  BuiltList<ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner>? get yearly;

  ModaRegionalRoutineGet200ResponseDataGraph._();

  factory ModaRegionalRoutineGet200ResponseDataGraph([void updates(ModaRegionalRoutineGet200ResponseDataGraphBuilder b)]) = _$ModaRegionalRoutineGet200ResponseDataGraph;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModaRegionalRoutineGet200ResponseDataGraphBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModaRegionalRoutineGet200ResponseDataGraph> get serializer => _$ModaRegionalRoutineGet200ResponseDataGraphSerializer();
}

class _$ModaRegionalRoutineGet200ResponseDataGraphSerializer implements PrimitiveSerializer<ModaRegionalRoutineGet200ResponseDataGraph> {
  @override
  final Iterable<Type> types = const [ModaRegionalRoutineGet200ResponseDataGraph, _$ModaRegionalRoutineGet200ResponseDataGraph];

  @override
  final String wireName = r'ModaRegionalRoutineGet200ResponseDataGraph';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModaRegionalRoutineGet200ResponseDataGraph object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.weekly != null) {
      yield r'weekly';
      yield serializers.serialize(
        object.weekly,
        specifiedType: const FullType(BuiltList, [FullType(ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner)]),
      );
    }
    if (object.monthly != null) {
      yield r'monthly';
      yield serializers.serialize(
        object.monthly,
        specifiedType: const FullType(BuiltList, [FullType(ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner)]),
      );
    }
    if (object.yearly != null) {
      yield r'yearly';
      yield serializers.serialize(
        object.yearly,
        specifiedType: const FullType(BuiltList, [FullType(ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModaRegionalRoutineGet200ResponseDataGraph object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModaRegionalRoutineGet200ResponseDataGraphBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'weekly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner)]),
          ) as BuiltList<ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner>;
          result.weekly.replace(valueDes);
          break;
        case r'monthly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner)]),
          ) as BuiltList<ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner>;
          result.monthly.replace(valueDes);
          break;
        case r'yearly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner)]),
          ) as BuiltList<ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner>;
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
  ModaRegionalRoutineGet200ResponseDataGraph deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModaRegionalRoutineGet200ResponseDataGraphBuilder();
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

