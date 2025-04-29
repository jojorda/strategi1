//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'master_kabupaten_get200_response_data_inner.g.dart';

/// MasterKabupatenGet200ResponseDataInner
///
/// Properties:
/// * [id] 
/// * [idProvinsi] 
/// * [namaKabupaten] 
/// * [jmlKec] 
/// * [jmlDesa] 
/// * [sumberData] 
/// * [statusData] 
/// * [ketData] 
/// * [shapeLeng] 
/// * [shapeArea] 
/// * [kodeBpjs] 
/// * [kodeMendagri] 
@BuiltValue()
abstract class MasterKabupatenGet200ResponseDataInner implements Built<MasterKabupatenGet200ResponseDataInner, MasterKabupatenGet200ResponseDataInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'idProvinsi')
  num? get idProvinsi;

  @BuiltValueField(wireName: r'namaKabupaten')
  String? get namaKabupaten;

  @BuiltValueField(wireName: r'jmlKec')
  num? get jmlKec;

  @BuiltValueField(wireName: r'jmlDesa')
  num? get jmlDesa;

  @BuiltValueField(wireName: r'sumberData')
  String? get sumberData;

  @BuiltValueField(wireName: r'statusData')
  num? get statusData;

  @BuiltValueField(wireName: r'ketData')
  String? get ketData;

  @BuiltValueField(wireName: r'shapeLeng')
  String? get shapeLeng;

  @BuiltValueField(wireName: r'shapeArea')
  String? get shapeArea;

  @BuiltValueField(wireName: r'kodeBpjs')
  String? get kodeBpjs;

  @BuiltValueField(wireName: r'kodeMendagri')
  String? get kodeMendagri;

  MasterKabupatenGet200ResponseDataInner._();

  factory MasterKabupatenGet200ResponseDataInner([void updates(MasterKabupatenGet200ResponseDataInnerBuilder b)]) = _$MasterKabupatenGet200ResponseDataInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MasterKabupatenGet200ResponseDataInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MasterKabupatenGet200ResponseDataInner> get serializer => _$MasterKabupatenGet200ResponseDataInnerSerializer();
}

class _$MasterKabupatenGet200ResponseDataInnerSerializer implements PrimitiveSerializer<MasterKabupatenGet200ResponseDataInner> {
  @override
  final Iterable<Type> types = const [MasterKabupatenGet200ResponseDataInner, _$MasterKabupatenGet200ResponseDataInner];

  @override
  final String wireName = r'MasterKabupatenGet200ResponseDataInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MasterKabupatenGet200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.idProvinsi != null) {
      yield r'idProvinsi';
      yield serializers.serialize(
        object.idProvinsi,
        specifiedType: const FullType(num),
      );
    }
    if (object.namaKabupaten != null) {
      yield r'namaKabupaten';
      yield serializers.serialize(
        object.namaKabupaten,
        specifiedType: const FullType(String),
      );
    }
    if (object.jmlKec != null) {
      yield r'jmlKec';
      yield serializers.serialize(
        object.jmlKec,
        specifiedType: const FullType(num),
      );
    }
    if (object.jmlDesa != null) {
      yield r'jmlDesa';
      yield serializers.serialize(
        object.jmlDesa,
        specifiedType: const FullType(num),
      );
    }
    if (object.sumberData != null) {
      yield r'sumberData';
      yield serializers.serialize(
        object.sumberData,
        specifiedType: const FullType(String),
      );
    }
    if (object.statusData != null) {
      yield r'statusData';
      yield serializers.serialize(
        object.statusData,
        specifiedType: const FullType(num),
      );
    }
    if (object.ketData != null) {
      yield r'ketData';
      yield serializers.serialize(
        object.ketData,
        specifiedType: const FullType(String),
      );
    }
    if (object.shapeLeng != null) {
      yield r'shapeLeng';
      yield serializers.serialize(
        object.shapeLeng,
        specifiedType: const FullType(String),
      );
    }
    if (object.shapeArea != null) {
      yield r'shapeArea';
      yield serializers.serialize(
        object.shapeArea,
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
    MasterKabupatenGet200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MasterKabupatenGet200ResponseDataInnerBuilder result,
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
        case r'idProvinsi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.idProvinsi = valueDes;
          break;
        case r'namaKabupaten':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.namaKabupaten = valueDes;
          break;
        case r'jmlKec':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.jmlKec = valueDes;
          break;
        case r'jmlDesa':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.jmlDesa = valueDes;
          break;
        case r'sumberData':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sumberData = valueDes;
          break;
        case r'statusData':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.statusData = valueDes;
          break;
        case r'ketData':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ketData = valueDes;
          break;
        case r'shapeLeng':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.shapeLeng = valueDes;
          break;
        case r'shapeArea':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.shapeArea = valueDes;
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
  MasterKabupatenGet200ResponseDataInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MasterKabupatenGet200ResponseDataInnerBuilder();
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

