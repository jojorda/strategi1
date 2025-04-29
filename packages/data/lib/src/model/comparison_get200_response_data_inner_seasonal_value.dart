//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comparison_get200_response_data_inner_seasonal_value.g.dart';

/// ComparisonGet200ResponseDataInnerSeasonalValue
///
/// Properties:
/// * [arrival] 
/// * [departure] 
/// * [vehicleArrival] 
/// * [vehicleDeparture] 
@BuiltValue()
abstract class ComparisonGet200ResponseDataInnerSeasonalValue implements Built<ComparisonGet200ResponseDataInnerSeasonalValue, ComparisonGet200ResponseDataInnerSeasonalValueBuilder> {
  @BuiltValueField(wireName: r'arrival')
  int? get arrival;

  @BuiltValueField(wireName: r'departure')
  int? get departure;

  @BuiltValueField(wireName: r'vehicleArrival')
  int? get vehicleArrival;

  @BuiltValueField(wireName: r'vehicleDeparture')
  int? get vehicleDeparture;

  ComparisonGet200ResponseDataInnerSeasonalValue._();

  factory ComparisonGet200ResponseDataInnerSeasonalValue([void updates(ComparisonGet200ResponseDataInnerSeasonalValueBuilder b)]) = _$ComparisonGet200ResponseDataInnerSeasonalValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ComparisonGet200ResponseDataInnerSeasonalValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ComparisonGet200ResponseDataInnerSeasonalValue> get serializer => _$ComparisonGet200ResponseDataInnerSeasonalValueSerializer();
}

class _$ComparisonGet200ResponseDataInnerSeasonalValueSerializer implements PrimitiveSerializer<ComparisonGet200ResponseDataInnerSeasonalValue> {
  @override
  final Iterable<Type> types = const [ComparisonGet200ResponseDataInnerSeasonalValue, _$ComparisonGet200ResponseDataInnerSeasonalValue];

  @override
  final String wireName = r'ComparisonGet200ResponseDataInnerSeasonalValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ComparisonGet200ResponseDataInnerSeasonalValue object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.arrival != null) {
      yield r'arrival';
      yield serializers.serialize(
        object.arrival,
        specifiedType: const FullType(int),
      );
    }
    if (object.departure != null) {
      yield r'departure';
      yield serializers.serialize(
        object.departure,
        specifiedType: const FullType(int),
      );
    }
    if (object.vehicleArrival != null) {
      yield r'vehicleArrival';
      yield serializers.serialize(
        object.vehicleArrival,
        specifiedType: const FullType(int),
      );
    }
    if (object.vehicleDeparture != null) {
      yield r'vehicleDeparture';
      yield serializers.serialize(
        object.vehicleDeparture,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ComparisonGet200ResponseDataInnerSeasonalValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ComparisonGet200ResponseDataInnerSeasonalValueBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'arrival':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.arrival = valueDes;
          break;
        case r'departure':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.departure = valueDes;
          break;
        case r'vehicleArrival':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.vehicleArrival = valueDes;
          break;
        case r'vehicleDeparture':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.vehicleDeparture = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ComparisonGet200ResponseDataInnerSeasonalValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComparisonGet200ResponseDataInnerSeasonalValueBuilder();
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

