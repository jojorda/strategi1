//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/report_id_approve_post200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_id_approve_post200_response.g.dart';

/// ReportIdApprovePost200Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [message] 
@BuiltValue()
abstract class ReportIdApprovePost200Response implements Built<ReportIdApprovePost200Response, ReportIdApprovePost200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  ReportIdApprovePost200ResponseData? get data;

  @BuiltValueField(wireName: r'message')
  String? get message;

  ReportIdApprovePost200Response._();

  factory ReportIdApprovePost200Response([void updates(ReportIdApprovePost200ResponseBuilder b)]) = _$ReportIdApprovePost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportIdApprovePost200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportIdApprovePost200Response> get serializer => _$ReportIdApprovePost200ResponseSerializer();
}

class _$ReportIdApprovePost200ResponseSerializer implements PrimitiveSerializer<ReportIdApprovePost200Response> {
  @override
  final Iterable<Type> types = const [ReportIdApprovePost200Response, _$ReportIdApprovePost200Response];

  @override
  final String wireName = r'ReportIdApprovePost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportIdApprovePost200Response object, {
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
        specifiedType: const FullType(ReportIdApprovePost200ResponseData),
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
    ReportIdApprovePost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReportIdApprovePost200ResponseBuilder result,
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
            specifiedType: const FullType(ReportIdApprovePost200ResponseData),
          ) as ReportIdApprovePost200ResponseData;
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
  ReportIdApprovePost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportIdApprovePost200ResponseBuilder();
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

