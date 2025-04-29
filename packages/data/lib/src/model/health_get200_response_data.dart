//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/health_get200_response_data_cpu_usage.dart';
import 'package:strategi_mobile_api/src/model/health_get200_response_data_memory_usage.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'health_get200_response_data.g.dart';

/// HealthGet200ResponseData
///
/// Properties:
/// * [message] - A message indicating the health status
/// * [memoryUsage] 
/// * [cpuUsage] 
/// * [totalMemory] - Total memory available
/// * [freeMemory] - Free memory available
@BuiltValue()
abstract class HealthGet200ResponseData implements Built<HealthGet200ResponseData, HealthGet200ResponseDataBuilder> {
  /// A message indicating the health status
  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'memoryUsage')
  HealthGet200ResponseDataMemoryUsage? get memoryUsage;

  @BuiltValueField(wireName: r'cpuUsage')
  HealthGet200ResponseDataCpuUsage? get cpuUsage;

  /// Total memory available
  @BuiltValueField(wireName: r'totalMemory')
  String? get totalMemory;

  /// Free memory available
  @BuiltValueField(wireName: r'freeMemory')
  String? get freeMemory;

  HealthGet200ResponseData._();

  factory HealthGet200ResponseData([void updates(HealthGet200ResponseDataBuilder b)]) = _$HealthGet200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HealthGet200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HealthGet200ResponseData> get serializer => _$HealthGet200ResponseDataSerializer();
}

class _$HealthGet200ResponseDataSerializer implements PrimitiveSerializer<HealthGet200ResponseData> {
  @override
  final Iterable<Type> types = const [HealthGet200ResponseData, _$HealthGet200ResponseData];

  @override
  final String wireName = r'HealthGet200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HealthGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.memoryUsage != null) {
      yield r'memoryUsage';
      yield serializers.serialize(
        object.memoryUsage,
        specifiedType: const FullType(HealthGet200ResponseDataMemoryUsage),
      );
    }
    if (object.cpuUsage != null) {
      yield r'cpuUsage';
      yield serializers.serialize(
        object.cpuUsage,
        specifiedType: const FullType(HealthGet200ResponseDataCpuUsage),
      );
    }
    if (object.totalMemory != null) {
      yield r'totalMemory';
      yield serializers.serialize(
        object.totalMemory,
        specifiedType: const FullType(String),
      );
    }
    if (object.freeMemory != null) {
      yield r'freeMemory';
      yield serializers.serialize(
        object.freeMemory,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HealthGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HealthGet200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'memoryUsage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HealthGet200ResponseDataMemoryUsage),
          ) as HealthGet200ResponseDataMemoryUsage;
          result.memoryUsage.replace(valueDes);
          break;
        case r'cpuUsage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(HealthGet200ResponseDataCpuUsage),
          ) as HealthGet200ResponseDataCpuUsage;
          result.cpuUsage.replace(valueDes);
          break;
        case r'totalMemory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.totalMemory = valueDes;
          break;
        case r'freeMemory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.freeMemory = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HealthGet200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HealthGet200ResponseDataBuilder();
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

