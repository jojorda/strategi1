//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'summary_seasonal_get200_response_data_vehicle_inner.g.dart';

/// SummarySeasonalGet200ResponseDataVehicleInner
///
/// Properties:
/// * [type] 
/// * [name] 
/// * [count] 
/// * [percent] 
@BuiltValue()
abstract class SummarySeasonalGet200ResponseDataVehicleInner implements Built<SummarySeasonalGet200ResponseDataVehicleInner, SummarySeasonalGet200ResponseDataVehicleInnerBuilder> {
  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'count')
  int? get count;

  @BuiltValueField(wireName: r'percent')
  double? get percent;

  SummarySeasonalGet200ResponseDataVehicleInner._();

  factory SummarySeasonalGet200ResponseDataVehicleInner([void updates(SummarySeasonalGet200ResponseDataVehicleInnerBuilder b)]) = _$SummarySeasonalGet200ResponseDataVehicleInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SummarySeasonalGet200ResponseDataVehicleInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SummarySeasonalGet200ResponseDataVehicleInner> get serializer => _$SummarySeasonalGet200ResponseDataVehicleInnerSerializer();
}

class _$SummarySeasonalGet200ResponseDataVehicleInnerSerializer implements PrimitiveSerializer<SummarySeasonalGet200ResponseDataVehicleInner> {
  @override
  final Iterable<Type> types = const [SummarySeasonalGet200ResponseDataVehicleInner, _$SummarySeasonalGet200ResponseDataVehicleInner];

  @override
  final String wireName = r'SummarySeasonalGet200ResponseDataVehicleInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SummarySeasonalGet200ResponseDataVehicleInner object, {
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
        specifiedType: const FullType(int),
      );
    }
    if (object.percent != null) {
      yield r'percent';
      yield serializers.serialize(
        object.percent,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SummarySeasonalGet200ResponseDataVehicleInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SummarySeasonalGet200ResponseDataVehicleInnerBuilder result,
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
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        case r'percent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
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
  SummarySeasonalGet200ResponseDataVehicleInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SummarySeasonalGet200ResponseDataVehicleInnerBuilder();
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

