//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/summary_seasonal_get200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'summary_seasonal_get200_response.g.dart';

/// SummarySeasonalGet200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class SummarySeasonalGet200Response implements Built<SummarySeasonalGet200Response, SummarySeasonalGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'data')
  SummarySeasonalGet200ResponseData? get data;

  SummarySeasonalGet200Response._();

  factory SummarySeasonalGet200Response([void updates(SummarySeasonalGet200ResponseBuilder b)]) = _$SummarySeasonalGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SummarySeasonalGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SummarySeasonalGet200Response> get serializer => _$SummarySeasonalGet200ResponseSerializer();
}

class _$SummarySeasonalGet200ResponseSerializer implements PrimitiveSerializer<SummarySeasonalGet200Response> {
  @override
  final Iterable<Type> types = const [SummarySeasonalGet200Response, _$SummarySeasonalGet200Response];

  @override
  final String wireName = r'SummarySeasonalGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SummarySeasonalGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(SummarySeasonalGet200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SummarySeasonalGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SummarySeasonalGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.status = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SummarySeasonalGet200ResponseData),
          ) as SummarySeasonalGet200ResponseData;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SummarySeasonalGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SummarySeasonalGet200ResponseBuilder();
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

