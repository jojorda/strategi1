//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'incident_report_id_approve_post200_response_data.g.dart';

/// IncidentReportIdApprovePost200ResponseData
///
/// Properties:
/// * [id] 
/// * [isApproved] 
/// * [approvedBy] 
/// * [approvedDate] 
/// * [notes] - Notes provided during approval
@BuiltValue()
abstract class IncidentReportIdApprovePost200ResponseData implements Built<IncidentReportIdApprovePost200ResponseData, IncidentReportIdApprovePost200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'isApproved')
  bool? get isApproved;

  @BuiltValueField(wireName: r'approvedBy')
  String? get approvedBy;

  @BuiltValueField(wireName: r'approvedDate')
  String? get approvedDate;

  /// Notes provided during approval
  @BuiltValueField(wireName: r'notes')
  String? get notes;

  IncidentReportIdApprovePost200ResponseData._();

  factory IncidentReportIdApprovePost200ResponseData([void updates(IncidentReportIdApprovePost200ResponseDataBuilder b)]) = _$IncidentReportIdApprovePost200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IncidentReportIdApprovePost200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IncidentReportIdApprovePost200ResponseData> get serializer => _$IncidentReportIdApprovePost200ResponseDataSerializer();
}

class _$IncidentReportIdApprovePost200ResponseDataSerializer implements PrimitiveSerializer<IncidentReportIdApprovePost200ResponseData> {
  @override
  final Iterable<Type> types = const [IncidentReportIdApprovePost200ResponseData, _$IncidentReportIdApprovePost200ResponseData];

  @override
  final String wireName = r'IncidentReportIdApprovePost200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IncidentReportIdApprovePost200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.isApproved != null) {
      yield r'isApproved';
      yield serializers.serialize(
        object.isApproved,
        specifiedType: const FullType(bool),
      );
    }
    if (object.approvedBy != null) {
      yield r'approvedBy';
      yield serializers.serialize(
        object.approvedBy,
        specifiedType: const FullType(String),
      );
    }
    if (object.approvedDate != null) {
      yield r'approvedDate';
      yield serializers.serialize(
        object.approvedDate,
        specifiedType: const FullType(String),
      );
    }
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
    IncidentReportIdApprovePost200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IncidentReportIdApprovePost200ResponseDataBuilder result,
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
        case r'isApproved':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isApproved = valueDes;
          break;
        case r'approvedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.approvedBy = valueDes;
          break;
        case r'approvedDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.approvedDate = valueDes;
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
  IncidentReportIdApprovePost200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IncidentReportIdApprovePost200ResponseDataBuilder();
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

