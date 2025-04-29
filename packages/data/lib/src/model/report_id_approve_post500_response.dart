//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_id_approve_post500_response.g.dart';

/// ReportIdApprovePost500Response
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [statusCode] 
@BuiltValue()
abstract class ReportIdApprovePost500Response implements Built<ReportIdApprovePost500Response, ReportIdApprovePost500ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'statusCode')
  num? get statusCode;

  ReportIdApprovePost500Response._();

  factory ReportIdApprovePost500Response([void updates(ReportIdApprovePost500ResponseBuilder b)]) = _$ReportIdApprovePost500Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportIdApprovePost500ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportIdApprovePost500Response> get serializer => _$ReportIdApprovePost500ResponseSerializer();
}

class _$ReportIdApprovePost500ResponseSerializer implements PrimitiveSerializer<ReportIdApprovePost500Response> {
  @override
  final Iterable<Type> types = const [ReportIdApprovePost500Response, _$ReportIdApprovePost500Response];

  @override
  final String wireName = r'ReportIdApprovePost500Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportIdApprovePost500Response object, {
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
    ReportIdApprovePost500Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReportIdApprovePost500ResponseBuilder result,
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
  ReportIdApprovePost500Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportIdApprovePost500ResponseBuilder();
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

