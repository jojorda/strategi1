//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/moda_regional_routine_get200_response_data_graph.dart';
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/moda_regional_routine_get200_response_data_list_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'moda_regional_routine_get200_response_data.g.dart';

/// ModaRegionalRoutineGet200ResponseData
///
/// Properties:
/// * [graph] 
/// * [list] 
@BuiltValue()
abstract class ModaRegionalRoutineGet200ResponseData implements Built<ModaRegionalRoutineGet200ResponseData, ModaRegionalRoutineGet200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'graph')
  ModaRegionalRoutineGet200ResponseDataGraph? get graph;

  @BuiltValueField(wireName: r'list')
  BuiltList<ModaRegionalRoutineGet200ResponseDataListInner>? get list;

  ModaRegionalRoutineGet200ResponseData._();

  factory ModaRegionalRoutineGet200ResponseData([void updates(ModaRegionalRoutineGet200ResponseDataBuilder b)]) = _$ModaRegionalRoutineGet200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModaRegionalRoutineGet200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModaRegionalRoutineGet200ResponseData> get serializer => _$ModaRegionalRoutineGet200ResponseDataSerializer();
}

class _$ModaRegionalRoutineGet200ResponseDataSerializer implements PrimitiveSerializer<ModaRegionalRoutineGet200ResponseData> {
  @override
  final Iterable<Type> types = const [ModaRegionalRoutineGet200ResponseData, _$ModaRegionalRoutineGet200ResponseData];

  @override
  final String wireName = r'ModaRegionalRoutineGet200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModaRegionalRoutineGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.graph != null) {
      yield r'graph';
      yield serializers.serialize(
        object.graph,
        specifiedType: const FullType(ModaRegionalRoutineGet200ResponseDataGraph),
      );
    }
    if (object.list != null) {
      yield r'list';
      yield serializers.serialize(
        object.list,
        specifiedType: const FullType(BuiltList, [FullType(ModaRegionalRoutineGet200ResponseDataListInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModaRegionalRoutineGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModaRegionalRoutineGet200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'graph':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ModaRegionalRoutineGet200ResponseDataGraph),
          ) as ModaRegionalRoutineGet200ResponseDataGraph;
          result.graph.replace(valueDes);
          break;
        case r'list':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ModaRegionalRoutineGet200ResponseDataListInner)]),
          ) as BuiltList<ModaRegionalRoutineGet200ResponseDataListInner>;
          result.list.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModaRegionalRoutineGet200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModaRegionalRoutineGet200ResponseDataBuilder();
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

