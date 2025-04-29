//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/performance_report_get200_response_data_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'performance_report_get200_response.g.dart';

/// PerformanceReportGet200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class PerformanceReportGet200Response implements Built<PerformanceReportGet200Response, PerformanceReportGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'data')
  BuiltList<PerformanceReportGet200ResponseDataInner>? get data;

  PerformanceReportGet200Response._();

  factory PerformanceReportGet200Response([void updates(PerformanceReportGet200ResponseBuilder b)]) = _$PerformanceReportGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PerformanceReportGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PerformanceReportGet200Response> get serializer => _$PerformanceReportGet200ResponseSerializer();
}

class _$PerformanceReportGet200ResponseSerializer implements PrimitiveSerializer<PerformanceReportGet200Response> {
  @override
  final Iterable<Type> types = const [PerformanceReportGet200Response, _$PerformanceReportGet200Response];

  @override
  final String wireName = r'PerformanceReportGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PerformanceReportGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(PerformanceReportGet200ResponseDataInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PerformanceReportGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PerformanceReportGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.status = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PerformanceReportGet200ResponseDataInner)]),
          ) as BuiltList<PerformanceReportGet200ResponseDataInner>;
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
  PerformanceReportGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PerformanceReportGet200ResponseBuilder();
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

