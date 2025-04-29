//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/summary_seasonal_get200_response_data_flight_aircraft.dart';
import 'package:strategi_mobile_api/src/model/summary_seasonal_get200_response_data_flight_passengers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'summary_seasonal_get200_response_data_flight.g.dart';

/// SummarySeasonalGet200ResponseDataFlight
///
/// Properties:
/// * [passengers] 
/// * [aircraft] 
@BuiltValue()
abstract class SummarySeasonalGet200ResponseDataFlight implements Built<SummarySeasonalGet200ResponseDataFlight, SummarySeasonalGet200ResponseDataFlightBuilder> {
  @BuiltValueField(wireName: r'passengers')
  SummarySeasonalGet200ResponseDataFlightPassengers? get passengers;

  @BuiltValueField(wireName: r'aircraft')
  SummarySeasonalGet200ResponseDataFlightAircraft? get aircraft;

  SummarySeasonalGet200ResponseDataFlight._();

  factory SummarySeasonalGet200ResponseDataFlight([void updates(SummarySeasonalGet200ResponseDataFlightBuilder b)]) = _$SummarySeasonalGet200ResponseDataFlight;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SummarySeasonalGet200ResponseDataFlightBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SummarySeasonalGet200ResponseDataFlight> get serializer => _$SummarySeasonalGet200ResponseDataFlightSerializer();
}

class _$SummarySeasonalGet200ResponseDataFlightSerializer implements PrimitiveSerializer<SummarySeasonalGet200ResponseDataFlight> {
  @override
  final Iterable<Type> types = const [SummarySeasonalGet200ResponseDataFlight, _$SummarySeasonalGet200ResponseDataFlight];

  @override
  final String wireName = r'SummarySeasonalGet200ResponseDataFlight';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SummarySeasonalGet200ResponseDataFlight object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.passengers != null) {
      yield r'passengers';
      yield serializers.serialize(
        object.passengers,
        specifiedType: const FullType(SummarySeasonalGet200ResponseDataFlightPassengers),
      );
    }
    if (object.aircraft != null) {
      yield r'aircraft';
      yield serializers.serialize(
        object.aircraft,
        specifiedType: const FullType(SummarySeasonalGet200ResponseDataFlightAircraft),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SummarySeasonalGet200ResponseDataFlight object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SummarySeasonalGet200ResponseDataFlightBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'passengers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SummarySeasonalGet200ResponseDataFlightPassengers),
          ) as SummarySeasonalGet200ResponseDataFlightPassengers;
          result.passengers.replace(valueDes);
          break;
        case r'aircraft':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SummarySeasonalGet200ResponseDataFlightAircraft),
          ) as SummarySeasonalGet200ResponseDataFlightAircraft;
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
  SummarySeasonalGet200ResponseDataFlight deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SummarySeasonalGet200ResponseDataFlightBuilder();
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

