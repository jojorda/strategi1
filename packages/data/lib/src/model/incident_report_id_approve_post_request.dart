//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'incident_report_id_approve_post_request.g.dart';

/// IncidentReportIdApprovePostRequest
///
/// Properties:
/// * [approvedBy] - ID of the user approving the report
/// * [notes] - Optional notes regarding the approval
@BuiltValue()
abstract class IncidentReportIdApprovePostRequest implements Built<IncidentReportIdApprovePostRequest, IncidentReportIdApprovePostRequestBuilder> {
  /// ID of the user approving the report
  @BuiltValueField(wireName: r'approvedBy')
  String get approvedBy;

  /// Optional notes regarding the approval
  @BuiltValueField(wireName: r'notes')
  String? get notes;

  IncidentReportIdApprovePostRequest._();

  factory IncidentReportIdApprovePostRequest([void updates(IncidentReportIdApprovePostRequestBuilder b)]) = _$IncidentReportIdApprovePostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IncidentReportIdApprovePostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IncidentReportIdApprovePostRequest> get serializer => _$IncidentReportIdApprovePostRequestSerializer();
}

class _$IncidentReportIdApprovePostRequestSerializer implements PrimitiveSerializer<IncidentReportIdApprovePostRequest> {
  @override
  final Iterable<Type> types = const [IncidentReportIdApprovePostRequest, _$IncidentReportIdApprovePostRequest];

  @override
  final String wireName = r'IncidentReportIdApprovePostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IncidentReportIdApprovePostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'approvedBy';
    yield serializers.serialize(
      object.approvedBy,
      specifiedType: const FullType(String),
    );
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IncidentReportIdApprovePostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IncidentReportIdApprovePostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'approvedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.approvedBy = valueDes;
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.notes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IncidentReportIdApprovePostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IncidentReportIdApprovePostRequestBuilder();
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

