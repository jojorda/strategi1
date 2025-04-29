//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/incident_report_id_get200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'incident_report_id_get200_response.g.dart';

/// IncidentReportIdGet200Response
///
/// Properties:
/// * [success] 
/// * [data] 
@BuiltValue()
abstract class IncidentReportIdGet200Response implements Built<IncidentReportIdGet200Response, IncidentReportIdGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  IncidentReportIdGet200ResponseData? get data;

  IncidentReportIdGet200Response._();

  factory IncidentReportIdGet200Response([void updates(IncidentReportIdGet200ResponseBuilder b)]) = _$IncidentReportIdGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IncidentReportIdGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IncidentReportIdGet200Response> get serializer => _$IncidentReportIdGet200ResponseSerializer();
}

class _$IncidentReportIdGet200ResponseSerializer implements PrimitiveSerializer<IncidentReportIdGet200Response> {
  @override
  final Iterable<Type> types = const [IncidentReportIdGet200Response, _$IncidentReportIdGet200Response];

  @override
  final String wireName = r'IncidentReportIdGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IncidentReportIdGet200Response object, {
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
        specifiedType: const FullType(IncidentReportIdGet200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IncidentReportIdGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IncidentReportIdGet200ResponseBuilder result,
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
            specifiedType: const FullType(IncidentReportIdGet200ResponseData),
          ) as IncidentReportIdGet200ResponseData;
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
  IncidentReportIdGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IncidentReportIdGet200ResponseBuilder();
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

