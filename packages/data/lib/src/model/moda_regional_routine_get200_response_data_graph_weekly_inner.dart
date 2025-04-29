//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'moda_regional_routine_get200_response_data_graph_weekly_inner.g.dart';

/// ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner
///
/// Properties:
/// * [date] 
/// * [value] 
@BuiltValue()
abstract class ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner implements Built<ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner, ModaRegionalRoutineGet200ResponseDataGraphWeeklyInnerBuilder> {
  @BuiltValueField(wireName: r'date')
  Date? get date;

  @BuiltValueField(wireName: r'value')
  num? get value;

  ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner._();

  factory ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner([void updates(ModaRegionalRoutineGet200ResponseDataGraphWeeklyInnerBuilder b)]) = _$ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModaRegionalRoutineGet200ResponseDataGraphWeeklyInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner> get serializer => _$ModaRegionalRoutineGet200ResponseDataGraphWeeklyInnerSerializer();
}

class _$ModaRegionalRoutineGet200ResponseDataGraphWeeklyInnerSerializer implements PrimitiveSerializer<ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner> {
  @override
  final Iterable<Type> types = const [ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner, _$ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner];

  @override
  final String wireName = r'ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(Date),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModaRegionalRoutineGet200ResponseDataGraphWeeklyInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModaRegionalRoutineGet200ResponseDataGraphWeeklyInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModaRegionalRoutineGet200ResponseDataGraphWeeklyInnerBuilder();
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

