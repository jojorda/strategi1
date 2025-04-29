//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/moda_aggregate_moda_routine_get200_response_data_chart_flight_passengers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'moda_aggregate_moda_routine_get200_response_data_chart_sailing.g.dart';

/// ModaAggregateModaRoutineGet200ResponseDataChartSailing
///
/// Properties:
/// * [passengers] 
/// * [ship] 
@BuiltValue()
abstract class ModaAggregateModaRoutineGet200ResponseDataChartSailing implements Built<ModaAggregateModaRoutineGet200ResponseDataChartSailing, ModaAggregateModaRoutineGet200ResponseDataChartSailingBuilder> {
  @BuiltValueField(wireName: r'passengers')
  ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers? get passengers;

  @BuiltValueField(wireName: r'ship')
  ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers? get ship;

  ModaAggregateModaRoutineGet200ResponseDataChartSailing._();

  factory ModaAggregateModaRoutineGet200ResponseDataChartSailing([void updates(ModaAggregateModaRoutineGet200ResponseDataChartSailingBuilder b)]) = _$ModaAggregateModaRoutineGet200ResponseDataChartSailing;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModaAggregateModaRoutineGet200ResponseDataChartSailingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModaAggregateModaRoutineGet200ResponseDataChartSailing> get serializer => _$ModaAggregateModaRoutineGet200ResponseDataChartSailingSerializer();
}

class _$ModaAggregateModaRoutineGet200ResponseDataChartSailingSerializer implements PrimitiveSerializer<ModaAggregateModaRoutineGet200ResponseDataChartSailing> {
  @override
  final Iterable<Type> types = const [ModaAggregateModaRoutineGet200ResponseDataChartSailing, _$ModaAggregateModaRoutineGet200ResponseDataChartSailing];

  @override
  final String wireName = r'ModaAggregateModaRoutineGet200ResponseDataChartSailing';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModaAggregateModaRoutineGet200ResponseDataChartSailing object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.passengers != null) {
      yield r'passengers';
      yield serializers.serialize(
        object.passengers,
        specifiedType: const FullType(ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers),
      );
    }
    if (object.ship != null) {
      yield r'ship';
      yield serializers.serialize(
        object.ship,
        specifiedType: const FullType(ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModaAggregateModaRoutineGet200ResponseDataChartSailing object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModaAggregateModaRoutineGet200ResponseDataChartSailingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'passengers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers),
          ) as ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers;
          result.passengers.replace(valueDes);
          break;
        case r'ship':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers),
          ) as ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers;
          result.ship.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModaAggregateModaRoutineGet200ResponseDataChartSailing deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModaAggregateModaRoutineGet200ResponseDataChartSailingBuilder();
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

