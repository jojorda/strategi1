//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/summary_seasonal_get200_response_data_flight_aircraft.dart';
import 'package:strategi_mobile_api/src/model/summary_seasonal_get200_response_data_flight_passengers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'summary_seasonal_get200_response_data_sailing.g.dart';

/// SummarySeasonalGet200ResponseDataSailing
///
/// Properties:
/// * [passengers] 
/// * [ship] 
@BuiltValue()
abstract class SummarySeasonalGet200ResponseDataSailing implements Built<SummarySeasonalGet200ResponseDataSailing, SummarySeasonalGet200ResponseDataSailingBuilder> {
  @BuiltValueField(wireName: r'passengers')
  SummarySeasonalGet200ResponseDataFlightPassengers? get passengers;

  @BuiltValueField(wireName: r'ship')
  SummarySeasonalGet200ResponseDataFlightAircraft? get ship;

  SummarySeasonalGet200ResponseDataSailing._();

  factory SummarySeasonalGet200ResponseDataSailing([void updates(SummarySeasonalGet200ResponseDataSailingBuilder b)]) = _$SummarySeasonalGet200ResponseDataSailing;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SummarySeasonalGet200ResponseDataSailingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SummarySeasonalGet200ResponseDataSailing> get serializer => _$SummarySeasonalGet200ResponseDataSailingSerializer();
}

class _$SummarySeasonalGet200ResponseDataSailingSerializer implements PrimitiveSerializer<SummarySeasonalGet200ResponseDataSailing> {
  @override
  final Iterable<Type> types = const [SummarySeasonalGet200ResponseDataSailing, _$SummarySeasonalGet200ResponseDataSailing];

  @override
  final String wireName = r'SummarySeasonalGet200ResponseDataSailing';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SummarySeasonalGet200ResponseDataSailing object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.passengers != null) {
      yield r'passengers';
      yield serializers.serialize(
        object.passengers,
        specifiedType: const FullType(SummarySeasonalGet200ResponseDataFlightPassengers),
      );
    }
    if (object.ship != null) {
      yield r'ship';
      yield serializers.serialize(
        object.ship,
        specifiedType: const FullType(SummarySeasonalGet200ResponseDataFlightAircraft),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SummarySeasonalGet200ResponseDataSailing object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SummarySeasonalGet200ResponseDataSailingBuilder result,
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
        case r'ship':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SummarySeasonalGet200ResponseDataFlightAircraft),
          ) as SummarySeasonalGet200ResponseDataFlightAircraft;
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
  SummarySeasonalGet200ResponseDataSailing deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SummarySeasonalGet200ResponseDataSailingBuilder();
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

