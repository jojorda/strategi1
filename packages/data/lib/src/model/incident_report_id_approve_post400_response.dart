//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'incident_report_id_approve_post400_response.g.dart';

/// IncidentReportIdApprovePost400Response
///
/// Properties:
/// * [success] 
/// * [message] 
/// * [statusCode] 
@BuiltValue()
abstract class IncidentReportIdApprovePost400Response implements Built<IncidentReportIdApprovePost400Response, IncidentReportIdApprovePost400ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  BuiltList<String>? get message;

  @BuiltValueField(wireName: r'statusCode')
  num? get statusCode;

  IncidentReportIdApprovePost400Response._();

  factory IncidentReportIdApprovePost400Response([void updates(IncidentReportIdApprovePost400ResponseBuilder b)]) = _$IncidentReportIdApprovePost400Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IncidentReportIdApprovePost400ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IncidentReportIdApprovePost400Response> get serializer => _$IncidentReportIdApprovePost400ResponseSerializer();
}

class _$IncidentReportIdApprovePost400ResponseSerializer implements PrimitiveSerializer<IncidentReportIdApprovePost400Response> {
  @override
  final Iterable<Type> types = const [IncidentReportIdApprovePost400Response, _$IncidentReportIdApprovePost400Response];

  @override
  final String wireName = r'IncidentReportIdApprovePost400Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IncidentReportIdApprovePost400Response object, {
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
        specifiedType: const FullType(BuiltList, [FullType(String)]),
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
    IncidentReportIdApprovePost400Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IncidentReportIdApprovePost400ResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.message.replace(valueDes);
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
  IncidentReportIdApprovePost400Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IncidentReportIdApprovePost400ResponseBuilder();
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

