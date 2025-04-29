//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'incident_report_get200_response_data_inner_laporan_kejadian_detail.g.dart';

/// IncidentReportGet200ResponseDataInnerLaporanKejadianDetail
///
/// Properties:
/// * [id] 
/// * [idLaporanKejadian] 
/// * [matra] 
/// * [picPelapor] 
/// * [jenisKecelakaan] 
/// * [saranaTerlibat] 
/// * [korbanMeninggalDunia] 
/// * [korbanLukaBerat] 
/// * [korbanLukaSedang] 
/// * [korbanLukaRingan] 
/// * [korbanHilang] 
/// * [korbanSelamat] 
/// * [onScheneCommander] 
/// * [kerusakanFisik] 
/// * [dampakLingkungan] 
/// * [dampakLaluLintas] 
/// * [statusPenanggulangan] 
/// * [laporanFinal] 
/// * [createDate] 
/// * [updateDate] 
/// * [isApproved] 
/// * [approvedBy] 
/// * [approvedDate] 
/// * [notes] 
/// * [rejectedBy] 
/// * [reason] 
/// * [additionalComments] 
@BuiltValue()
abstract class IncidentReportGet200ResponseDataInnerLaporanKejadianDetail implements Built<IncidentReportGet200ResponseDataInnerLaporanKejadianDetail, IncidentReportGet200ResponseDataInnerLaporanKejadianDetailBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'idLaporanKejadian')
  String? get idLaporanKejadian;

  @BuiltValueField(wireName: r'matra')
  String? get matra;

  @BuiltValueField(wireName: r'picPelapor')
  String? get picPelapor;

  @BuiltValueField(wireName: r'jenisKecelakaan')
  String? get jenisKecelakaan;

  @BuiltValueField(wireName: r'saranaTerlibat')
  BuiltList<String>? get saranaTerlibat;

  @BuiltValueField(wireName: r'korbanMeninggalDunia')
  num? get korbanMeninggalDunia;

  @BuiltValueField(wireName: r'korbanLukaBerat')
  num? get korbanLukaBerat;

  @BuiltValueField(wireName: r'korbanLukaSedang')
  num? get korbanLukaSedang;

  @BuiltValueField(wireName: r'korbanLukaRingan')
  num? get korbanLukaRingan;

  @BuiltValueField(wireName: r'korbanHilang')
  num? get korbanHilang;

  @BuiltValueField(wireName: r'korbanSelamat')
  num? get korbanSelamat;

  @BuiltValueField(wireName: r'onScheneCommander')
  String? get onScheneCommander;

  @BuiltValueField(wireName: r'kerusakanFisik')
  String? get kerusakanFisik;

  @BuiltValueField(wireName: r'dampakLingkungan')
  String? get dampakLingkungan;

  @BuiltValueField(wireName: r'dampakLaluLintas')
  String? get dampakLaluLintas;

  @BuiltValueField(wireName: r'statusPenanggulangan')
  String? get statusPenanggulangan;

  @BuiltValueField(wireName: r'laporanFinal')
  String? get laporanFinal;

  @BuiltValueField(wireName: r'createDate')
  String? get createDate;

  @BuiltValueField(wireName: r'updateDate')
  String? get updateDate;

  @BuiltValueField(wireName: r'isApproved')
  bool? get isApproved;

  @BuiltValueField(wireName: r'approvedBy')
  String? get approvedBy;

  @BuiltValueField(wireName: r'approvedDate')
  String? get approvedDate;

  @BuiltValueField(wireName: r'notes')
  String? get notes;

  @BuiltValueField(wireName: r'rejectedBy')
  String? get rejectedBy;

  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'additionalComments')
  String? get additionalComments;

  IncidentReportGet200ResponseDataInnerLaporanKejadianDetail._();

  factory IncidentReportGet200ResponseDataInnerLaporanKejadianDetail([void updates(IncidentReportGet200ResponseDataInnerLaporanKejadianDetailBuilder b)]) = _$IncidentReportGet200ResponseDataInnerLaporanKejadianDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IncidentReportGet200ResponseDataInnerLaporanKejadianDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IncidentReportGet200ResponseDataInnerLaporanKejadianDetail> get serializer => _$IncidentReportGet200ResponseDataInnerLaporanKejadianDetailSerializer();
}

class _$IncidentReportGet200ResponseDataInnerLaporanKejadianDetailSerializer implements PrimitiveSerializer<IncidentReportGet200ResponseDataInnerLaporanKejadianDetail> {
  @override
  final Iterable<Type> types = const [IncidentReportGet200ResponseDataInnerLaporanKejadianDetail, _$IncidentReportGet200ResponseDataInnerLaporanKejadianDetail];

  @override
  final String wireName = r'IncidentReportGet200ResponseDataInnerLaporanKejadianDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IncidentReportGet200ResponseDataInnerLaporanKejadianDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.idLaporanKejadian != null) {
      yield r'idLaporanKejadian';
      yield serializers.serialize(
        object.idLaporanKejadian,
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
    if (object.picPelapor != null) {
      yield r'picPelapor';
      yield serializers.serialize(
        object.picPelapor,
        specifiedType: const FullType(String),
      );
    }
    if (object.jenisKecelakaan != null) {
      yield r'jenisKecelakaan';
      yield serializers.serialize(
        object.jenisKecelakaan,
        specifiedType: const FullType(String),
      );
    }
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
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
    if (object.additionalComments != null) {
      yield r'additionalComments';
      yield serializers.serialize(
        object.additionalComments,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IncidentReportGet200ResponseDataInnerLaporanKejadianDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IncidentReportGet200ResponseDataInnerLaporanKejadianDetailBuilder result,
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
        case r'idLaporanKejadian':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.idLaporanKejadian = valueDes;
          break;
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
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        case r'additionalComments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.additionalComments = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IncidentReportGet200ResponseDataInnerLaporanKejadianDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IncidentReportGet200ResponseDataInnerLaporanKejadianDetailBuilder();
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

