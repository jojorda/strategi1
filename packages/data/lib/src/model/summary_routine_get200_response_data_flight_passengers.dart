//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'summary_routine_get200_response_data_flight_passengers.g.dart';

/// SummaryRoutineGet200ResponseDataFlightPassengers
///
/// Properties:
/// * [domestic] 
/// * [outbound] 
/// * [inbound] 
@BuiltValue()
abstract class SummaryRoutineGet200ResponseDataFlightPassengers implements Built<SummaryRoutineGet200ResponseDataFlightPassengers, SummaryRoutineGet200ResponseDataFlightPassengersBuilder> {
  @BuiltValueField(wireName: r'domestic')
  num? get domestic;

  @BuiltValueField(wireName: r'outbound')
  num? get outbound;

  @BuiltValueField(wireName: r'inbound')
  num? get inbound;

  SummaryRoutineGet200ResponseDataFlightPassengers._();

  factory SummaryRoutineGet200ResponseDataFlightPassengers([void updates(SummaryRoutineGet200ResponseDataFlightPassengersBuilder b)]) = _$SummaryRoutineGet200ResponseDataFlightPassengers;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SummaryRoutineGet200ResponseDataFlightPassengersBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SummaryRoutineGet200ResponseDataFlightPassengers> get serializer => _$SummaryRoutineGet200ResponseDataFlightPassengersSerializer();
}

class _$SummaryRoutineGet200ResponseDataFlightPassengersSerializer implements PrimitiveSerializer<SummaryRoutineGet200ResponseDataFlightPassengers> {
  @override
  final Iterable<Type> types = const [SummaryRoutineGet200ResponseDataFlightPassengers, _$SummaryRoutineGet200ResponseDataFlightPassengers];

  @override
  final String wireName = r'SummaryRoutineGet200ResponseDataFlightPassengers';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SummaryRoutineGet200ResponseDataFlightPassengers object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.domestic != null) {
      yield r'domestic';
      yield serializers.serialize(
        object.domestic,
        specifiedType: const FullType(num),
      );
    }
    if (object.outbound != null) {
      yield r'outbound';
      yield serializers.serialize(
        object.outbound,
        specifiedType: const FullType(num),
      );
    }
    if (object.inbound != null) {
      yield r'inbound';
      yield serializers.serialize(
        object.inbound,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SummaryRoutineGet200ResponseDataFlightPassengers object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SummaryRoutineGet200ResponseDataFlightPassengersBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'domestic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.domestic = valueDes;
          break;
        case r'outbound':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.outbound = valueDes;
          break;
        case r'inbound':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
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
  SummaryRoutineGet200ResponseDataFlightPassengers deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SummaryRoutineGet200ResponseDataFlightPassengersBuilder();
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

