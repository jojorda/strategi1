//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/incident_report_id_put200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'incident_report_id_put200_response.g.dart';

/// IncidentReportIdPut200Response
///
/// Properties:
/// * [success] 
/// * [data] 
@BuiltValue()
abstract class IncidentReportIdPut200Response implements Built<IncidentReportIdPut200Response, IncidentReportIdPut200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  IncidentReportIdPut200ResponseData? get data;

  IncidentReportIdPut200Response._();

  factory IncidentReportIdPut200Response([void updates(IncidentReportIdPut200ResponseBuilder b)]) = _$IncidentReportIdPut200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IncidentReportIdPut200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IncidentReportIdPut200Response> get serializer => _$IncidentReportIdPut200ResponseSerializer();
}

class _$IncidentReportIdPut200ResponseSerializer implements PrimitiveSerializer<IncidentReportIdPut200Response> {
  @override
  final Iterable<Type> types = const [IncidentReportIdPut200Response, _$IncidentReportIdPut200Response];

  @override
  final String wireName = r'IncidentReportIdPut200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IncidentReportIdPut200Response object, {
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
        specifiedType: const FullType(IncidentReportIdPut200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IncidentReportIdPut200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IncidentReportIdPut200ResponseBuilder result,
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
            specifiedType: const FullType(IncidentReportIdPut200ResponseData),
          ) as IncidentReportIdPut200ResponseData;
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
  IncidentReportIdPut200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IncidentReportIdPut200ResponseBuilder();
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

