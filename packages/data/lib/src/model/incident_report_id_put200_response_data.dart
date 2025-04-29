//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'incident_report_id_put200_response_data.g.dart';

/// IncidentReportIdPut200ResponseData
///
/// Properties:
/// * [id] 
/// * [nama] 
/// * [email] 
/// * [noHp] 
/// * [waktuKejadian] 
/// * [kronologiKejadian] 
/// * [dataPendukung] 
/// * [lokasi] 
/// * [longitude] 
/// * [latitude] 
/// * [status] 
/// * [idVerifier] 
/// * [keterangan] 
/// * [modaTransportasi] 
/// * [kategori] 
/// * [createDate] 
/// * [updateDate] 
/// * [updateLokasi] 
/// * [updateLongitude] 
/// * [updateLatitude] 
/// * [unitKerja] 
/// * [verifyDate] 
/// * [idTindaklanjut] 
/// * [statusKejadian] 
/// * [tindakLanjut] 
/// * [dataPendukungTindaklanjut] 
/// * [waktuTindaklanjut] 
/// * [updateWaktuKejadian] 
/// * [updateKronologiKejadian] 
/// * [updateDataPendukung] 
/// * [nextUpdateModaTransportasi] 
/// * [nextUpdateKategori] 
/// * [nextUpdateLokasi] 
/// * [nextUpdateLongitude] 
/// * [nextUpdateLatitude] 
/// * [nextUpdateWaktuKejadian] 
/// * [nextUpdateKronologiKejadian] 
/// * [nextUpdateKeterangan] 
@BuiltValue()
abstract class IncidentReportIdPut200ResponseData implements Built<IncidentReportIdPut200ResponseData, IncidentReportIdPut200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'nama')
  String? get nama;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'noHp')
  String? get noHp;

  @BuiltValueField(wireName: r'waktuKejadian')
  String? get waktuKejadian;

  @BuiltValueField(wireName: r'kronologiKejadian')
  String? get kronologiKejadian;

  @BuiltValueField(wireName: r'dataPendukung')
  BuiltList<String>? get dataPendukung;

  @BuiltValueField(wireName: r'lokasi')
  String? get lokasi;

  @BuiltValueField(wireName: r'longitude')
  double? get longitude;

  @BuiltValueField(wireName: r'latitude')
  double? get latitude;

  @BuiltValueField(wireName: r'status')
  num? get status;

  @BuiltValueField(wireName: r'idVerifier')
  String? get idVerifier;

  @BuiltValueField(wireName: r'keterangan')
  String? get keterangan;

  @BuiltValueField(wireName: r'modaTransportasi')
  String? get modaTransportasi;

  @BuiltValueField(wireName: r'kategori')
  String? get kategori;

  @BuiltValueField(wireName: r'createDate')
  String? get createDate;

  @BuiltValueField(wireName: r'updateDate')
  String? get updateDate;

  @BuiltValueField(wireName: r'updateLokasi')
  String? get updateLokasi;

  @BuiltValueField(wireName: r'updateLongitude')
  double? get updateLongitude;

  @BuiltValueField(wireName: r'updateLatitude')
  double? get updateLatitude;

  @BuiltValueField(wireName: r'unitKerja')
  String? get unitKerja;

  @BuiltValueField(wireName: r'verifyDate')
  String? get verifyDate;

  @BuiltValueField(wireName: r'idTindaklanjut')
  String? get idTindaklanjut;

  @BuiltValueField(wireName: r'statusKejadian')
  num? get statusKejadian;

  @BuiltValueField(wireName: r'tindakLanjut')
  String? get tindakLanjut;

  @BuiltValueField(wireName: r'dataPendukungTindaklanjut')
  BuiltList<String>? get dataPendukungTindaklanjut;

  @BuiltValueField(wireName: r'waktuTindaklanjut')
  String? get waktuTindaklanjut;

  @BuiltValueField(wireName: r'updateWaktuKejadian')
  String? get updateWaktuKejadian;

  @BuiltValueField(wireName: r'updateKronologiKejadian')
  String? get updateKronologiKejadian;

  @BuiltValueField(wireName: r'updateDataPendukung')
  BuiltList<String>? get updateDataPendukung;

  @BuiltValueField(wireName: r'nextUpdateModaTransportasi')
  String? get nextUpdateModaTransportasi;

  @BuiltValueField(wireName: r'nextUpdateKategori')
  String? get nextUpdateKategori;

  @BuiltValueField(wireName: r'nextUpdateLokasi')
  String? get nextUpdateLokasi;

  @BuiltValueField(wireName: r'nextUpdateLongitude')
  double? get nextUpdateLongitude;

  @BuiltValueField(wireName: r'nextUpdateLatitude')
  double? get nextUpdateLatitude;

  @BuiltValueField(wireName: r'nextUpdateWaktuKejadian')
  String? get nextUpdateWaktuKejadian;

  @BuiltValueField(wireName: r'nextUpdateKronologiKejadian')
  String? get nextUpdateKronologiKejadian;

  @BuiltValueField(wireName: r'nextUpdateKeterangan')
  String? get nextUpdateKeterangan;

  IncidentReportIdPut200ResponseData._();

  factory IncidentReportIdPut200ResponseData([void updates(IncidentReportIdPut200ResponseDataBuilder b)]) = _$IncidentReportIdPut200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IncidentReportIdPut200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IncidentReportIdPut200ResponseData> get serializer => _$IncidentReportIdPut200ResponseDataSerializer();
}

class _$IncidentReportIdPut200ResponseDataSerializer implements PrimitiveSerializer<IncidentReportIdPut200ResponseData> {
  @override
  final Iterable<Type> types = const [IncidentReportIdPut200ResponseData, _$IncidentReportIdPut200ResponseData];

  @override
  final String wireName = r'IncidentReportIdPut200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IncidentReportIdPut200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.nama != null) {
      yield r'nama';
      yield serializers.serialize(
        object.nama,
        specifiedType: const FullType(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.noHp != null) {
      yield r'noHp';
      yield serializers.serialize(
        object.noHp,
        specifiedType: const FullType(String),
      );
    }
    if (object.waktuKejadian != null) {
      yield r'waktuKejadian';
      yield serializers.serialize(
        object.waktuKejadian,
        specifiedType: const FullType(String),
      );
    }
    if (object.kronologiKejadian != null) {
      yield r'kronologiKejadian';
      yield serializers.serialize(
        object.kronologiKejadian,
        specifiedType: const FullType(String),
      );
    }
    if (object.dataPendukung != null) {
      yield r'dataPendukung';
      yield serializers.serialize(
        object.dataPendukung,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.lokasi != null) {
      yield r'lokasi';
      yield serializers.serialize(
        object.lokasi,
        specifiedType: const FullType(String),
      );
    }
    if (object.longitude != null) {
      yield r'longitude';
      yield serializers.serialize(
        object.longitude,
        specifiedType: const FullType(double),
      );
    }
    if (object.latitude != null) {
      yield r'latitude';
      yield serializers.serialize(
        object.latitude,
        specifiedType: const FullType(double),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(num),
      );
    }
    if (object.idVerifier != null) {
      yield r'idVerifier';
      yield serializers.serialize(
        object.idVerifier,
        specifiedType: const FullType(String),
      );
    }
    if (object.keterangan != null) {
      yield r'keterangan';
      yield serializers.serialize(
        object.keterangan,
        specifiedType: const FullType(String),
      );
    }
    if (object.modaTransportasi != null) {
      yield r'modaTransportasi';
      yield serializers.serialize(
        object.modaTransportasi,
        specifiedType: const FullType(String),
      );
    }
    if (object.kategori != null) {
      yield r'kategori';
      yield serializers.serialize(
        object.kategori,
        specifiedType: const FullType(String),
      );
    }
    if (object.createDate != null) {
      yield r'createDate';
      yield serializers.serialize(
        object.createDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.updateDate != null) {
      yield r'updateDate';
      yield serializers.serialize(
        object.updateDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.updateLokasi != null) {
      yield r'updateLokasi';
      yield serializers.serialize(
        object.updateLokasi,
        specifiedType: const FullType(String),
      );
    }
    if (object.updateLongitude != null) {
      yield r'updateLongitude';
      yield serializers.serialize(
        object.updateLongitude,
        specifiedType: const FullType(double),
      );
    }
    if (object.updateLatitude != null) {
      yield r'updateLatitude';
      yield serializers.serialize(
        object.updateLatitude,
        specifiedType: const FullType(double),
      );
    }
    if (object.unitKerja != null) {
      yield r'unitKerja';
      yield serializers.serialize(
        object.unitKerja,
        specifiedType: const FullType(String),
      );
    }
    if (object.verifyDate != null) {
      yield r'verifyDate';
      yield serializers.serialize(
        object.verifyDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.idTindaklanjut != null) {
      yield r'idTindaklanjut';
      yield serializers.serialize(
        object.idTindaklanjut,
        specifiedType: const FullType(String),
      );
    }
    if (object.statusKejadian != null) {
      yield r'statusKejadian';
      yield serializers.serialize(
        object.statusKejadian,
        specifiedType: const FullType(num),
      );
    }
    if (object.tindakLanjut != null) {
      yield r'tindakLanjut';
      yield serializers.serialize(
        object.tindakLanjut,
        specifiedType: const FullType(String),
      );
    }
    if (object.dataPendukungTindaklanjut != null) {
      yield r'dataPendukungTindaklanjut';
      yield serializers.serialize(
        object.dataPendukungTindaklanjut,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.waktuTindaklanjut != null) {
      yield r'waktuTindaklanjut';
      yield serializers.serialize(
        object.waktuTindaklanjut,
        specifiedType: const FullType(String),
      );
    }
    if (object.updateWaktuKejadian != null) {
      yield r'updateWaktuKejadian';
      yield serializers.serialize(
        object.updateWaktuKejadian,
        specifiedType: const FullType(String),
      );
    }
    if (object.updateKronologiKejadian != null) {
      yield r'updateKronologiKejadian';
      yield serializers.serialize(
        object.updateKronologiKejadian,
        specifiedType: const FullType(String),
      );
    }
    if (object.updateDataPendukung != null) {
      yield r'updateDataPendukung';
      yield serializers.serialize(
        object.updateDataPendukung,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.nextUpdateModaTransportasi != null) {
      yield r'nextUpdateModaTransportasi';
      yield serializers.serialize(
        object.nextUpdateModaTransportasi,
        specifiedType: const FullType(String),
      );
    }
    if (object.nextUpdateKategori != null) {
      yield r'nextUpdateKategori';
      yield serializers.serialize(
        object.nextUpdateKategori,
        specifiedType: const FullType(String),
      );
    }
    if (object.nextUpdateLokasi != null) {
      yield r'nextUpdateLokasi';
      yield serializers.serialize(
        object.nextUpdateLokasi,
        specifiedType: const FullType(String),
      );
    }
    if (object.nextUpdateLongitude != null) {
      yield r'nextUpdateLongitude';
      yield serializers.serialize(
        object.nextUpdateLongitude,
        specifiedType: const FullType(double),
      );
    }
    if (object.nextUpdateLatitude != null) {
      yield r'nextUpdateLatitude';
      yield serializers.serialize(
        object.nextUpdateLatitude,
        specifiedType: const FullType(double),
      );
    }
    if (object.nextUpdateWaktuKejadian != null) {
      yield r'nextUpdateWaktuKejadian';
      yield serializers.serialize(
        object.nextUpdateWaktuKejadian,
        specifiedType: const FullType(String),
      );
    }
    if (object.nextUpdateKronologiKejadian != null) {
      yield r'nextUpdateKronologiKejadian';
      yield serializers.serialize(
        object.nextUpdateKronologiKejadian,
        specifiedType: const FullType(String),
      );
    }
    if (object.nextUpdateKeterangan != null) {
      yield r'nextUpdateKeterangan';
      yield serializers.serialize(
        object.nextUpdateKeterangan,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IncidentReportIdPut200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IncidentReportIdPut200ResponseDataBuilder result,
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
        case r'nama':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nama = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'noHp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.noHp = valueDes;
          break;
        case r'waktuKejadian':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.waktuKejadian = valueDes;
          break;
        case r'kronologiKejadian':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kronologiKejadian = valueDes;
          break;
        case r'dataPendukung':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.dataPendukung.replace(valueDes);
          break;
        case r'lokasi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lokasi = valueDes;
          break;
        case r'longitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.longitude = valueDes;
          break;
        case r'latitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.latitude = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.status = valueDes;
          break;
        case r'idVerifier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.idVerifier = valueDes;
          break;
        case r'keterangan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.keterangan = valueDes;
          break;
        case r'modaTransportasi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.modaTransportasi = valueDes;
          break;
        case r'kategori':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kategori = valueDes;
          break;
        case r'createDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createDate = valueDes;
          break;
        case r'updateDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.updateDate = valueDes;
          break;
        case r'updateLokasi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.updateLokasi = valueDes;
          break;
        case r'updateLongitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.updateLongitude = valueDes;
          break;
        case r'updateLatitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.updateLatitude = valueDes;
          break;
        case r'unitKerja':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.unitKerja = valueDes;
          break;
        case r'verifyDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.verifyDate = valueDes;
          break;
        case r'idTindaklanjut':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.idTindaklanjut = valueDes;
          break;
        case r'statusKejadian':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.statusKejadian = valueDes;
          break;
        case r'tindakLanjut':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tindakLanjut = valueDes;
          break;
        case r'dataPendukungTindaklanjut':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.dataPendukungTindaklanjut.replace(valueDes);
          break;
        case r'waktuTindaklanjut':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.waktuTindaklanjut = valueDes;
          break;
        case r'updateWaktuKejadian':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.updateWaktuKejadian = valueDes;
          break;
        case r'updateKronologiKejadian':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.updateKronologiKejadian = valueDes;
          break;
        case r'updateDataPendukung':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.updateDataPendukung.replace(valueDes);
          break;
        case r'nextUpdateModaTransportasi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nextUpdateModaTransportasi = valueDes;
          break;
        case r'nextUpdateKategori':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nextUpdateKategori = valueDes;
          break;
        case r'nextUpdateLokasi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nextUpdateLokasi = valueDes;
          break;
        case r'nextUpdateLongitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.nextUpdateLongitude = valueDes;
          break;
        case r'nextUpdateLatitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.nextUpdateLatitude = valueDes;
          break;
        case r'nextUpdateWaktuKejadian':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nextUpdateWaktuKejadian = valueDes;
          break;
        case r'nextUpdateKronologiKejadian':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nextUpdateKronologiKejadian = valueDes;
          break;
        case r'nextUpdateKeterangan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nextUpdateKeterangan = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IncidentReportIdPut200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IncidentReportIdPut200ResponseDataBuilder();
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

