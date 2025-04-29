//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'incident_report_post_request_laporan_kejadian_detail.g.dart';

/// IncidentReportPostRequestLaporanKejadianDetail
///
/// Properties:
/// * [matra] - Military or other relevant sector involved
/// * [picPelapor] 
/// * [jenisKecelakaan] - Type of the accident
/// * [saranaTerlibat] - Vehicles involved in the incident
/// * [korbanMeninggalDunia] - Number of fatalities
/// * [korbanLukaBerat] - Number of severely injured people
/// * [korbanLukaSedang] - Number of moderately injured people
/// * [korbanLukaRingan] - Number of lightly injured people
/// * [korbanHilang] - Number of missing people
/// * [korbanSelamat] - Number of survivors
/// * [onScheneCommander] - Person in charge at the scene
/// * [kerusakanFisik] - Physical damage caused by the incident
/// * [dampakLingkungan] - Environmental impact of the incident
/// * [dampakLaluLintas] - Traffic impact of the incident
/// * [statusPenanggulangan] - Status of the incident handling
/// * [laporanFinal] - Final report status
/// * [isApproved] - Approval status of the report
/// * [approvedBy] - Name of the person who approved the report
/// * [approvedDate] - Date of approval
/// * [notes] - Additional notes
/// * [rejectedBy] - Name of the person who rejected the report
@BuiltValue()
abstract class IncidentReportPostRequestLaporanKejadianDetail implements Built<IncidentReportPostRequestLaporanKejadianDetail, IncidentReportPostRequestLaporanKejadianDetailBuilder> {
  /// Military or other relevant sector involved
  @BuiltValueField(wireName: r'matra')
  String get matra;

  @BuiltValueField(wireName: r'picPelapor')
  String? get picPelapor;

  /// Type of the accident
  @BuiltValueField(wireName: r'jenisKecelakaan')
  String get jenisKecelakaan;

  /// Vehicles involved in the incident
  @BuiltValueField(wireName: r'saranaTerlibat')
  BuiltList<String>? get saranaTerlibat;

  /// Number of fatalities
  @BuiltValueField(wireName: r'korbanMeninggalDunia')
  num? get korbanMeninggalDunia;

  /// Number of severely injured people
  @BuiltValueField(wireName: r'korbanLukaBerat')
  num? get korbanLukaBerat;

  /// Number of moderately injured people
  @BuiltValueField(wireName: r'korbanLukaSedang')
  num? get korbanLukaSedang;

  /// Number of lightly injured people
  @BuiltValueField(wireName: r'korbanLukaRingan')
  num? get korbanLukaRingan;

  /// Number of missing people
  @BuiltValueField(wireName: r'korbanHilang')
  num? get korbanHilang;

  /// Number of survivors
  @BuiltValueField(wireName: r'korbanSelamat')
  num? get korbanSelamat;

  /// Person in charge at the scene
  @BuiltValueField(wireName: r'onScheneCommander')
  String? get onScheneCommander;

  /// Physical damage caused by the incident
  @BuiltValueField(wireName: r'kerusakanFisik')
  String? get kerusakanFisik;

  /// Environmental impact of the incident
  @BuiltValueField(wireName: r'dampakLingkungan')
  String? get dampakLingkungan;

  /// Traffic impact of the incident
  @BuiltValueField(wireName: r'dampakLaluLintas')
  String? get dampakLaluLintas;

  /// Status of the incident handling
  @BuiltValueField(wireName: r'statusPenanggulangan')
  String? get statusPenanggulangan;

  /// Final report status
  @BuiltValueField(wireName: r'laporanFinal')
  String? get laporanFinal;

  /// Approval status of the report
  @BuiltValueField(wireName: r'isApproved')
  bool? get isApproved;

  /// Name of the person who approved the report
  @BuiltValueField(wireName: r'approvedBy')
  String? get approvedBy;

  /// Date of approval
  @BuiltValueField(wireName: r'approvedDate')
  String? get approvedDate;

  /// Additional notes
  @BuiltValueField(wireName: r'notes')
  String? get notes;

  /// Name of the person who rejected the report
  @BuiltValueField(wireName: r'rejectedBy')
  String? get rejectedBy;

  IncidentReportPostRequestLaporanKejadianDetail._();

  factory IncidentReportPostRequestLaporanKejadianDetail([void updates(IncidentReportPostRequestLaporanKejadianDetailBuilder b)]) = _$IncidentReportPostRequestLaporanKejadianDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IncidentReportPostRequestLaporanKejadianDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IncidentReportPostRequestLaporanKejadianDetail> get serializer => _$IncidentReportPostRequestLaporanKejadianDetailSerializer();
}

class _$IncidentReportPostRequestLaporanKejadianDetailSerializer implements PrimitiveSerializer<IncidentReportPostRequestLaporanKejadianDetail> {
  @override
  final Iterable<Type> types = const [IncidentReportPostRequestLaporanKejadianDetail, _$IncidentReportPostRequestLaporanKejadianDetail];

  @override
  final String wireName = r'IncidentReportPostRequestLaporanKejadianDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IncidentReportPostRequestLaporanKejadianDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'matra';
    yield serializers.serialize(
      object.matra,
      specifiedType: const FullType(String),
    );
    if (object.picPelapor != null) {
      yield r'picPelapor';
      yield serializers.serialize(
        object.picPelapor,
        specifiedType: const FullType(String),
      );
    }
    yield r'jenisKecelakaan';
    yield serializers.serialize(
      object.jenisKecelakaan,
      specifiedType: const FullType(String),
    );
    if (object.saranaTerlibat != null) {
      yield r'saranaTerlibat';
      yield serializers.serialize(
        object.saranaTerlibat,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.korbanMeninggalDunia != null) {
      yield r'korbanMeninggalDunia';
      yield serializers.serialize(
        object.korbanMeninggalDunia,
        specifiedType: const FullType(num),
      );
    }
    if (object.korbanLukaBerat != null) {
      yield r'korbanLukaBerat';
      yield serializers.serialize(
        object.korbanLukaBerat,
        specifiedType: const FullType(num),
      );
    }
    if (object.korbanLukaSedang != null) {
      yield r'korbanLukaSedang';
      yield serializers.serialize(
        object.korbanLukaSedang,
        specifiedType: const FullType(num),
      );
    }
    if (object.korbanLukaRingan != null) {
      yield r'korbanLukaRingan';
      yield serializers.serialize(
        object.korbanLukaRingan,
        specifiedType: const FullType(num),
      );
    }
    if (object.korbanHilang != null) {
      yield r'korbanHilang';
      yield serializers.serialize(
        object.korbanHilang,
        specifiedType: const FullType(num),
      );
    }
    if (object.korbanSelamat != null) {
      yield r'korbanSelamat';
      yield serializers.serialize(
        object.korbanSelamat,
        specifiedType: const FullType(num),
      );
    }
    if (object.onScheneCommander != null) {
      yield r'onScheneCommander';
      yield serializers.serialize(
        object.onScheneCommander,
        specifiedType: const FullType(String),
      );
    }
    if (object.kerusakanFisik != null) {
      yield r'kerusakanFisik';
      yield serializers.serialize(
        object.kerusakanFisik,
        specifiedType: const FullType(String),
      );
    }
    if (object.dampakLingkungan != null) {
      yield r'dampakLingkungan';
      yield serializers.serialize(
        object.dampakLingkungan,
        specifiedType: const FullType(String),
      );
    }
    if (object.dampakLaluLintas != null) {
      yield r'dampakLaluLintas';
      yield serializers.serialize(
        object.dampakLaluLintas,
        specifiedType: const FullType(String),
      );
    }
    if (object.statusPenanggulangan != null) {
      yield r'statusPenanggulangan';
      yield serializers.serialize(
        object.statusPenanggulangan,
        specifiedType: const FullType(String),
      );
    }
    if (object.laporanFinal != null) {
      yield r'laporanFinal';
      yield serializers.serialize(
        object.laporanFinal,
        specifiedType: const FullType(String),
      );
    }
    if (object.isApproved != null) {
      yield r'isApproved';
      yield serializers.serialize(
        object.isApproved,
        specifiedType: const FullType(bool),
      );
    }
    if (object.approvedBy != null) {
      yield r'approvedBy';
      yield serializers.serialize(
        object.approvedBy,
        specifiedType: const FullType(String),
      );
    }
    if (object.approvedDate != null) {
      yield r'approvedDate';
      yield serializers.serialize(
        object.approvedDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.notes != null) {
      yield r'notes';
      yield serializers.serialize(
        object.notes,
        specifiedType: const FullType(String),
      );
    }
    if (object.rejectedBy != null) {
      yield r'rejectedBy';
      yield serializers.serialize(
        object.rejectedBy,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IncidentReportPostRequestLaporanKejadianDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IncidentReportPostRequestLaporanKejadianDetailBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'matra':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.matra = valueDes;
          break;
        case r'picPelapor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.picPelapor = valueDes;
          break;
        case r'jenisKecelakaan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.jenisKecelakaan = valueDes;
          break;
        case r'saranaTerlibat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.saranaTerlibat.replace(valueDes);
          break;
        case r'korbanMeninggalDunia':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.korbanMeninggalDunia = valueDes;
          break;
        case r'korbanLukaBerat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.korbanLukaBerat = valueDes;
          break;
        case r'korbanLukaSedang':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.korbanLukaSedang = valueDes;
          break;
        case r'korbanLukaRingan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.korbanLukaRingan = valueDes;
          break;
        case r'korbanHilang':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.korbanHilang = valueDes;
          break;
        case r'korbanSelamat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.korbanSelamat = valueDes;
          break;
        case r'onScheneCommander':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.onScheneCommander = valueDes;
          break;
        case r'kerusakanFisik':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kerusakanFisik = valueDes;
          break;
        case r'dampakLingkungan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dampakLingkungan = valueDes;
          break;
        case r'dampakLaluLintas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dampakLaluLintas = valueDes;
          break;
        case r'statusPenanggulangan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.statusPenanggulangan = valueDes;
          break;
        case r'laporanFinal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.laporanFinal = valueDes;
          break;
        case r'isApproved':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isApproved = valueDes;
          break;
        case r'approvedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.approvedBy = valueDes;
          break;
        case r'approvedDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.approvedDate = valueDes;
          break;
        case r'notes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.notes = valueDes;
          break;
        case r'rejectedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rejectedBy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IncidentReportPostRequestLaporanKejadianDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IncidentReportPostRequestLaporanKejadianDetailBuilder();
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

