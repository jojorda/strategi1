//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/incident_report_id_reject_post200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'incident_report_id_reject_post200_response.g.dart';

/// IncidentReportIdRejectPost200Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [message] 
@BuiltValue()
abstract class IncidentReportIdRejectPost200Response implements Built<IncidentReportIdRejectPost200Response, IncidentReportIdRejectPost200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  IncidentReportIdRejectPost200ResponseData? get data;

  @BuiltValueField(wireName: r'message')
  String? get message;

  IncidentReportIdRejectPost200Response._();

  factory IncidentReportIdRejectPost200Response([void updates(IncidentReportIdRejectPost200ResponseBuilder b)]) = _$IncidentReportIdRejectPost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IncidentReportIdRejectPost200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IncidentReportIdRejectPost200Response> get serializer => _$IncidentReportIdRejectPost200ResponseSerializer();
}

class _$IncidentReportIdRejectPost200ResponseSerializer implements PrimitiveSerializer<IncidentReportIdRejectPost200Response> {
  @override
  final Iterable<Type> types = const [IncidentReportIdRejectPost200Response, _$IncidentReportIdRejectPost200Response];

  @override
  final String wireName = r'IncidentReportIdRejectPost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IncidentReportIdRejectPost200Response object, {
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
        specifiedType: const FullType(IncidentReportIdRejectPost200ResponseData),
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
    IncidentReportIdRejectPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IncidentReportIdRejectPost200ResponseBuilder result,
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
            specifiedType: const FullType(IncidentReportIdRejectPost200ResponseData),
          ) as IncidentReportIdRejectPost200ResponseData;
          result.data.replace(valueDes);
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
  IncidentReportIdRejectPost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IncidentReportIdRejectPost200ResponseBuilder();
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

