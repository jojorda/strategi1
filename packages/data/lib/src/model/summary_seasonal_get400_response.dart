//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'summary_seasonal_get400_response.g.dart';

/// SummarySeasonalGet400Response
///
/// Properties:
/// * [status] 
/// * [message] 
@BuiltValue()
abstract class SummarySeasonalGet400Response implements Built<SummarySeasonalGet400Response, SummarySeasonalGet400ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'message')
  String? get message;

  SummarySeasonalGet400Response._();

  factory SummarySeasonalGet400Response([void updates(SummarySeasonalGet400ResponseBuilder b)]) = _$SummarySeasonalGet400Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SummarySeasonalGet400ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SummarySeasonalGet400Response> get serializer => _$SummarySeasonalGet400ResponseSerializer();
}

class _$SummarySeasonalGet400ResponseSerializer implements PrimitiveSerializer<SummarySeasonalGet400Response> {
  @override
  final Iterable<Type> types = const [SummarySeasonalGet400Response, _$SummarySeasonalGet400Response];

  @override
  final String wireName = r'SummarySeasonalGet400Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SummarySeasonalGet400Response object, {
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
    SummarySeasonalGet400Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SummarySeasonalGet400ResponseBuilder result,
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
  SummarySeasonalGet400Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SummarySeasonalGet400ResponseBuilder();
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

