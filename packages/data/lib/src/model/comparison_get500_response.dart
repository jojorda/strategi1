//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comparison_get500_response.g.dart';

/// ComparisonGet500Response
///
/// Properties:
/// * [error] 
@BuiltValue()
abstract class ComparisonGet500Response implements Built<ComparisonGet500Response, ComparisonGet500ResponseBuilder> {
  @BuiltValueField(wireName: r'error')
  String? get error;

  ComparisonGet500Response._();

  factory ComparisonGet500Response([void updates(ComparisonGet500ResponseBuilder b)]) = _$ComparisonGet500Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ComparisonGet500ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ComparisonGet500Response> get serializer => _$ComparisonGet500ResponseSerializer();
}

class _$ComparisonGet500ResponseSerializer implements PrimitiveSerializer<ComparisonGet500Response> {
  @override
  final Iterable<Type> types = const [ComparisonGet500Response, _$ComparisonGet500Response];

  @override
  final String wireName = r'ComparisonGet500Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ComparisonGet500Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ComparisonGet500Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ComparisonGet500ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.error = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ComparisonGet500Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComparisonGet500ResponseBuilder();
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

