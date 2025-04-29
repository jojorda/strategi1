//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'summary_seasonal_get200_response_data_graph_inner.g.dart';

/// SummarySeasonalGet200ResponseDataGraphInner
///
/// Properties:
/// * [name] 
/// * [count] 
@BuiltValue()
abstract class SummarySeasonalGet200ResponseDataGraphInner implements Built<SummarySeasonalGet200ResponseDataGraphInner, SummarySeasonalGet200ResponseDataGraphInnerBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'count')
  int? get count;

  SummarySeasonalGet200ResponseDataGraphInner._();

  factory SummarySeasonalGet200ResponseDataGraphInner([void updates(SummarySeasonalGet200ResponseDataGraphInnerBuilder b)]) = _$SummarySeasonalGet200ResponseDataGraphInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SummarySeasonalGet200ResponseDataGraphInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SummarySeasonalGet200ResponseDataGraphInner> get serializer => _$SummarySeasonalGet200ResponseDataGraphInnerSerializer();
}

class _$SummarySeasonalGet200ResponseDataGraphInnerSerializer implements PrimitiveSerializer<SummarySeasonalGet200ResponseDataGraphInner> {
  @override
  final Iterable<Type> types = const [SummarySeasonalGet200ResponseDataGraphInner, _$SummarySeasonalGet200ResponseDataGraphInner];

  @override
  final String wireName = r'SummarySeasonalGet200ResponseDataGraphInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SummarySeasonalGet200ResponseDataGraphInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    SummarySeasonalGet200ResponseDataGraphInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SummarySeasonalGet200ResponseDataGraphInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SummarySeasonalGet200ResponseDataGraphInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SummarySeasonalGet200ResponseDataGraphInnerBuilder();
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

