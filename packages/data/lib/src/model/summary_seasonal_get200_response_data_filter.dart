//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'summary_seasonal_get200_response_data_filter.g.dart';

/// SummarySeasonalGet200ResponseDataFilter
///
/// Properties:
/// * [event] 
/// * [provinsi] 
/// * [moda] 
@BuiltValue()
abstract class SummarySeasonalGet200ResponseDataFilter implements Built<SummarySeasonalGet200ResponseDataFilter, SummarySeasonalGet200ResponseDataFilterBuilder> {
  @BuiltValueField(wireName: r'event')
  String? get event;

  @BuiltValueField(wireName: r'provinsi')
  String? get provinsi;

  @BuiltValueField(wireName: r'moda')
  String? get moda;

  SummarySeasonalGet200ResponseDataFilter._();

  factory SummarySeasonalGet200ResponseDataFilter([void updates(SummarySeasonalGet200ResponseDataFilterBuilder b)]) = _$SummarySeasonalGet200ResponseDataFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SummarySeasonalGet200ResponseDataFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SummarySeasonalGet200ResponseDataFilter> get serializer => _$SummarySeasonalGet200ResponseDataFilterSerializer();
}

class _$SummarySeasonalGet200ResponseDataFilterSerializer implements PrimitiveSerializer<SummarySeasonalGet200ResponseDataFilter> {
  @override
  final Iterable<Type> types = const [SummarySeasonalGet200ResponseDataFilter, _$SummarySeasonalGet200ResponseDataFilter];

  @override
  final String wireName = r'SummarySeasonalGet200ResponseDataFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SummarySeasonalGet200ResponseDataFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.event != null) {
      yield r'event';
      yield serializers.serialize(
        object.event,
        specifiedType: const FullType(String),
      );
    }
    if (object.provinsi != null) {
      yield r'provinsi';
      yield serializers.serialize(
        object.provinsi,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    SummarySeasonalGet200ResponseDataFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SummarySeasonalGet200ResponseDataFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.event = valueDes;
          break;
        case r'provinsi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.provinsi = valueDes;
          break;
        case r'moda':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.moda = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SummarySeasonalGet200ResponseDataFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SummarySeasonalGet200ResponseDataFilterBuilder();
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

