//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'incident_report_id_reject_post200_response_data.g.dart';

/// IncidentReportIdRejectPost200ResponseData
///
/// Properties:
/// * [id] 
/// * [isRejected] 
/// * [rejectedBy] 
/// * [rejectedDate] 
/// * [reason] - Reason provided for rejection
/// * [additionalComments] - Additional comments provided during rejection
@BuiltValue()
abstract class IncidentReportIdRejectPost200ResponseData implements Built<IncidentReportIdRejectPost200ResponseData, IncidentReportIdRejectPost200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'isRejected')
  bool? get isRejected;

  @BuiltValueField(wireName: r'rejectedBy')
  String? get rejectedBy;

  @BuiltValueField(wireName: r'rejectedDate')
  String? get rejectedDate;

  /// Reason provided for rejection
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  /// Additional comments provided during rejection
  @BuiltValueField(wireName: r'additionalComments')
  String? get additionalComments;

  IncidentReportIdRejectPost200ResponseData._();

  factory IncidentReportIdRejectPost200ResponseData([void updates(IncidentReportIdRejectPost200ResponseDataBuilder b)]) = _$IncidentReportIdRejectPost200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IncidentReportIdRejectPost200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IncidentReportIdRejectPost200ResponseData> get serializer => _$IncidentReportIdRejectPost200ResponseDataSerializer();
}

class _$IncidentReportIdRejectPost200ResponseDataSerializer implements PrimitiveSerializer<IncidentReportIdRejectPost200ResponseData> {
  @override
  final Iterable<Type> types = const [IncidentReportIdRejectPost200ResponseData, _$IncidentReportIdRejectPost200ResponseData];

  @override
  final String wireName = r'IncidentReportIdRejectPost200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IncidentReportIdRejectPost200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.isRejected != null) {
      yield r'isRejected';
      yield serializers.serialize(
        object.isRejected,
        specifiedType: const FullType(bool),
      );
    }
    if (object.rejectedBy != null) {
      yield r'rejectedBy';
      yield serializers.serialize(
        object.rejectedBy,
        specifiedType: const FullType(String),
      );
    }
    if (object.rejectedDate != null) {
      yield r'rejectedDate';
      yield serializers.serialize(
        object.rejectedDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
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
    IncidentReportIdRejectPost200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IncidentReportIdRejectPost200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'isRejected':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isRejected = valueDes;
          break;
        case r'rejectedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rejectedBy = valueDes;
          break;
        case r'rejectedDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rejectedDate = valueDes;
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
  IncidentReportIdRejectPost200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IncidentReportIdRejectPost200ResponseDataBuilder();
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

