//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_id_approve_post_request.g.dart';

/// ReportIdApprovePostRequest
///
/// Properties:
/// * [notes] - Optional notes regarding the approval
@BuiltValue()
abstract class ReportIdApprovePostRequest implements Built<ReportIdApprovePostRequest, ReportIdApprovePostRequestBuilder> {
  /// Optional notes regarding the approval
  @BuiltValueField(wireName: r'notes')
  String? get notes;

  ReportIdApprovePostRequest._();

  factory ReportIdApprovePostRequest([void updates(ReportIdApprovePostRequestBuilder b)]) = _$ReportIdApprovePostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportIdApprovePostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportIdApprovePostRequest> get serializer => _$ReportIdApprovePostRequestSerializer();
}

class _$ReportIdApprovePostRequestSerializer implements PrimitiveSerializer<ReportIdApprovePostRequest> {
  @override
  final Iterable<Type> types = const [ReportIdApprovePostRequest, _$ReportIdApprovePostRequest];

  @override
  final String wireName = r'ReportIdApprovePostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportIdApprovePostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    ReportIdApprovePostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReportIdApprovePostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  ReportIdApprovePostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportIdApprovePostRequestBuilder();
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

