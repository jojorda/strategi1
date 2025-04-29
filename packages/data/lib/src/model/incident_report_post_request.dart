//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/incident_report_post_request_laporan_kejadian_detail.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'incident_report_post_request.g.dart';

/// IncidentReportPostRequest
///
/// Properties:
/// * [nama] - Name of the reporter
/// * [email] - Email of the reporter
/// * [noHp] - Reporter's phone number
/// * [waktuKejadian] - When the incident occurred
/// * [kronologiKejadian] - Detailed chronology of the incident
/// * [dataPendukung] - Supporting data files (usually file paths or URLs)
/// * [lokasi] - Location description of the incident
/// * [longitude] - Longitude coordinate of the incident
/// * [latitude] - Latitude coordinate of the incident
/// * [modaTransportasi] - Mode of transportation involved
/// * [kategori] - Category of the incident
/// * [unitKerja] - Working unit related to the incident
/// * [laporanKejadianDetail] 
@BuiltValue()
abstract class IncidentReportPostRequest implements Built<IncidentReportPostRequest, IncidentReportPostRequestBuilder> {
  /// Name of the reporter
  @BuiltValueField(wireName: r'nama')
  String get nama;

  /// Email of the reporter
  @BuiltValueField(wireName: r'email')
  String? get email;

  /// Reporter's phone number
  @BuiltValueField(wireName: r'noHp')
  String? get noHp;

  /// When the incident occurred
  @BuiltValueField(wireName: r'waktuKejadian')
  String get waktuKejadian;

  /// Detailed chronology of the incident
  @BuiltValueField(wireName: r'kronologiKejadian')
  String get kronologiKejadian;

  /// Supporting data files (usually file paths or URLs)
  @BuiltValueField(wireName: r'dataPendukung')
  BuiltList<String>? get dataPendukung;

  /// Location description of the incident
  @BuiltValueField(wireName: r'lokasi')
  String get lokasi;

  /// Longitude coordinate of the incident
  @BuiltValueField(wireName: r'longitude')
  double? get longitude;

  /// Latitude coordinate of the incident
  @BuiltValueField(wireName: r'latitude')
  double? get latitude;

  /// Mode of transportation involved
  @BuiltValueField(wireName: r'modaTransportasi')
  String? get modaTransportasi;

  /// Category of the incident
  @BuiltValueField(wireName: r'kategori')
  String? get kategori;

  /// Working unit related to the incident
  @BuiltValueField(wireName: r'unitKerja')
  String? get unitKerja;

  @BuiltValueField(wireName: r'laporanKejadianDetail')
  IncidentReportPostRequestLaporanKejadianDetail? get laporanKejadianDetail;

  IncidentReportPostRequest._();

  factory IncidentReportPostRequest([void updates(IncidentReportPostRequestBuilder b)]) = _$IncidentReportPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IncidentReportPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IncidentReportPostRequest> get serializer => _$IncidentReportPostRequestSerializer();
}

class _$IncidentReportPostRequestSerializer implements PrimitiveSerializer<IncidentReportPostRequest> {
  @override
  final Iterable<Type> types = const [IncidentReportPostRequest, _$IncidentReportPostRequest];

  @override
  final String wireName = r'IncidentReportPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IncidentReportPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'nama';
    yield serializers.serialize(
      object.nama,
      specifiedType: const FullType(String),
    );
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
    yield r'waktuKejadian';
    yield serializers.serialize(
      object.waktuKejadian,
      specifiedType: const FullType(String),
    );
    yield r'kronologiKejadian';
    yield serializers.serialize(
      object.kronologiKejadian,
      specifiedType: const FullType(String),
    );
    if (object.dataPendukung != null) {
      yield r'dataPendukung';
      yield serializers.serialize(
        object.dataPendukung,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    yield r'lokasi';
    yield serializers.serialize(
      object.lokasi,
      specifiedType: const FullType(String),
    );
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
    if (object.unitKerja != null) {
      yield r'unitKerja';
      yield serializers.serialize(
        object.unitKerja,
        specifiedType: const FullType(String),
      );
    }
    if (object.laporanKejadianDetail != null) {
      yield r'laporanKejadianDetail';
      yield serializers.serialize(
        object.laporanKejadianDetail,
        specifiedType: const FullType(IncidentReportPostRequestLaporanKejadianDetail),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IncidentReportPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IncidentReportPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'unitKerja':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.unitKerja = valueDes;
          break;
        case r'laporanKejadianDetail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IncidentReportPostRequestLaporanKejadianDetail),
          ) as IncidentReportPostRequestLaporanKejadianDetail;
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
  IncidentReportPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IncidentReportPostRequestBuilder();
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

