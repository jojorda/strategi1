//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_id_reject_post_request.g.dart';

/// ReportIdRejectPostRequest
///
/// Properties:
/// * [reason] - Reason for rejection
/// * [additionalComments] - Optional additional comments regarding the rejection
@BuiltValue()
abstract class ReportIdRejectPostRequest implements Built<ReportIdRejectPostRequest, ReportIdRejectPostRequestBuilder> {
  /// Reason for rejection
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  /// Optional additional comments regarding the rejection
  @BuiltValueField(wireName: r'additionalComments')
  String? get additionalComments;

  ReportIdRejectPostRequest._();

  factory ReportIdRejectPostRequest([void updates(ReportIdRejectPostRequestBuilder b)]) = _$ReportIdRejectPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportIdRejectPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportIdRejectPostRequest> get serializer => _$ReportIdRejectPostRequestSerializer();
}

class _$ReportIdRejectPostRequestSerializer implements PrimitiveSerializer<ReportIdRejectPostRequest> {
  @override
  final Iterable<Type> types = const [ReportIdRejectPostRequest, _$ReportIdRejectPostRequest];

  @override
  final String wireName = r'ReportIdRejectPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportIdRejectPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    ReportIdRejectPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReportIdRejectPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  ReportIdRejectPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportIdRejectPostRequestBuilder();
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

