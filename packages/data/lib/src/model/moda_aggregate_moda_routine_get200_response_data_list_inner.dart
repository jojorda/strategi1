//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'moda_aggregate_moda_routine_get200_response_data_list_inner.g.dart';

/// ModaAggregateModaRoutineGet200ResponseDataListInner
///
/// Properties:
/// * [idLocation] 
/// * [name] 
/// * [city] 
/// * [type] 
/// * [departure] 
/// * [arrival] 
/// * [vehicleDeparture] 
/// * [vehicleArrival] 
/// * [longitude] 
/// * [latitude] 
/// * [coordinate] 
/// * [timezone] 
@BuiltValue()
abstract class ModaAggregateModaRoutineGet200ResponseDataListInner implements Built<ModaAggregateModaRoutineGet200ResponseDataListInner, ModaAggregateModaRoutineGet200ResponseDataListInnerBuilder> {
  @BuiltValueField(wireName: r'idLocation')
  int? get idLocation;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'city')
  String? get city;

  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'departure')
  int? get departure;

  @BuiltValueField(wireName: r'arrival')
  int? get arrival;

  @BuiltValueField(wireName: r'vehicleDeparture')
  int? get vehicleDeparture;

  @BuiltValueField(wireName: r'vehicleArrival')
  int? get vehicleArrival;

  @BuiltValueField(wireName: r'longitude')
  String? get longitude;

  @BuiltValueField(wireName: r'latitude')
  String? get latitude;

  @BuiltValueField(wireName: r'coordinate')
  String? get coordinate;

  @BuiltValueField(wireName: r'timezone')
  String? get timezone;

  ModaAggregateModaRoutineGet200ResponseDataListInner._();

  factory ModaAggregateModaRoutineGet200ResponseDataListInner([void updates(ModaAggregateModaRoutineGet200ResponseDataListInnerBuilder b)]) = _$ModaAggregateModaRoutineGet200ResponseDataListInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModaAggregateModaRoutineGet200ResponseDataListInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModaAggregateModaRoutineGet200ResponseDataListInner> get serializer => _$ModaAggregateModaRoutineGet200ResponseDataListInnerSerializer();
}

class _$ModaAggregateModaRoutineGet200ResponseDataListInnerSerializer implements PrimitiveSerializer<ModaAggregateModaRoutineGet200ResponseDataListInner> {
  @override
  final Iterable<Type> types = const [ModaAggregateModaRoutineGet200ResponseDataListInner, _$ModaAggregateModaRoutineGet200ResponseDataListInner];

  @override
  final String wireName = r'ModaAggregateModaRoutineGet200ResponseDataListInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModaAggregateModaRoutineGet200ResponseDataListInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.idLocation != null) {
      yield r'idLocation';
      yield serializers.serialize(
        object.idLocation,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.city != null) {
      yield r'city';
      yield serializers.serialize(
        object.city,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
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
    if (object.longitude != null) {
      yield r'longitude';
      yield serializers.serialize(
        object.longitude,
        specifiedType: const FullType(String),
      );
    }
    if (object.latitude != null) {
      yield r'latitude';
      yield serializers.serialize(
        object.latitude,
        specifiedType: const FullType(String),
      );
    }
    if (object.coordinate != null) {
      yield r'coordinate';
      yield serializers.serialize(
        object.coordinate,
        specifiedType: const FullType(String),
      );
    }
    if (object.timezone != null) {
      yield r'timezone';
      yield serializers.serialize(
        object.timezone,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModaAggregateModaRoutineGet200ResponseDataListInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModaAggregateModaRoutineGet200ResponseDataListInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'idLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.idLocation = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'city':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.city = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
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
        case r'longitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.longitude = valueDes;
          break;
        case r'latitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.latitude = valueDes;
          break;
        case r'coordinate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.coordinate = valueDes;
          break;
        case r'timezone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.timezone = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModaAggregateModaRoutineGet200ResponseDataListInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModaAggregateModaRoutineGet200ResponseDataListInnerBuilder();
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

