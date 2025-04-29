//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'incident_report_id_delete200_response.g.dart';

/// IncidentReportIdDelete200Response
///
/// Properties:
/// * [message] 
@BuiltValue()
abstract class IncidentReportIdDelete200Response implements Built<IncidentReportIdDelete200Response, IncidentReportIdDelete200ResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String? get message;

  IncidentReportIdDelete200Response._();

  factory IncidentReportIdDelete200Response([void updates(IncidentReportIdDelete200ResponseBuilder b)]) = _$IncidentReportIdDelete200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IncidentReportIdDelete200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IncidentReportIdDelete200Response> get serializer => _$IncidentReportIdDelete200ResponseSerializer();
}

class _$IncidentReportIdDelete200ResponseSerializer implements PrimitiveSerializer<IncidentReportIdDelete200Response> {
  @override
  final Iterable<Type> types = const [IncidentReportIdDelete200Response, _$IncidentReportIdDelete200Response];

  @override
  final String wireName = r'IncidentReportIdDelete200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IncidentReportIdDelete200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    IncidentReportIdDelete200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IncidentReportIdDelete200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  IncidentReportIdDelete200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IncidentReportIdDelete200ResponseBuilder();
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

