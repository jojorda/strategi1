//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'moda_aggregate_moda_seasonal_get200_response_data_graph_seasonal_value.g.dart';

/// ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue
///
/// Properties:
/// * [arrival] 
/// * [departure] 
/// * [vehicleArrival] 
/// * [vehicleDeparture] 
@BuiltValue()
abstract class ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue implements Built<ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue, ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValueBuilder> {
  @BuiltValueField(wireName: r'arrival')
  int? get arrival;

  @BuiltValueField(wireName: r'departure')
  int? get departure;

  @BuiltValueField(wireName: r'vehicleArrival')
  int? get vehicleArrival;

  @BuiltValueField(wireName: r'vehicleDeparture')
  int? get vehicleDeparture;

  ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue._();

  factory ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue([void updates(ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValueBuilder b)]) = _$ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue> get serializer => _$ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValueSerializer();
}

class _$ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValueSerializer implements PrimitiveSerializer<ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue> {
  @override
  final Iterable<Type> types = const [ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue, _$ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue];

  @override
  final String wireName = r'ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue object, {
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
    ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValueBuilder result,
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
  ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValueBuilder();
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

