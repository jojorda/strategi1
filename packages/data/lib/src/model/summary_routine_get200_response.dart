//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/summary_routine_get200_response_data.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'summary_routine_get200_response.g.dart';

/// SummaryRoutineGet200Response
///
/// Properties:
/// * [status] 
/// * [data] 
/// * [filter] 
@BuiltValue()
abstract class SummaryRoutineGet200Response implements Built<SummaryRoutineGet200Response, SummaryRoutineGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'data')
  SummaryRoutineGet200ResponseData? get data;

  @BuiltValueField(wireName: r'filter')
  BuiltMap<String, JsonObject?>? get filter;

  SummaryRoutineGet200Response._();

  factory SummaryRoutineGet200Response([void updates(SummaryRoutineGet200ResponseBuilder b)]) = _$SummaryRoutineGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SummaryRoutineGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SummaryRoutineGet200Response> get serializer => _$SummaryRoutineGet200ResponseSerializer();
}

class _$SummaryRoutineGet200ResponseSerializer implements PrimitiveSerializer<SummaryRoutineGet200Response> {
  @override
  final Iterable<Type> types = const [SummaryRoutineGet200Response, _$SummaryRoutineGet200Response];

  @override
  final String wireName = r'SummaryRoutineGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SummaryRoutineGet200Response object, {
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
        specifiedType: const FullType(SummaryRoutineGet200ResponseData),
      );
    }
    if (object.filter != null) {
      yield r'filter';
      yield serializers.serialize(
        object.filter,
        specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SummaryRoutineGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SummaryRoutineGet200ResponseBuilder result,
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
            specifiedType: const FullType(SummaryRoutineGet200ResponseData),
          ) as SummaryRoutineGet200ResponseData;
          result.data.replace(valueDes);
          break;
        case r'filter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.filter.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SummaryRoutineGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SummaryRoutineGet200ResponseBuilder();
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

