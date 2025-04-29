//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'summary_routine_get200_response_data_network_inner.g.dart';

/// SummaryRoutineGet200ResponseDataNetworkInner
///
/// Properties:
/// * [type] 
/// * [name] 
/// * [count] 
/// * [point] 
@BuiltValue()
abstract class SummaryRoutineGet200ResponseDataNetworkInner implements Built<SummaryRoutineGet200ResponseDataNetworkInner, SummaryRoutineGet200ResponseDataNetworkInnerBuilder> {
  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'count')
  num? get count;

  @BuiltValueField(wireName: r'point')
  num? get point;

  SummaryRoutineGet200ResponseDataNetworkInner._();

  factory SummaryRoutineGet200ResponseDataNetworkInner([void updates(SummaryRoutineGet200ResponseDataNetworkInnerBuilder b)]) = _$SummaryRoutineGet200ResponseDataNetworkInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SummaryRoutineGet200ResponseDataNetworkInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SummaryRoutineGet200ResponseDataNetworkInner> get serializer => _$SummaryRoutineGet200ResponseDataNetworkInnerSerializer();
}

class _$SummaryRoutineGet200ResponseDataNetworkInnerSerializer implements PrimitiveSerializer<SummaryRoutineGet200ResponseDataNetworkInner> {
  @override
  final Iterable<Type> types = const [SummaryRoutineGet200ResponseDataNetworkInner, _$SummaryRoutineGet200ResponseDataNetworkInner];

  @override
  final String wireName = r'SummaryRoutineGet200ResponseDataNetworkInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SummaryRoutineGet200ResponseDataNetworkInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
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
    if (object.point != null) {
      yield r'point';
      yield serializers.serialize(
        object.point,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SummaryRoutineGet200ResponseDataNetworkInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SummaryRoutineGet200ResponseDataNetworkInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
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
        case r'point':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.point = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SummaryRoutineGet200ResponseDataNetworkInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SummaryRoutineGet200ResponseDataNetworkInnerBuilder();
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

