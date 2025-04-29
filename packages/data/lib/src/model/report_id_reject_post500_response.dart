//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_id_reject_post500_response.g.dart';

/// ReportIdRejectPost500Response
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [statusCode] 
@BuiltValue()
abstract class ReportIdRejectPost500Response implements Built<ReportIdRejectPost500Response, ReportIdRejectPost500ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'statusCode')
  num? get statusCode;

  ReportIdRejectPost500Response._();

  factory ReportIdRejectPost500Response([void updates(ReportIdRejectPost500ResponseBuilder b)]) = _$ReportIdRejectPost500Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportIdRejectPost500ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportIdRejectPost500Response> get serializer => _$ReportIdRejectPost500ResponseSerializer();
}

class _$ReportIdRejectPost500ResponseSerializer implements PrimitiveSerializer<ReportIdRejectPost500Response> {
  @override
  final Iterable<Type> types = const [ReportIdRejectPost500Response, _$ReportIdRejectPost500Response];

  @override
  final String wireName = r'ReportIdRejectPost500Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportIdRejectPost500Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
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
    if (object.statusCode != null) {
      yield r'statusCode';
      yield serializers.serialize(
        object.statusCode,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportIdRejectPost500Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReportIdRejectPost500ResponseBuilder result,
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
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'statusCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.statusCode = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReportIdRejectPost500Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportIdRejectPost500ResponseBuilder();
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

