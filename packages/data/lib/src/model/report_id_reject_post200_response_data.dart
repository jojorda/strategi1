//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_id_reject_post200_response_data.g.dart';

/// ReportIdRejectPost200ResponseData
///
/// Properties:
/// * [id] 
/// * [isApproved] 
/// * [rejectedBy] 
/// * [rejectedDate] 
/// * [reason] - Reason provided for rejection
/// * [additionalComments] - Additional comments provided during rejection
@BuiltValue()
abstract class ReportIdRejectPost200ResponseData implements Built<ReportIdRejectPost200ResponseData, ReportIdRejectPost200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'isApproved')
  bool? get isApproved;

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

  ReportIdRejectPost200ResponseData._();

  factory ReportIdRejectPost200ResponseData([void updates(ReportIdRejectPost200ResponseDataBuilder b)]) = _$ReportIdRejectPost200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportIdRejectPost200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportIdRejectPost200ResponseData> get serializer => _$ReportIdRejectPost200ResponseDataSerializer();
}

class _$ReportIdRejectPost200ResponseDataSerializer implements PrimitiveSerializer<ReportIdRejectPost200ResponseData> {
  @override
  final Iterable<Type> types = const [ReportIdRejectPost200ResponseData, _$ReportIdRejectPost200ResponseData];

  @override
  final String wireName = r'ReportIdRejectPost200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportIdRejectPost200ResponseData object, {
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
    ReportIdRejectPost200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReportIdRejectPost200ResponseDataBuilder result,
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
  ReportIdRejectPost200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportIdRejectPost200ResponseDataBuilder();
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

