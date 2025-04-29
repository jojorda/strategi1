//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'summary_routine_get200_response_data_graph_inner.g.dart';

/// SummaryRoutineGet200ResponseDataGraphInner
///
/// Properties:
/// * [name] 
/// * [count] 
@BuiltValue()
abstract class SummaryRoutineGet200ResponseDataGraphInner implements Built<SummaryRoutineGet200ResponseDataGraphInner, SummaryRoutineGet200ResponseDataGraphInnerBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'count')
  num? get count;

  SummaryRoutineGet200ResponseDataGraphInner._();

  factory SummaryRoutineGet200ResponseDataGraphInner([void updates(SummaryRoutineGet200ResponseDataGraphInnerBuilder b)]) = _$SummaryRoutineGet200ResponseDataGraphInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SummaryRoutineGet200ResponseDataGraphInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SummaryRoutineGet200ResponseDataGraphInner> get serializer => _$SummaryRoutineGet200ResponseDataGraphInnerSerializer();
}

class _$SummaryRoutineGet200ResponseDataGraphInnerSerializer implements PrimitiveSerializer<SummaryRoutineGet200ResponseDataGraphInner> {
  @override
  final Iterable<Type> types = const [SummaryRoutineGet200ResponseDataGraphInner, _$SummaryRoutineGet200ResponseDataGraphInner];

  @override
  final String wireName = r'SummaryRoutineGet200ResponseDataGraphInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SummaryRoutineGet200ResponseDataGraphInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.count != null) {
      yield r'count';
      yield serializers.serialize(
        object.count,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SummaryRoutineGet200ResponseDataGraphInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SummaryRoutineGet200ResponseDataGraphInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.count = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SummaryRoutineGet200ResponseDataGraphInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SummaryRoutineGet200ResponseDataGraphInnerBuilder();
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

