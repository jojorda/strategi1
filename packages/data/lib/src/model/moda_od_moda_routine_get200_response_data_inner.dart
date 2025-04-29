//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'moda_od_moda_routine_get200_response_data_inner.g.dart';

/// ModaOdModaRoutineGet200ResponseDataInner
///
/// Properties:
/// * [idOrigin] 
/// * [origin] 
/// * [originCity] 
/// * [originType] 
/// * [idDestination] 
/// * [destination] 
/// * [destinationCity] 
/// * [destinationType] 
/// * [departure] 
/// * [arrival] 
/// * [vehicleDeparture] 
/// * [vehicleArrival] 
@BuiltValue()
abstract class ModaOdModaRoutineGet200ResponseDataInner implements Built<ModaOdModaRoutineGet200ResponseDataInner, ModaOdModaRoutineGet200ResponseDataInnerBuilder> {
  @BuiltValueField(wireName: r'idOrigin')
  String? get idOrigin;

  @BuiltValueField(wireName: r'origin')
  String? get origin;

  @BuiltValueField(wireName: r'originCity')
  String? get originCity;

  @BuiltValueField(wireName: r'originType')
  String? get originType;

  @BuiltValueField(wireName: r'idDestination')
  String? get idDestination;

  @BuiltValueField(wireName: r'destination')
  String? get destination;

  @BuiltValueField(wireName: r'destinationCity')
  String? get destinationCity;

  @BuiltValueField(wireName: r'destinationType')
  String? get destinationType;

  @BuiltValueField(wireName: r'departure')
  int? get departure;

  @BuiltValueField(wireName: r'arrival')
  int? get arrival;

  @BuiltValueField(wireName: r'vehicleDeparture')
  int? get vehicleDeparture;

  @BuiltValueField(wireName: r'vehicleArrival')
  int? get vehicleArrival;

  ModaOdModaRoutineGet200ResponseDataInner._();

  factory ModaOdModaRoutineGet200ResponseDataInner([void updates(ModaOdModaRoutineGet200ResponseDataInnerBuilder b)]) = _$ModaOdModaRoutineGet200ResponseDataInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModaOdModaRoutineGet200ResponseDataInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModaOdModaRoutineGet200ResponseDataInner> get serializer => _$ModaOdModaRoutineGet200ResponseDataInnerSerializer();
}

class _$ModaOdModaRoutineGet200ResponseDataInnerSerializer implements PrimitiveSerializer<ModaOdModaRoutineGet200ResponseDataInner> {
  @override
  final Iterable<Type> types = const [ModaOdModaRoutineGet200ResponseDataInner, _$ModaOdModaRoutineGet200ResponseDataInner];

  @override
  final String wireName = r'ModaOdModaRoutineGet200ResponseDataInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModaOdModaRoutineGet200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.idOrigin != null) {
      yield r'idOrigin';
      yield serializers.serialize(
        object.idOrigin,
        specifiedType: const FullType(String),
      );
    }
    if (object.origin != null) {
      yield r'origin';
      yield serializers.serialize(
        object.origin,
        specifiedType: const FullType(String),
      );
    }
    if (object.originCity != null) {
      yield r'originCity';
      yield serializers.serialize(
        object.originCity,
        specifiedType: const FullType(String),
      );
    }
    if (object.originType != null) {
      yield r'originType';
      yield serializers.serialize(
        object.originType,
        specifiedType: const FullType(String),
      );
    }
    if (object.idDestination != null) {
      yield r'idDestination';
      yield serializers.serialize(
        object.idDestination,
        specifiedType: const FullType(String),
      );
    }
    if (object.destination != null) {
      yield r'destination';
      yield serializers.serialize(
        object.destination,
        specifiedType: const FullType(String),
      );
    }
    if (object.destinationCity != null) {
      yield r'destinationCity';
      yield serializers.serialize(
        object.destinationCity,
        specifiedType: const FullType(String),
      );
    }
    if (object.destinationType != null) {
      yield r'destinationType';
      yield serializers.serialize(
        object.destinationType,
        specifiedType: const FullType(String),
      );
    }
    if (object.departure != null) {
      yield r'departure';
      yield serializers.serialize(
        object.departure,
        specifiedType: const FullType(int),
      );
    }
    if (object.arrival != null) {
      yield r'arrival';
      yield serializers.serialize(
        object.arrival,
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
    if (object.vehicleArrival != null) {
      yield r'vehicleArrival';
      yield serializers.serialize(
        object.vehicleArrival,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModaOdModaRoutineGet200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModaOdModaRoutineGet200ResponseDataInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'idOrigin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.idOrigin = valueDes;
          break;
        case r'origin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.origin = valueDes;
          break;
        case r'originCity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.originCity = valueDes;
          break;
        case r'originType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.originType = valueDes;
          break;
        case r'idDestination':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.idDestination = valueDes;
          break;
        case r'destination':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.destination = valueDes;
          break;
        case r'destinationCity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.destinationCity = valueDes;
          break;
        case r'destinationType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.destinationType = valueDes;
          break;
        case r'departure':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.departure = valueDes;
          break;
        case r'arrival':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.arrival = valueDes;
          break;
        case r'vehicleDeparture':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.vehicleDeparture = valueDes;
          break;
        case r'vehicleArrival':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.vehicleArrival = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModaOdModaRoutineGet200ResponseDataInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModaOdModaRoutineGet200ResponseDataInnerBuilder();
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

