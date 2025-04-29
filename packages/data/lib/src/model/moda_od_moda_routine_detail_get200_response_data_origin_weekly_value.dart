//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'moda_od_moda_routine_detail_get200_response_data_origin_weekly_value.g.dart';

/// ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue
///
/// Properties:
/// * [arrival] 
/// * [departure] 
/// * [vehicleArrival] 
/// * [vehicleDeparture] 
@BuiltValue()
abstract class ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue implements Built<ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue, ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValueBuilder> {
  @BuiltValueField(wireName: r'arrival')
  int? get arrival;

  @BuiltValueField(wireName: r'departure')
  int? get departure;

  @BuiltValueField(wireName: r'vehicleArrival')
  int? get vehicleArrival;

  @BuiltValueField(wireName: r'vehicleDeparture')
  int? get vehicleDeparture;

  ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue._();

  factory ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue([void updates(ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValueBuilder b)]) = _$ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValueBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue> get serializer => _$ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValueSerializer();
}

class _$ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValueSerializer implements PrimitiveSerializer<ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue> {
  @override
  final Iterable<Type> types = const [ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue, _$ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue];

  @override
  final String wireName = r'ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue object, {
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
    ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValueBuilder result,
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
  ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValueBuilder();
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

