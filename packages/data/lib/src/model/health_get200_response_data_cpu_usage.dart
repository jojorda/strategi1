//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'health_get200_response_data_cpu_usage.g.dart';

/// HealthGet200ResponseDataCpuUsage
///
/// Properties:
/// * [user] 
/// * [system] 
@BuiltValue()
abstract class HealthGet200ResponseDataCpuUsage implements Built<HealthGet200ResponseDataCpuUsage, HealthGet200ResponseDataCpuUsageBuilder> {
  @BuiltValueField(wireName: r'user')
  num? get user;

  @BuiltValueField(wireName: r'system')
  num? get system;

  HealthGet200ResponseDataCpuUsage._();

  factory HealthGet200ResponseDataCpuUsage([void updates(HealthGet200ResponseDataCpuUsageBuilder b)]) = _$HealthGet200ResponseDataCpuUsage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HealthGet200ResponseDataCpuUsageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HealthGet200ResponseDataCpuUsage> get serializer => _$HealthGet200ResponseDataCpuUsageSerializer();
}

class _$HealthGet200ResponseDataCpuUsageSerializer implements PrimitiveSerializer<HealthGet200ResponseDataCpuUsage> {
  @override
  final Iterable<Type> types = const [HealthGet200ResponseDataCpuUsage, _$HealthGet200ResponseDataCpuUsage];

  @override
  final String wireName = r'HealthGet200ResponseDataCpuUsage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HealthGet200ResponseDataCpuUsage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.user != null) {
      yield r'user';
      yield serializers.serialize(
        object.user,
        specifiedType: const FullType(num),
      );
    }
    if (object.system != null) {
      yield r'system';
      yield serializers.serialize(
        object.system,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HealthGet200ResponseDataCpuUsage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HealthGet200ResponseDataCpuUsageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.user = valueDes;
          break;
        case r'system':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.system = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HealthGet200ResponseDataCpuUsage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HealthGet200ResponseDataCpuUsageBuilder();
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

