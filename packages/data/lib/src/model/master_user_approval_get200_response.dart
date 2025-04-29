//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/master_user_approval_get200_response_data_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'master_user_approval_get200_response.g.dart';

/// MasterUserApprovalGet200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class MasterUserApprovalGet200Response implements Built<MasterUserApprovalGet200Response, MasterUserApprovalGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'data')
  BuiltList<MasterUserApprovalGet200ResponseDataInner>? get data;

  MasterUserApprovalGet200Response._();

  factory MasterUserApprovalGet200Response([void updates(MasterUserApprovalGet200ResponseBuilder b)]) = _$MasterUserApprovalGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MasterUserApprovalGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MasterUserApprovalGet200Response> get serializer => _$MasterUserApprovalGet200ResponseSerializer();
}

class _$MasterUserApprovalGet200ResponseSerializer implements PrimitiveSerializer<MasterUserApprovalGet200Response> {
  @override
  final Iterable<Type> types = const [MasterUserApprovalGet200Response, _$MasterUserApprovalGet200Response];

  @override
  final String wireName = r'MasterUserApprovalGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MasterUserApprovalGet200Response object, {
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
        specifiedType: const FullType(BuiltList, [FullType(MasterUserApprovalGet200ResponseDataInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MasterUserApprovalGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MasterUserApprovalGet200ResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(MasterUserApprovalGet200ResponseDataInner)]),
          ) as BuiltList<MasterUserApprovalGet200ResponseDataInner>;
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
  MasterUserApprovalGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MasterUserApprovalGet200ResponseBuilder();
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

