//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/summary_routine_get200_response_data_flight_passengers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'summary_routine_get200_response_data_flight.g.dart';

/// SummaryRoutineGet200ResponseDataFlight
///
/// Properties:
/// * [passengers] 
/// * [aircraft] 
@BuiltValue()
abstract class SummaryRoutineGet200ResponseDataFlight implements Built<SummaryRoutineGet200ResponseDataFlight, SummaryRoutineGet200ResponseDataFlightBuilder> {
  @BuiltValueField(wireName: r'passengers')
  SummaryRoutineGet200ResponseDataFlightPassengers? get passengers;

  @BuiltValueField(wireName: r'aircraft')
  SummaryRoutineGet200ResponseDataFlightPassengers? get aircraft;

  SummaryRoutineGet200ResponseDataFlight._();

  factory SummaryRoutineGet200ResponseDataFlight([void updates(SummaryRoutineGet200ResponseDataFlightBuilder b)]) = _$SummaryRoutineGet200ResponseDataFlight;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SummaryRoutineGet200ResponseDataFlightBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SummaryRoutineGet200ResponseDataFlight> get serializer => _$SummaryRoutineGet200ResponseDataFlightSerializer();
}

class _$SummaryRoutineGet200ResponseDataFlightSerializer implements PrimitiveSerializer<SummaryRoutineGet200ResponseDataFlight> {
  @override
  final Iterable<Type> types = const [SummaryRoutineGet200ResponseDataFlight, _$SummaryRoutineGet200ResponseDataFlight];

  @override
  final String wireName = r'SummaryRoutineGet200ResponseDataFlight';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SummaryRoutineGet200ResponseDataFlight object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.passengers != null) {
      yield r'passengers';
      yield serializers.serialize(
        object.passengers,
        specifiedType: const FullType(SummaryRoutineGet200ResponseDataFlightPassengers),
      );
    }
    if (object.aircraft != null) {
      yield r'aircraft';
      yield serializers.serialize(
        object.aircraft,
        specifiedType: const FullType(SummaryRoutineGet200ResponseDataFlightPassengers),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SummaryRoutineGet200ResponseDataFlight object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SummaryRoutineGet200ResponseDataFlightBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'passengers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SummaryRoutineGet200ResponseDataFlightPassengers),
          ) as SummaryRoutineGet200ResponseDataFlightPassengers;
          result.passengers.replace(valueDes);
          break;
        case r'aircraft':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SummaryRoutineGet200ResponseDataFlightPassengers),
          ) as SummaryRoutineGet200ResponseDataFlightPassengers;
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
  SummaryRoutineGet200ResponseDataFlight deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SummaryRoutineGet200ResponseDataFlightBuilder();
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

