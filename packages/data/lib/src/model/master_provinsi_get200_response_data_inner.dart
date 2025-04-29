//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'master_provinsi_get200_response_data_inner.g.dart';

/// MasterProvinsiGet200ResponseDataInner
///
/// Properties:
/// * [id] 
/// * [namaProvinsi] 
/// * [isPantau] 
/// * [kodeBpjs] 
/// * [kodeMendagri] 
@BuiltValue()
abstract class MasterProvinsiGet200ResponseDataInner implements Built<MasterProvinsiGet200ResponseDataInner, MasterProvinsiGet200ResponseDataInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  num? get id;

  @BuiltValueField(wireName: r'namaProvinsi')
  String? get namaProvinsi;

  @BuiltValueField(wireName: r'isPantau')
  String? get isPantau;

  @BuiltValueField(wireName: r'kodeBpjs')
  String? get kodeBpjs;

  @BuiltValueField(wireName: r'kodeMendagri')
  String? get kodeMendagri;

  MasterProvinsiGet200ResponseDataInner._();

  factory MasterProvinsiGet200ResponseDataInner([void updates(MasterProvinsiGet200ResponseDataInnerBuilder b)]) = _$MasterProvinsiGet200ResponseDataInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MasterProvinsiGet200ResponseDataInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MasterProvinsiGet200ResponseDataInner> get serializer => _$MasterProvinsiGet200ResponseDataInnerSerializer();
}

class _$MasterProvinsiGet200ResponseDataInnerSerializer implements PrimitiveSerializer<MasterProvinsiGet200ResponseDataInner> {
  @override
  final Iterable<Type> types = const [MasterProvinsiGet200ResponseDataInner, _$MasterProvinsiGet200ResponseDataInner];

  @override
  final String wireName = r'MasterProvinsiGet200ResponseDataInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MasterProvinsiGet200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(num),
      );
    }
    if (object.namaProvinsi != null) {
      yield r'namaProvinsi';
      yield serializers.serialize(
        object.namaProvinsi,
        specifiedType: const FullType(String),
      );
    }
    if (object.isPantau != null) {
      yield r'isPantau';
      yield serializers.serialize(
        object.isPantau,
        specifiedType: const FullType(String),
      );
    }
    if (object.kodeBpjs != null) {
      yield r'kodeBpjs';
      yield serializers.serialize(
        object.kodeBpjs,
        specifiedType: const FullType(String),
      );
    }
    if (object.kodeMendagri != null) {
      yield r'kodeMendagri';
      yield serializers.serialize(
        object.kodeMendagri,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MasterProvinsiGet200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MasterProvinsiGet200ResponseDataInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.id = valueDes;
          break;
        case r'namaProvinsi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.namaProvinsi = valueDes;
          break;
        case r'isPantau':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.isPantau = valueDes;
          break;
        case r'kodeBpjs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kodeBpjs = valueDes;
          break;
        case r'kodeMendagri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kodeMendagri = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MasterProvinsiGet200ResponseDataInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MasterProvinsiGet200ResponseDataInnerBuilder();
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

