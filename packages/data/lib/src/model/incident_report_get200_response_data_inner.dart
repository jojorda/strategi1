//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/incident_report_get200_response_data_inner_laporan_kejadian_detail.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'incident_report_get200_response_data_inner.g.dart';

/// IncidentReportGet200ResponseDataInner
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
/// * [laporanKejadianDetail] 
@BuiltValue()
abstract class IncidentReportGet200ResponseDataInner implements Built<IncidentReportGet200ResponseDataInner, IncidentReportGet200ResponseDataInnerBuilder> {
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

  @BuiltValueField(wireName: r'laporanKejadianDetail')
  IncidentReportGet200ResponseDataInnerLaporanKejadianDetail? get laporanKejadianDetail;

  IncidentReportGet200ResponseDataInner._();

  factory IncidentReportGet200ResponseDataInner([void updates(IncidentReportGet200ResponseDataInnerBuilder b)]) = _$IncidentReportGet200ResponseDataInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IncidentReportGet200ResponseDataInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IncidentReportGet200ResponseDataInner> get serializer => _$IncidentReportGet200ResponseDataInnerSerializer();
}

class _$IncidentReportGet200ResponseDataInnerSerializer implements PrimitiveSerializer<IncidentReportGet200ResponseDataInner> {
  @override
  final Iterable<Type> types = const [IncidentReportGet200ResponseDataInner, _$IncidentReportGet200ResponseDataInner];

  @override
  final String wireName = r'IncidentReportGet200ResponseDataInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IncidentReportGet200ResponseDataInner object, {
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
    if (object.laporanKejadianDetail != null) {
      yield r'laporanKejadianDetail';
      yield serializers.serialize(
        object.laporanKejadianDetail,
        specifiedType: const FullType(IncidentReportGet200ResponseDataInnerLaporanKejadianDetail),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IncidentReportGet200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IncidentReportGet200ResponseDataInnerBuilder result,
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
        case r'laporanKejadianDetail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IncidentReportGet200ResponseDataInnerLaporanKejadianDetail),
          ) as IncidentReportGet200ResponseDataInnerLaporanKejadianDetail;
          result.laporanKejadianDetail.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IncidentReportGet200ResponseDataInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IncidentReportGet200ResponseDataInnerBuilder();
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

