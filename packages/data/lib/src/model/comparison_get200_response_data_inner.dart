//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/comparison_get200_response_data_inner_weekly_value.dart';
import 'package:strategi_mobile_api/src/model/comparison_get200_response_data_inner_seasonal_value.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comparison_get200_response_data_inner.g.dart';

/// ComparisonGet200ResponseDataInner
///
/// Properties:
/// * [moda] 
/// * [idLocation] 
/// * [location] 
/// * [arrivalSummary] 
/// * [departureSummary] 
/// * [vehicleArrivalSummary] 
/// * [vehicleDepartureSummary] 
/// * [weekly] 
/// * [monthly] 
/// * [yearly] 
/// * [seasonal] - Data for seasonal events (only present if `event` is provided)
@BuiltValue()
abstract class ComparisonGet200ResponseDataInner implements Built<ComparisonGet200ResponseDataInner, ComparisonGet200ResponseDataInnerBuilder> {
  @BuiltValueField(wireName: r'moda')
  String? get moda;

  @BuiltValueField(wireName: r'idLocation')
  int? get idLocation;

  @BuiltValueField(wireName: r'location')
  String? get location;

  @BuiltValueField(wireName: r'arrivalSummary')
  int? get arrivalSummary;

  @BuiltValueField(wireName: r'departureSummary')
  int? get departureSummary;

  @BuiltValueField(wireName: r'vehicleArrivalSummary')
  int? get vehicleArrivalSummary;

  @BuiltValueField(wireName: r'vehicleDepartureSummary')
  int? get vehicleDepartureSummary;

  @BuiltValueField(wireName: r'weekly')
  BuiltMap<String, ComparisonGet200ResponseDataInnerWeeklyValue>? get weekly;

  @BuiltValueField(wireName: r'monthly')
  BuiltMap<String, ComparisonGet200ResponseDataInnerWeeklyValue>? get monthly;

  @BuiltValueField(wireName: r'yearly')
  BuiltMap<String, ComparisonGet200ResponseDataInnerWeeklyValue>? get yearly;

  /// Data for seasonal events (only present if `event` is provided)
  @BuiltValueField(wireName: r'seasonal')
  BuiltMap<String, ComparisonGet200ResponseDataInnerSeasonalValue>? get seasonal;

  ComparisonGet200ResponseDataInner._();

  factory ComparisonGet200ResponseDataInner([void updates(ComparisonGet200ResponseDataInnerBuilder b)]) = _$ComparisonGet200ResponseDataInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ComparisonGet200ResponseDataInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ComparisonGet200ResponseDataInner> get serializer => _$ComparisonGet200ResponseDataInnerSerializer();
}

class _$ComparisonGet200ResponseDataInnerSerializer implements PrimitiveSerializer<ComparisonGet200ResponseDataInner> {
  @override
  final Iterable<Type> types = const [ComparisonGet200ResponseDataInner, _$ComparisonGet200ResponseDataInner];

  @override
  final String wireName = r'ComparisonGet200ResponseDataInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ComparisonGet200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.moda != null) {
      yield r'moda';
      yield serializers.serialize(
        object.moda,
        specifiedType: const FullType(String),
      );
    }
    if (object.idLocation != null) {
      yield r'idLocation';
      yield serializers.serialize(
        object.idLocation,
        specifiedType: const FullType(int),
      );
    }
    if (object.location != null) {
      yield r'location';
      yield serializers.serialize(
        object.location,
        specifiedType: const FullType(String),
      );
    }
    if (object.arrivalSummary != null) {
      yield r'arrivalSummary';
      yield serializers.serialize(
        object.arrivalSummary,
        specifiedType: const FullType(int),
      );
    }
    if (object.departureSummary != null) {
      yield r'departureSummary';
      yield serializers.serialize(
        object.departureSummary,
        specifiedType: const FullType(int),
      );
    }
    if (object.vehicleArrivalSummary != null) {
      yield r'vehicleArrivalSummary';
      yield serializers.serialize(
        object.vehicleArrivalSummary,
        specifiedType: const FullType(int),
      );
    }
    if (object.vehicleDepartureSummary != null) {
      yield r'vehicleDepartureSummary';
      yield serializers.serialize(
        object.vehicleDepartureSummary,
        specifiedType: const FullType(int),
      );
    }
    if (object.weekly != null) {
      yield r'weekly';
      yield serializers.serialize(
        object.weekly,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ComparisonGet200ResponseDataInnerWeeklyValue)]),
      );
    }
    if (object.monthly != null) {
      yield r'monthly';
      yield serializers.serialize(
        object.monthly,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ComparisonGet200ResponseDataInnerWeeklyValue)]),
      );
    }
    if (object.yearly != null) {
      yield r'yearly';
      yield serializers.serialize(
        object.yearly,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ComparisonGet200ResponseDataInnerWeeklyValue)]),
      );
    }
    if (object.seasonal != null) {
      yield r'seasonal';
      yield serializers.serialize(
        object.seasonal,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ComparisonGet200ResponseDataInnerSeasonalValue)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ComparisonGet200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ComparisonGet200ResponseDataInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'moda':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.moda = valueDes;
          break;
        case r'idLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.idLocation = valueDes;
          break;
        case r'location':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.location = valueDes;
          break;
        case r'arrivalSummary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.arrivalSummary = valueDes;
          break;
        case r'departureSummary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.departureSummary = valueDes;
          break;
        case r'vehicleArrivalSummary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.vehicleArrivalSummary = valueDes;
          break;
        case r'vehicleDepartureSummary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.vehicleDepartureSummary = valueDes;
          break;
        case r'weekly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ComparisonGet200ResponseDataInnerWeeklyValue)]),
          ) as BuiltMap<String, ComparisonGet200ResponseDataInnerWeeklyValue>;
          result.weekly.replace(valueDes);
          break;
        case r'monthly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ComparisonGet200ResponseDataInnerWeeklyValue)]),
          ) as BuiltMap<String, ComparisonGet200ResponseDataInnerWeeklyValue>;
          result.monthly.replace(valueDes);
          break;
        case r'yearly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ComparisonGet200ResponseDataInnerWeeklyValue)]),
          ) as BuiltMap<String, ComparisonGet200ResponseDataInnerWeeklyValue>;
          result.yearly.replace(valueDes);
          break;
        case r'seasonal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ComparisonGet200ResponseDataInnerSeasonalValue)]),
          ) as BuiltMap<String, ComparisonGet200ResponseDataInnerSeasonalValue>;
          result.seasonal.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ComparisonGet200ResponseDataInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComparisonGet200ResponseDataInnerBuilder();
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

