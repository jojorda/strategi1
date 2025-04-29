//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/report_id_reject_post200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_id_reject_post200_response.g.dart';

/// ReportIdRejectPost200Response
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [message] 
@BuiltValue()
abstract class ReportIdRejectPost200Response implements Built<ReportIdRejectPost200Response, ReportIdRejectPost200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  ReportIdRejectPost200ResponseData? get data;

  @BuiltValueField(wireName: r'message')
  String? get message;

  ReportIdRejectPost200Response._();

  factory ReportIdRejectPost200Response([void updates(ReportIdRejectPost200ResponseBuilder b)]) = _$ReportIdRejectPost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportIdRejectPost200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportIdRejectPost200Response> get serializer => _$ReportIdRejectPost200ResponseSerializer();
}

class _$ReportIdRejectPost200ResponseSerializer implements PrimitiveSerializer<ReportIdRejectPost200Response> {
  @override
  final Iterable<Type> types = const [ReportIdRejectPost200Response, _$ReportIdRejectPost200Response];

  @override
  final String wireName = r'ReportIdRejectPost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportIdRejectPost200Response object, {
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
        specifiedType: const FullType(ReportIdRejectPost200ResponseData),
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
    ReportIdRejectPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReportIdRejectPost200ResponseBuilder result,
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
            specifiedType: const FullType(ReportIdRejectPost200ResponseData),
          ) as ReportIdRejectPost200ResponseData;
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
  ReportIdRejectPost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportIdRejectPost200ResponseBuilder();
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

