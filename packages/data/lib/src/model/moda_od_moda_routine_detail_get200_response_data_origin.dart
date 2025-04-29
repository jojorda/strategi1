//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/moda_od_moda_routine_detail_get200_response_data_origin_weekly_value.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'moda_od_moda_routine_detail_get200_response_data_origin.g.dart';

/// ModaOdModaRoutineDetailGet200ResponseDataOrigin
///
/// Properties:
/// * [weekly] 
/// * [monthly] 
/// * [yearly] 
@BuiltValue()
abstract class ModaOdModaRoutineDetailGet200ResponseDataOrigin implements Built<ModaOdModaRoutineDetailGet200ResponseDataOrigin, ModaOdModaRoutineDetailGet200ResponseDataOriginBuilder> {
  @BuiltValueField(wireName: r'weekly')
  BuiltMap<String, ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue>? get weekly;

  @BuiltValueField(wireName: r'monthly')
  BuiltMap<String, ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue>? get monthly;

  @BuiltValueField(wireName: r'yearly')
  BuiltMap<String, ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue>? get yearly;

  ModaOdModaRoutineDetailGet200ResponseDataOrigin._();

  factory ModaOdModaRoutineDetailGet200ResponseDataOrigin([void updates(ModaOdModaRoutineDetailGet200ResponseDataOriginBuilder b)]) = _$ModaOdModaRoutineDetailGet200ResponseDataOrigin;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModaOdModaRoutineDetailGet200ResponseDataOriginBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModaOdModaRoutineDetailGet200ResponseDataOrigin> get serializer => _$ModaOdModaRoutineDetailGet200ResponseDataOriginSerializer();
}

class _$ModaOdModaRoutineDetailGet200ResponseDataOriginSerializer implements PrimitiveSerializer<ModaOdModaRoutineDetailGet200ResponseDataOrigin> {
  @override
  final Iterable<Type> types = const [ModaOdModaRoutineDetailGet200ResponseDataOrigin, _$ModaOdModaRoutineDetailGet200ResponseDataOrigin];

  @override
  final String wireName = r'ModaOdModaRoutineDetailGet200ResponseDataOrigin';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModaOdModaRoutineDetailGet200ResponseDataOrigin object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.weekly != null) {
      yield r'weekly';
      yield serializers.serialize(
        object.weekly,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue)]),
      );
    }
    if (object.monthly != null) {
      yield r'monthly';
      yield serializers.serialize(
        object.monthly,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue)]),
      );
    }
    if (object.yearly != null) {
      yield r'yearly';
      yield serializers.serialize(
        object.yearly,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModaOdModaRoutineDetailGet200ResponseDataOrigin object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModaOdModaRoutineDetailGet200ResponseDataOriginBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'weekly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue)]),
          ) as BuiltMap<String, ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue>;
          result.weekly.replace(valueDes);
          break;
        case r'monthly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue)]),
          ) as BuiltMap<String, ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue>;
          result.monthly.replace(valueDes);
          break;
        case r'yearly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue)]),
          ) as BuiltMap<String, ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue>;
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
  ModaOdModaRoutineDetailGet200ResponseDataOrigin deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModaOdModaRoutineDetailGet200ResponseDataOriginBuilder();
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

