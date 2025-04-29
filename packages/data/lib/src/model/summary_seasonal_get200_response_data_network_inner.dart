//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'summary_seasonal_get200_response_data_network_inner.g.dart';

/// SummarySeasonalGet200ResponseDataNetworkInner
///
/// Properties:
/// * [type] 
/// * [name] 
/// * [count] 
/// * [point] 
@BuiltValue()
abstract class SummarySeasonalGet200ResponseDataNetworkInner implements Built<SummarySeasonalGet200ResponseDataNetworkInner, SummarySeasonalGet200ResponseDataNetworkInnerBuilder> {
  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'count')
  int? get count;

  @BuiltValueField(wireName: r'point')
  int? get point;

  SummarySeasonalGet200ResponseDataNetworkInner._();

  factory SummarySeasonalGet200ResponseDataNetworkInner([void updates(SummarySeasonalGet200ResponseDataNetworkInnerBuilder b)]) = _$SummarySeasonalGet200ResponseDataNetworkInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SummarySeasonalGet200ResponseDataNetworkInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SummarySeasonalGet200ResponseDataNetworkInner> get serializer => _$SummarySeasonalGet200ResponseDataNetworkInnerSerializer();
}

class _$SummarySeasonalGet200ResponseDataNetworkInnerSerializer implements PrimitiveSerializer<SummarySeasonalGet200ResponseDataNetworkInner> {
  @override
  final Iterable<Type> types = const [SummarySeasonalGet200ResponseDataNetworkInner, _$SummarySeasonalGet200ResponseDataNetworkInner];

  @override
  final String wireName = r'SummarySeasonalGet200ResponseDataNetworkInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SummarySeasonalGet200ResponseDataNetworkInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.count != null) {
      yield r'count';
      yield serializers.serialize(
        object.count,
        specifiedType: const FullType(int),
      );
    }
    if (object.point != null) {
      yield r'point';
      yield serializers.serialize(
        object.point,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SummarySeasonalGet200ResponseDataNetworkInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SummarySeasonalGet200ResponseDataNetworkInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        case r'point':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.point = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SummarySeasonalGet200ResponseDataNetworkInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SummarySeasonalGet200ResponseDataNetworkInnerBuilder();
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

