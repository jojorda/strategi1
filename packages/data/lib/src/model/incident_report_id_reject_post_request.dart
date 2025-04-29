//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'incident_report_id_reject_post_request.g.dart';

/// IncidentReportIdRejectPostRequest
///
/// Properties:
/// * [rejectedBy] - ID of the user rejecting the report
/// * [reason] - Reason for rejection
/// * [additionalComments] - Optional additional comments regarding the rejection
@BuiltValue()
abstract class IncidentReportIdRejectPostRequest implements Built<IncidentReportIdRejectPostRequest, IncidentReportIdRejectPostRequestBuilder> {
  /// ID of the user rejecting the report
  @BuiltValueField(wireName: r'rejectedBy')
  String get rejectedBy;

  /// Reason for rejection
  @BuiltValueField(wireName: r'reason')
  String get reason;

  /// Optional additional comments regarding the rejection
  @BuiltValueField(wireName: r'additionalComments')
  String? get additionalComments;

  IncidentReportIdRejectPostRequest._();

  factory IncidentReportIdRejectPostRequest([void updates(IncidentReportIdRejectPostRequestBuilder b)]) = _$IncidentReportIdRejectPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IncidentReportIdRejectPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IncidentReportIdRejectPostRequest> get serializer => _$IncidentReportIdRejectPostRequestSerializer();
}

class _$IncidentReportIdRejectPostRequestSerializer implements PrimitiveSerializer<IncidentReportIdRejectPostRequest> {
  @override
  final Iterable<Type> types = const [IncidentReportIdRejectPostRequest, _$IncidentReportIdRejectPostRequest];

  @override
  final String wireName = r'IncidentReportIdRejectPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IncidentReportIdRejectPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'rejectedBy';
    yield serializers.serialize(
      object.rejectedBy,
      specifiedType: const FullType(String),
    );
    yield r'reason';
    yield serializers.serialize(
      object.reason,
      specifiedType: const FullType(String),
    );
    if (object.additionalComments != null) {
      yield r'additionalComments';
      yield serializers.serialize(
        object.additionalComments,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IncidentReportIdRejectPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IncidentReportIdRejectPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'rejectedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rejectedBy = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        case r'additionalComments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.additionalComments = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IncidentReportIdRejectPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IncidentReportIdRejectPostRequestBuilder();
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

