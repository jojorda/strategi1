//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/comparison_get200_response_data_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comparison_get200_response.g.dart';

/// ComparisonGet200Response
///
/// Properties:
/// * [success] 
/// * [data] 
@BuiltValue()
abstract class ComparisonGet200Response implements Built<ComparisonGet200Response, ComparisonGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  BuiltList<ComparisonGet200ResponseDataInner>? get data;

  ComparisonGet200Response._();

  factory ComparisonGet200Response([void updates(ComparisonGet200ResponseBuilder b)]) = _$ComparisonGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ComparisonGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ComparisonGet200Response> get serializer => _$ComparisonGet200ResponseSerializer();
}

class _$ComparisonGet200ResponseSerializer implements PrimitiveSerializer<ComparisonGet200Response> {
  @override
  final Iterable<Type> types = const [ComparisonGet200Response, _$ComparisonGet200Response];

  @override
  final String wireName = r'ComparisonGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ComparisonGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(ComparisonGet200ResponseDataInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ComparisonGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ComparisonGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ComparisonGet200ResponseDataInner)]),
          ) as BuiltList<ComparisonGet200ResponseDataInner>;
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
  ComparisonGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComparisonGet200ResponseBuilder();
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

