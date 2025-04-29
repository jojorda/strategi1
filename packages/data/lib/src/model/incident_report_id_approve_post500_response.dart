//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'incident_report_id_approve_post500_response.g.dart';

/// IncidentReportIdApprovePost500Response
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [statusCode] 
@BuiltValue()
abstract class IncidentReportIdApprovePost500Response implements Built<IncidentReportIdApprovePost500Response, IncidentReportIdApprovePost500ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'statusCode')
  num? get statusCode;

  IncidentReportIdApprovePost500Response._();

  factory IncidentReportIdApprovePost500Response([void updates(IncidentReportIdApprovePost500ResponseBuilder b)]) = _$IncidentReportIdApprovePost500Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IncidentReportIdApprovePost500ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IncidentReportIdApprovePost500Response> get serializer => _$IncidentReportIdApprovePost500ResponseSerializer();
}

class _$IncidentReportIdApprovePost500ResponseSerializer implements PrimitiveSerializer<IncidentReportIdApprovePost500Response> {
  @override
  final Iterable<Type> types = const [IncidentReportIdApprovePost500Response, _$IncidentReportIdApprovePost500Response];

  @override
  final String wireName = r'IncidentReportIdApprovePost500Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IncidentReportIdApprovePost500Response object, {
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
    IncidentReportIdApprovePost500Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IncidentReportIdApprovePost500ResponseBuilder result,
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
  IncidentReportIdApprovePost500Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IncidentReportIdApprovePost500ResponseBuilder();
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

