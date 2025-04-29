//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'summary_routine_get200_response_data_vehicle_inner.g.dart';

/// SummaryRoutineGet200ResponseDataVehicleInner
///
/// Properties:
/// * [type] 
/// * [name] 
/// * [count] 
/// * [percent] 
@BuiltValue()
abstract class SummaryRoutineGet200ResponseDataVehicleInner implements Built<SummaryRoutineGet200ResponseDataVehicleInner, SummaryRoutineGet200ResponseDataVehicleInnerBuilder> {
  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'count')
  num? get count;

  @BuiltValueField(wireName: r'percent')
  num? get percent;

  SummaryRoutineGet200ResponseDataVehicleInner._();

  factory SummaryRoutineGet200ResponseDataVehicleInner([void updates(SummaryRoutineGet200ResponseDataVehicleInnerBuilder b)]) = _$SummaryRoutineGet200ResponseDataVehicleInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SummaryRoutineGet200ResponseDataVehicleInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SummaryRoutineGet200ResponseDataVehicleInner> get serializer => _$SummaryRoutineGet200ResponseDataVehicleInnerSerializer();
}

class _$SummaryRoutineGet200ResponseDataVehicleInnerSerializer implements PrimitiveSerializer<SummaryRoutineGet200ResponseDataVehicleInner> {
  @override
  final Iterable<Type> types = const [SummaryRoutineGet200ResponseDataVehicleInner, _$SummaryRoutineGet200ResponseDataVehicleInner];

  @override
  final String wireName = r'SummaryRoutineGet200ResponseDataVehicleInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SummaryRoutineGet200ResponseDataVehicleInner object, {
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
    if (object.percent != null) {
      yield r'percent';
      yield serializers.serialize(
        object.percent,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SummaryRoutineGet200ResponseDataVehicleInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SummaryRoutineGet200ResponseDataVehicleInnerBuilder result,
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
        case r'percent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.percent = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SummaryRoutineGet200ResponseDataVehicleInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SummaryRoutineGet200ResponseDataVehicleInnerBuilder();
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

