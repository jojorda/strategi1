//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'model30_seconds_get200_response_data_inner.g.dart';

/// Model30SecondsGet200ResponseDataInner
///
/// Properties:
/// * [id] 
/// * [namaLokasi] 
/// * [namaCctv] 
/// * [streamUrl] 
/// * [status] 
@BuiltValue()
abstract class Model30SecondsGet200ResponseDataInner implements Built<Model30SecondsGet200ResponseDataInner, Model30SecondsGet200ResponseDataInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'namaLokasi')
  String? get namaLokasi;

  @BuiltValueField(wireName: r'namaCctv')
  String? get namaCctv;

  @BuiltValueField(wireName: r'streamUrl')
  String? get streamUrl;

  @BuiltValueField(wireName: r'status')
  Model30SecondsGet200ResponseDataInnerStatusEnum? get status;
  // enum statusEnum {  online,  offline,  };

  Model30SecondsGet200ResponseDataInner._();

  factory Model30SecondsGet200ResponseDataInner([void updates(Model30SecondsGet200ResponseDataInnerBuilder b)]) = _$Model30SecondsGet200ResponseDataInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Model30SecondsGet200ResponseDataInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Model30SecondsGet200ResponseDataInner> get serializer => _$Model30SecondsGet200ResponseDataInnerSerializer();
}

class _$Model30SecondsGet200ResponseDataInnerSerializer implements PrimitiveSerializer<Model30SecondsGet200ResponseDataInner> {
  @override
  final Iterable<Type> types = const [Model30SecondsGet200ResponseDataInner, _$Model30SecondsGet200ResponseDataInner];

  @override
  final String wireName = r'Model30SecondsGet200ResponseDataInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Model30SecondsGet200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.namaLokasi != null) {
      yield r'namaLokasi';
      yield serializers.serialize(
        object.namaLokasi,
        specifiedType: const FullType(String),
      );
    }
    if (object.namaCctv != null) {
      yield r'namaCctv';
      yield serializers.serialize(
        object.namaCctv,
        specifiedType: const FullType(String),
      );
    }
    if (object.streamUrl != null) {
      yield r'streamUrl';
      yield serializers.serialize(
        object.streamUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(Model30SecondsGet200ResponseDataInnerStatusEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Model30SecondsGet200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required Model30SecondsGet200ResponseDataInnerBuilder result,
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
        case r'namaLokasi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.namaLokasi = valueDes;
          break;
        case r'namaCctv':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.namaCctv = valueDes;
          break;
        case r'streamUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.streamUrl = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Model30SecondsGet200ResponseDataInnerStatusEnum),
          ) as Model30SecondsGet200ResponseDataInnerStatusEnum;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Model30SecondsGet200ResponseDataInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Model30SecondsGet200ResponseDataInnerBuilder();
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

class Model30SecondsGet200ResponseDataInnerStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'online')
  static const Model30SecondsGet200ResponseDataInnerStatusEnum online = _$model30SecondsGet200ResponseDataInnerStatusEnum_online;
  @BuiltValueEnumConst(wireName: r'offline')
  static const Model30SecondsGet200ResponseDataInnerStatusEnum offline = _$model30SecondsGet200ResponseDataInnerStatusEnum_offline;

  static Serializer<Model30SecondsGet200ResponseDataInnerStatusEnum> get serializer => _$model30SecondsGet200ResponseDataInnerStatusEnumSerializer;

  const Model30SecondsGet200ResponseDataInnerStatusEnum._(String name): super(name);

  static BuiltSet<Model30SecondsGet200ResponseDataInnerStatusEnum> get values => _$model30SecondsGet200ResponseDataInnerStatusEnumValues;
  static Model30SecondsGet200ResponseDataInnerStatusEnum valueOf(String name) => _$model30SecondsGet200ResponseDataInnerStatusEnumValueOf(name);
}

