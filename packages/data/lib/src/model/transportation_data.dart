//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/transportation_metrics.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transportation_data.g.dart';

/// TransportationData
///
/// Properties:
/// * [idLocation] 
/// * [location] 
/// * [moda] 
/// * [seasonal] 
/// * [weekly] 
/// * [monthly] 
/// * [yearly] 
@BuiltValue()
abstract class TransportationData implements Built<TransportationData, TransportationDataBuilder> {
  @BuiltValueField(wireName: r'idLocation')
  String? get idLocation;

  @BuiltValueField(wireName: r'location')
  String? get location;

  @BuiltValueField(wireName: r'moda')
  String? get moda;

  @BuiltValueField(wireName: r'seasonal')
  BuiltMap<String, TransportationMetrics>? get seasonal;

  @BuiltValueField(wireName: r'weekly')
  BuiltMap<String, TransportationMetrics>? get weekly;

  @BuiltValueField(wireName: r'monthly')
  BuiltMap<String, TransportationMetrics>? get monthly;

  @BuiltValueField(wireName: r'yearly')
  BuiltMap<String, TransportationMetrics>? get yearly;

  TransportationData._();

  factory TransportationData([void updates(TransportationDataBuilder b)]) = _$TransportationData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TransportationDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TransportationData> get serializer => _$TransportationDataSerializer();
}

class _$TransportationDataSerializer implements PrimitiveSerializer<TransportationData> {
  @override
  final Iterable<Type> types = const [TransportationData, _$TransportationData];

  @override
  final String wireName = r'TransportationData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TransportationData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.idLocation != null) {
      yield r'idLocation';
      yield serializers.serialize(
        object.idLocation,
        specifiedType: const FullType(String),
      );
    }
    if (object.location != null) {
      yield r'location';
      yield serializers.serialize(
        object.location,
        specifiedType: const FullType(String),
      );
    }
    if (object.moda != null) {
      yield r'moda';
      yield serializers.serialize(
        object.moda,
        specifiedType: const FullType(String),
      );
    }
    if (object.seasonal != null) {
      yield r'seasonal';
      yield serializers.serialize(
        object.seasonal,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(TransportationMetrics)]),
      );
    }
    if (object.weekly != null) {
      yield r'weekly';
      yield serializers.serialize(
        object.weekly,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(TransportationMetrics)]),
      );
    }
    if (object.monthly != null) {
      yield r'monthly';
      yield serializers.serialize(
        object.monthly,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(TransportationMetrics)]),
      );
    }
    if (object.yearly != null) {
      yield r'yearly';
      yield serializers.serialize(
        object.yearly,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(TransportationMetrics)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TransportationData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TransportationDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'idLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.idLocation = valueDes;
          break;
        case r'location':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.location = valueDes;
          break;
        case r'moda':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.moda = valueDes;
          break;
        case r'seasonal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(TransportationMetrics)]),
          ) as BuiltMap<String, TransportationMetrics>;
          result.seasonal.replace(valueDes);
          break;
        case r'weekly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(TransportationMetrics)]),
          ) as BuiltMap<String, TransportationMetrics>;
          result.weekly.replace(valueDes);
          break;
        case r'monthly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(TransportationMetrics)]),
          ) as BuiltMap<String, TransportationMetrics>;
          result.monthly.replace(valueDes);
          break;
        case r'yearly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(TransportationMetrics)]),
          ) as BuiltMap<String, TransportationMetrics>;
          result.yearly.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TransportationData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransportationDataBuilder();
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

