//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'master_user_approval_get200_response_data_inner.g.dart';

/// MasterUserApprovalGet200ResponseDataInner
///
/// Properties:
/// * [id] 
/// * [username] 
/// * [fullname] 
/// * [kantor] 
/// * [role] 
@BuiltValue()
abstract class MasterUserApprovalGet200ResponseDataInner implements Built<MasterUserApprovalGet200ResponseDataInner, MasterUserApprovalGet200ResponseDataInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'username')
  String? get username;

  @BuiltValueField(wireName: r'fullname')
  String? get fullname;

  @BuiltValueField(wireName: r'kantor')
  String? get kantor;

  @BuiltValueField(wireName: r'role')
  String? get role;

  MasterUserApprovalGet200ResponseDataInner._();

  factory MasterUserApprovalGet200ResponseDataInner([void updates(MasterUserApprovalGet200ResponseDataInnerBuilder b)]) = _$MasterUserApprovalGet200ResponseDataInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MasterUserApprovalGet200ResponseDataInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MasterUserApprovalGet200ResponseDataInner> get serializer => _$MasterUserApprovalGet200ResponseDataInnerSerializer();
}

class _$MasterUserApprovalGet200ResponseDataInnerSerializer implements PrimitiveSerializer<MasterUserApprovalGet200ResponseDataInner> {
  @override
  final Iterable<Type> types = const [MasterUserApprovalGet200ResponseDataInner, _$MasterUserApprovalGet200ResponseDataInner];

  @override
  final String wireName = r'MasterUserApprovalGet200ResponseDataInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MasterUserApprovalGet200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.username != null) {
      yield r'username';
      yield serializers.serialize(
        object.username,
        specifiedType: const FullType(String),
      );
    }
    if (object.fullname != null) {
      yield r'fullname';
      yield serializers.serialize(
        object.fullname,
        specifiedType: const FullType(String),
      );
    }
    if (object.kantor != null) {
      yield r'kantor';
      yield serializers.serialize(
        object.kantor,
        specifiedType: const FullType(String),
      );
    }
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MasterUserApprovalGet200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MasterUserApprovalGet200ResponseDataInnerBuilder result,
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
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.username = valueDes;
          break;
        case r'fullname':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fullname = valueDes;
          break;
        case r'kantor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kantor = valueDes;
          break;
        case r'role':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.role = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MasterUserApprovalGet200ResponseDataInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MasterUserApprovalGet200ResponseDataInnerBuilder();
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

