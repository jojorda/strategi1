//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/moda_aggregate_moda_routine_get200_response_data_chart_flight_passengers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'moda_aggregate_moda_routine_get200_response_data_chart_flight.g.dart';

/// ModaAggregateModaRoutineGet200ResponseDataChartFlight
///
/// Properties:
/// * [passengers] 
/// * [aircraft] 
@BuiltValue()
abstract class ModaAggregateModaRoutineGet200ResponseDataChartFlight implements Built<ModaAggregateModaRoutineGet200ResponseDataChartFlight, ModaAggregateModaRoutineGet200ResponseDataChartFlightBuilder> {
  @BuiltValueField(wireName: r'passengers')
  ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers? get passengers;

  @BuiltValueField(wireName: r'aircraft')
  ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers? get aircraft;

  ModaAggregateModaRoutineGet200ResponseDataChartFlight._();

  factory ModaAggregateModaRoutineGet200ResponseDataChartFlight([void updates(ModaAggregateModaRoutineGet200ResponseDataChartFlightBuilder b)]) = _$ModaAggregateModaRoutineGet200ResponseDataChartFlight;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModaAggregateModaRoutineGet200ResponseDataChartFlightBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModaAggregateModaRoutineGet200ResponseDataChartFlight> get serializer => _$ModaAggregateModaRoutineGet200ResponseDataChartFlightSerializer();
}

class _$ModaAggregateModaRoutineGet200ResponseDataChartFlightSerializer implements PrimitiveSerializer<ModaAggregateModaRoutineGet200ResponseDataChartFlight> {
  @override
  final Iterable<Type> types = const [ModaAggregateModaRoutineGet200ResponseDataChartFlight, _$ModaAggregateModaRoutineGet200ResponseDataChartFlight];

  @override
  final String wireName = r'ModaAggregateModaRoutineGet200ResponseDataChartFlight';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModaAggregateModaRoutineGet200ResponseDataChartFlight object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.passengers != null) {
      yield r'passengers';
      yield serializers.serialize(
        object.passengers,
        specifiedType: const FullType(ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers),
      );
    }
    if (object.aircraft != null) {
      yield r'aircraft';
      yield serializers.serialize(
        object.aircraft,
        specifiedType: const FullType(ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModaAggregateModaRoutineGet200ResponseDataChartFlight object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModaAggregateModaRoutineGet200ResponseDataChartFlightBuilder result,
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
        case r'aircraft':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers),
          ) as ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers;
          result.aircraft.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModaAggregateModaRoutineGet200ResponseDataChartFlight deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModaAggregateModaRoutineGet200ResponseDataChartFlightBuilder();
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

