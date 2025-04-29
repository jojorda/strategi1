//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'summary_seasonal_get200_response_data_flight_passengers.g.dart';

/// SummarySeasonalGet200ResponseDataFlightPassengers
///
/// Properties:
/// * [domestic] 
/// * [outbound] 
/// * [inbound] 
@BuiltValue()
abstract class SummarySeasonalGet200ResponseDataFlightPassengers implements Built<SummarySeasonalGet200ResponseDataFlightPassengers, SummarySeasonalGet200ResponseDataFlightPassengersBuilder> {
  @BuiltValueField(wireName: r'domestic')
  int? get domestic;

  @BuiltValueField(wireName: r'outbound')
  int? get outbound;

  @BuiltValueField(wireName: r'inbound')
  int? get inbound;

  SummarySeasonalGet200ResponseDataFlightPassengers._();

  factory SummarySeasonalGet200ResponseDataFlightPassengers([void updates(SummarySeasonalGet200ResponseDataFlightPassengersBuilder b)]) = _$SummarySeasonalGet200ResponseDataFlightPassengers;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SummarySeasonalGet200ResponseDataFlightPassengersBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SummarySeasonalGet200ResponseDataFlightPassengers> get serializer => _$SummarySeasonalGet200ResponseDataFlightPassengersSerializer();
}

class _$SummarySeasonalGet200ResponseDataFlightPassengersSerializer implements PrimitiveSerializer<SummarySeasonalGet200ResponseDataFlightPassengers> {
  @override
  final Iterable<Type> types = const [SummarySeasonalGet200ResponseDataFlightPassengers, _$SummarySeasonalGet200ResponseDataFlightPassengers];

  @override
  final String wireName = r'SummarySeasonalGet200ResponseDataFlightPassengers';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SummarySeasonalGet200ResponseDataFlightPassengers object, {
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
    SummarySeasonalGet200ResponseDataFlightPassengers object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SummarySeasonalGet200ResponseDataFlightPassengersBuilder result,
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
  SummarySeasonalGet200ResponseDataFlightPassengers deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SummarySeasonalGet200ResponseDataFlightPassengersBuilder();
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

