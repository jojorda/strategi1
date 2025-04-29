//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comparison_get400_response.g.dart';

/// ComparisonGet400Response
///
/// Properties:
/// * [status] 
/// * [message] 
@BuiltValue()
abstract class ComparisonGet400Response implements Built<ComparisonGet400Response, ComparisonGet400ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'message')
  String? get message;

  ComparisonGet400Response._();

  factory ComparisonGet400Response([void updates(ComparisonGet400ResponseBuilder b)]) = _$ComparisonGet400Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ComparisonGet400ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ComparisonGet400Response> get serializer => _$ComparisonGet400ResponseSerializer();
}

class _$ComparisonGet400ResponseSerializer implements PrimitiveSerializer<ComparisonGet400Response> {
  @override
  final Iterable<Type> types = const [ComparisonGet400Response, _$ComparisonGet400Response];

  @override
  final String wireName = r'ComparisonGet400Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ComparisonGet400Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ComparisonGet400Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ComparisonGet400ResponseBuilder result,
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
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ComparisonGet400Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComparisonGet400ResponseBuilder();
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

