//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'moda_aggregate_moda_routine_get200_response_data_chart_flight_passengers.g.dart';

/// ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers
///
/// Properties:
/// * [domestic] 
/// * [outbound] 
/// * [inbound] 
@BuiltValue()
abstract class ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers implements Built<ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers, ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder> {
  @BuiltValueField(wireName: r'domestic')
  int? get domestic;

  @BuiltValueField(wireName: r'outbound')
  int? get outbound;

  @BuiltValueField(wireName: r'inbound')
  int? get inbound;

  ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers._();

  factory ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers([void updates(ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder b)]) = _$ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers> get serializer => _$ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersSerializer();
}

class _$ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersSerializer implements PrimitiveSerializer<ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers> {
  @override
  final Iterable<Type> types = const [ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers, _$ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers];

  @override
  final String wireName = r'ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.domestic != null) {
      yield r'domestic';
      yield serializers.serialize(
        object.domestic,
        specifiedType: const FullType(int),
      );
    }
    if (object.outbound != null) {
      yield r'outbound';
      yield serializers.serialize(
        object.outbound,
        specifiedType: const FullType(int),
      );
    }
    if (object.inbound != null) {
      yield r'inbound';
      yield serializers.serialize(
        object.inbound,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'domestic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.domestic = valueDes;
          break;
        case r'outbound':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.outbound = valueDes;
          break;
        case r'inbound':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.inbound = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengers deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModaAggregateModaRoutineGet200ResponseDataChartFlightPassengersBuilder();
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

