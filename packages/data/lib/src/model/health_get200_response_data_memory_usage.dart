//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'health_get200_response_data_memory_usage.g.dart';

/// HealthGet200ResponseDataMemoryUsage
///
/// Properties:
/// * [rss] 
/// * [heapTotal] 
/// * [heapUsed] 
/// * [external_] 
/// * [arrayBuffers] 
@BuiltValue()
abstract class HealthGet200ResponseDataMemoryUsage implements Built<HealthGet200ResponseDataMemoryUsage, HealthGet200ResponseDataMemoryUsageBuilder> {
  @BuiltValueField(wireName: r'rss')
  num? get rss;

  @BuiltValueField(wireName: r'heapTotal')
  num? get heapTotal;

  @BuiltValueField(wireName: r'heapUsed')
  num? get heapUsed;

  @BuiltValueField(wireName: r'external')
  num? get external_;

  @BuiltValueField(wireName: r'arrayBuffers')
  num? get arrayBuffers;

  HealthGet200ResponseDataMemoryUsage._();

  factory HealthGet200ResponseDataMemoryUsage([void updates(HealthGet200ResponseDataMemoryUsageBuilder b)]) = _$HealthGet200ResponseDataMemoryUsage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(HealthGet200ResponseDataMemoryUsageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<HealthGet200ResponseDataMemoryUsage> get serializer => _$HealthGet200ResponseDataMemoryUsageSerializer();
}

class _$HealthGet200ResponseDataMemoryUsageSerializer implements PrimitiveSerializer<HealthGet200ResponseDataMemoryUsage> {
  @override
  final Iterable<Type> types = const [HealthGet200ResponseDataMemoryUsage, _$HealthGet200ResponseDataMemoryUsage];

  @override
  final String wireName = r'HealthGet200ResponseDataMemoryUsage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    HealthGet200ResponseDataMemoryUsage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.rss != null) {
      yield r'rss';
      yield serializers.serialize(
        object.rss,
        specifiedType: const FullType(num),
      );
    }
    if (object.heapTotal != null) {
      yield r'heapTotal';
      yield serializers.serialize(
        object.heapTotal,
        specifiedType: const FullType(num),
      );
    }
    if (object.heapUsed != null) {
      yield r'heapUsed';
      yield serializers.serialize(
        object.heapUsed,
        specifiedType: const FullType(num),
      );
    }
    if (object.external_ != null) {
      yield r'external';
      yield serializers.serialize(
        object.external_,
        specifiedType: const FullType(num),
      );
    }
    if (object.arrayBuffers != null) {
      yield r'arrayBuffers';
      yield serializers.serialize(
        object.arrayBuffers,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    HealthGet200ResponseDataMemoryUsage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required HealthGet200ResponseDataMemoryUsageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rss':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.rss = valueDes;
          break;
        case r'heapTotal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.heapTotal = valueDes;
          break;
        case r'heapUsed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.heapUsed = valueDes;
          break;
        case r'external':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.external_ = valueDes;
          break;
        case r'arrayBuffers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.arrayBuffers = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  HealthGet200ResponseDataMemoryUsage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = HealthGet200ResponseDataMemoryUsageBuilder();
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

