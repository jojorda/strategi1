//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'focus_cctv.g.dart';

/// FocusCCTV
///
/// Properties:
/// * [id] 
/// * [namaLokasi] 
/// * [namaCctv] 
/// * [streamUrl] 
/// * [status] 
/// * [namaPengelola] 
/// * [protocol] 
/// * [latitude] 
/// * [longitude] 
/// * [source_] 
/// * [tagKategori] 
/// * [matra] 
/// * [namaKabupatenKota] 
/// * [namaProvinsi] 
@BuiltValue()
abstract class FocusCCTV implements Built<FocusCCTV, FocusCCTVBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'namaLokasi')
  String? get namaLokasi;

  @BuiltValueField(wireName: r'namaCctv')
  String? get namaCctv;

  @BuiltValueField(wireName: r'streamUrl')
  String? get streamUrl;

  @BuiltValueField(wireName: r'status')
  FocusCCTVStatusEnum? get status;
  // enum statusEnum {  online,  offline,  };

  @BuiltValueField(wireName: r'namaPengelola')
  String? get namaPengelola;

  @BuiltValueField(wireName: r'protocol')
  String? get protocol;

  @BuiltValueField(wireName: r'latitude')
  String? get latitude;

  @BuiltValueField(wireName: r'longitude')
  String? get longitude;

  @BuiltValueField(wireName: r'source')
  String? get source_;

  @BuiltValueField(wireName: r'tagKategori')
  String? get tagKategori;

  @BuiltValueField(wireName: r'matra')
  String? get matra;

  @BuiltValueField(wireName: r'namaKabupatenKota')
  String? get namaKabupatenKota;

  @BuiltValueField(wireName: r'namaProvinsi')
  String? get namaProvinsi;

  FocusCCTV._();

  factory FocusCCTV([void updates(FocusCCTVBuilder b)]) = _$FocusCCTV;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FocusCCTVBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FocusCCTV> get serializer => _$FocusCCTVSerializer();
}

class _$FocusCCTVSerializer implements PrimitiveSerializer<FocusCCTV> {
  @override
  final Iterable<Type> types = const [FocusCCTV, _$FocusCCTV];

  @override
  final String wireName = r'FocusCCTV';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FocusCCTV object, {
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
        specifiedType: const FullType(FocusCCTVStatusEnum),
      );
    }
    if (object.namaPengelola != null) {
      yield r'namaPengelola';
      yield serializers.serialize(
        object.namaPengelola,
        specifiedType: const FullType(String),
      );
    }
    if (object.protocol != null) {
      yield r'protocol';
      yield serializers.serialize(
        object.protocol,
        specifiedType: const FullType(String),
      );
    }
    if (object.latitude != null) {
      yield r'latitude';
      yield serializers.serialize(
        object.latitude,
        specifiedType: const FullType(String),
      );
    }
    if (object.longitude != null) {
      yield r'longitude';
      yield serializers.serialize(
        object.longitude,
        specifiedType: const FullType(String),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(String),
      );
    }
    if (object.tagKategori != null) {
      yield r'tagKategori';
      yield serializers.serialize(
        object.tagKategori,
        specifiedType: const FullType(String),
      );
    }
    if (object.matra != null) {
      yield r'matra';
      yield serializers.serialize(
        object.matra,
        specifiedType: const FullType(String),
      );
    }
    if (object.namaKabupatenKota != null) {
      yield r'namaKabupatenKota';
      yield serializers.serialize(
        object.namaKabupatenKota,
        specifiedType: const FullType(String),
      );
    }
    if (object.namaProvinsi != null) {
      yield r'namaProvinsi';
      yield serializers.serialize(
        object.namaProvinsi,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FocusCCTV object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FocusCCTVBuilder result,
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
            specifiedType: const FullType(FocusCCTVStatusEnum),
          ) as FocusCCTVStatusEnum;
          result.status = valueDes;
          break;
        case r'namaPengelola':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.namaPengelola = valueDes;
          break;
        case r'protocol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.protocol = valueDes;
          break;
        case r'latitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.latitude = valueDes;
          break;
        case r'longitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.longitude = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.source_ = valueDes;
          break;
        case r'tagKategori':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tagKategori = valueDes;
          break;
        case r'matra':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.matra = valueDes;
          break;
        case r'namaKabupatenKota':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.namaKabupatenKota = valueDes;
          break;
        case r'namaProvinsi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.namaProvinsi = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FocusCCTV deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FocusCCTVBuilder();
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

class FocusCCTVStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'online')
  static const FocusCCTVStatusEnum online = _$focusCCTVStatusEnum_online;
  @BuiltValueEnumConst(wireName: r'offline')
  static const FocusCCTVStatusEnum offline = _$focusCCTVStatusEnum_offline;

  static Serializer<FocusCCTVStatusEnum> get serializer => _$focusCCTVStatusEnumSerializer;

  const FocusCCTVStatusEnum._(String name): super(name);

  static BuiltSet<FocusCCTVStatusEnum> get values => _$focusCCTVStatusEnumValues;
  static FocusCCTVStatusEnum valueOf(String name) => _$focusCCTVStatusEnumValueOf(name);
}

