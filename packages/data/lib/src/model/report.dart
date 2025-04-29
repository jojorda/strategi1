//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/cuaca.dart';
import 'package:strategi_mobile_api/src/model/date.dart';
import 'package:strategi_mobile_api/src/model/kecelakaan.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report.g.dart';

/// Report
///
/// Properties:
/// * [id] 
/// * [type] 
/// * [matra] - Transportation mode (Darat, Laut, Udara, etc.)
/// * [event] 
/// * [nama] 
/// * [personil] 
/// * [pengikut] - Comma separated (,)
/// * [tanggal] 
/// * [provinsi] 
/// * [kabupaten] 
/// * [angkutan] 
/// * [unitPelayanan] 
/// * [deskripsi] 
/// * [isKejadianMenonjol] 
/// * [kejadianMenonjol] 
/// * [koordinatKejadianMenonjol] 
/// * [isKecelakaan] 
/// * [kecelakaan] 
/// * [koordinatKecelakaan] 
/// * [lokasiKecelakaan] 
/// * [pembuat] 
/// * [persetujuan] 
/// * [file] 
/// * [photo] 
/// * [captionPhoto] 
/// * [isApproved] 
/// * [approvedBy] 
/// * [approvedDate] 
/// * [approvedNotes] 
/// * [rejectedBy] 
/// * [rejectedDate] 
/// * [rejectedReason] 
/// * [rejectedAdditionalComments] 
/// * [createdAt] 
/// * [updatedAt] 
/// * [kecelakaanList] 
/// * [cuacaList] 
@BuiltValue()
abstract class Report implements Built<Report, ReportBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'type')
  String? get type;

  /// Transportation mode (Darat, Laut, Udara, etc.)
  @BuiltValueField(wireName: r'matra')
  String? get matra;

  @BuiltValueField(wireName: r'event')
  String? get event;

  @BuiltValueField(wireName: r'nama')
  String? get nama;

  @BuiltValueField(wireName: r'personil')
  String? get personil;

  /// Comma separated (,)
  @BuiltValueField(wireName: r'pengikut')
  String? get pengikut;

  @BuiltValueField(wireName: r'tanggal')
  Date? get tanggal;

  @BuiltValueField(wireName: r'provinsi')
  String? get provinsi;

  @BuiltValueField(wireName: r'kabupaten')
  String? get kabupaten;

  @BuiltValueField(wireName: r'angkutan')
  String? get angkutan;

  @BuiltValueField(wireName: r'unitPelayanan')
  String? get unitPelayanan;

  @BuiltValueField(wireName: r'deskripsi')
  String? get deskripsi;

  @BuiltValueField(wireName: r'isKejadianMenonjol')
  bool? get isKejadianMenonjol;

  @BuiltValueField(wireName: r'kejadianMenonjol')
  String? get kejadianMenonjol;

  @BuiltValueField(wireName: r'koordinatKejadianMenonjol')
  String? get koordinatKejadianMenonjol;

  @BuiltValueField(wireName: r'isKecelakaan')
  bool? get isKecelakaan;

  @BuiltValueField(wireName: r'kecelakaan')
  String? get kecelakaan;

  @BuiltValueField(wireName: r'koordinatKecelakaan')
  String? get koordinatKecelakaan;

  @BuiltValueField(wireName: r'lokasiKecelakaan')
  String? get lokasiKecelakaan;

  @BuiltValueField(wireName: r'pembuat')
  String? get pembuat;

  @BuiltValueField(wireName: r'persetujuan')
  String? get persetujuan;

  @BuiltValueField(wireName: r'file')
  String? get file;

  @BuiltValueField(wireName: r'photo')
  String? get photo;

  @BuiltValueField(wireName: r'captionPhoto')
  String? get captionPhoto;

  @BuiltValueField(wireName: r'isApproved')
  bool? get isApproved;

  @BuiltValueField(wireName: r'approvedBy')
  String? get approvedBy;

  @BuiltValueField(wireName: r'approvedDate')
  String? get approvedDate;

  @BuiltValueField(wireName: r'approvedNotes')
  String? get approvedNotes;

  @BuiltValueField(wireName: r'rejectedBy')
  String? get rejectedBy;

  @BuiltValueField(wireName: r'rejectedDate')
  String? get rejectedDate;

  @BuiltValueField(wireName: r'rejectedReason')
  String? get rejectedReason;

  @BuiltValueField(wireName: r'rejectedAdditionalComments')
  String? get rejectedAdditionalComments;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: r'kecelakaanList')
  BuiltList<Kecelakaan>? get kecelakaanList;

  @BuiltValueField(wireName: r'cuacaList')
  BuiltList<Cuaca>? get cuacaList;

  Report._();

  factory Report([void updates(ReportBuilder b)]) = _$Report;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportBuilder b) => b
      ..isKejadianMenonjol = false
      ..isKecelakaan = false;

  @BuiltValueSerializer(custom: true)
  static Serializer<Report> get serializer => _$ReportSerializer();
}

class _$ReportSerializer implements PrimitiveSerializer<Report> {
  @override
  final Iterable<Type> types = const [Report, _$Report];

  @override
  final String wireName = r'Report';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Report object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
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
    if (object.event != null) {
      yield r'event';
      yield serializers.serialize(
        object.event,
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
    if (object.personil != null) {
      yield r'personil';
      yield serializers.serialize(
        object.personil,
        specifiedType: const FullType(String),
      );
    }
    if (object.pengikut != null) {
      yield r'pengikut';
      yield serializers.serialize(
        object.pengikut,
        specifiedType: const FullType(String),
      );
    }
    if (object.tanggal != null) {
      yield r'tanggal';
      yield serializers.serialize(
        object.tanggal,
        specifiedType: const FullType(Date),
      );
    }
    if (object.provinsi != null) {
      yield r'provinsi';
      yield serializers.serialize(
        object.provinsi,
        specifiedType: const FullType(String),
      );
    }
    if (object.kabupaten != null) {
      yield r'kabupaten';
      yield serializers.serialize(
        object.kabupaten,
        specifiedType: const FullType(String),
      );
    }
    if (object.angkutan != null) {
      yield r'angkutan';
      yield serializers.serialize(
        object.angkutan,
        specifiedType: const FullType(String),
      );
    }
    if (object.unitPelayanan != null) {
      yield r'unitPelayanan';
      yield serializers.serialize(
        object.unitPelayanan,
        specifiedType: const FullType(String),
      );
    }
    if (object.deskripsi != null) {
      yield r'deskripsi';
      yield serializers.serialize(
        object.deskripsi,
        specifiedType: const FullType(String),
      );
    }
    if (object.isKejadianMenonjol != null) {
      yield r'isKejadianMenonjol';
      yield serializers.serialize(
        object.isKejadianMenonjol,
        specifiedType: const FullType(bool),
      );
    }
    if (object.kejadianMenonjol != null) {
      yield r'kejadianMenonjol';
      yield serializers.serialize(
        object.kejadianMenonjol,
        specifiedType: const FullType(String),
      );
    }
    if (object.koordinatKejadianMenonjol != null) {
      yield r'koordinatKejadianMenonjol';
      yield serializers.serialize(
        object.koordinatKejadianMenonjol,
        specifiedType: const FullType(String),
      );
    }
    if (object.isKecelakaan != null) {
      yield r'isKecelakaan';
      yield serializers.serialize(
        object.isKecelakaan,
        specifiedType: const FullType(bool),
      );
    }
    if (object.kecelakaan != null) {
      yield r'kecelakaan';
      yield serializers.serialize(
        object.kecelakaan,
        specifiedType: const FullType(String),
      );
    }
    if (object.koordinatKecelakaan != null) {
      yield r'koordinatKecelakaan';
      yield serializers.serialize(
        object.koordinatKecelakaan,
        specifiedType: const FullType(String),
      );
    }
    if (object.lokasiKecelakaan != null) {
      yield r'lokasiKecelakaan';
      yield serializers.serialize(
        object.lokasiKecelakaan,
        specifiedType: const FullType(String),
      );
    }
    if (object.pembuat != null) {
      yield r'pembuat';
      yield serializers.serialize(
        object.pembuat,
        specifiedType: const FullType(String),
      );
    }
    if (object.persetujuan != null) {
      yield r'persetujuan';
      yield serializers.serialize(
        object.persetujuan,
        specifiedType: const FullType(String),
      );
    }
    if (object.file != null) {
      yield r'file';
      yield serializers.serialize(
        object.file,
        specifiedType: const FullType(String),
      );
    }
    if (object.photo != null) {
      yield r'photo';
      yield serializers.serialize(
        object.photo,
        specifiedType: const FullType(String),
      );
    }
    if (object.captionPhoto != null) {
      yield r'captionPhoto';
      yield serializers.serialize(
        object.captionPhoto,
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
    if (object.approvedNotes != null) {
      yield r'approvedNotes';
      yield serializers.serialize(
        object.approvedNotes,
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
    if (object.rejectedDate != null) {
      yield r'rejectedDate';
      yield serializers.serialize(
        object.rejectedDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.rejectedReason != null) {
      yield r'rejectedReason';
      yield serializers.serialize(
        object.rejectedReason,
        specifiedType: const FullType(String),
      );
    }
    if (object.rejectedAdditionalComments != null) {
      yield r'rejectedAdditionalComments';
      yield serializers.serialize(
        object.rejectedAdditionalComments,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.kecelakaanList != null) {
      yield r'kecelakaanList';
      yield serializers.serialize(
        object.kecelakaanList,
        specifiedType: const FullType(BuiltList, [FullType(Kecelakaan)]),
      );
    }
    if (object.cuacaList != null) {
      yield r'cuacaList';
      yield serializers.serialize(
        object.cuacaList,
        specifiedType: const FullType(BuiltList, [FullType(Cuaca)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Report object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReportBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'matra':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.matra = valueDes;
          break;
        case r'event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.event = valueDes;
          break;
        case r'nama':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nama = valueDes;
          break;
        case r'personil':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.personil = valueDes;
          break;
        case r'pengikut':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pengikut = valueDes;
          break;
        case r'tanggal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.tanggal = valueDes;
          break;
        case r'provinsi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.provinsi = valueDes;
          break;
        case r'kabupaten':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kabupaten = valueDes;
          break;
        case r'angkutan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.angkutan = valueDes;
          break;
        case r'unitPelayanan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.unitPelayanan = valueDes;
          break;
        case r'deskripsi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.deskripsi = valueDes;
          break;
        case r'isKejadianMenonjol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isKejadianMenonjol = valueDes;
          break;
        case r'kejadianMenonjol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kejadianMenonjol = valueDes;
          break;
        case r'koordinatKejadianMenonjol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.koordinatKejadianMenonjol = valueDes;
          break;
        case r'isKecelakaan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.isKecelakaan = valueDes;
          break;
        case r'kecelakaan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kecelakaan = valueDes;
          break;
        case r'koordinatKecelakaan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.koordinatKecelakaan = valueDes;
          break;
        case r'lokasiKecelakaan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lokasiKecelakaan = valueDes;
          break;
        case r'pembuat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pembuat = valueDes;
          break;
        case r'persetujuan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.persetujuan = valueDes;
          break;
        case r'file':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.file = valueDes;
          break;
        case r'photo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.photo = valueDes;
          break;
        case r'captionPhoto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.captionPhoto = valueDes;
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
        case r'approvedNotes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.approvedNotes = valueDes;
          break;
        case r'rejectedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rejectedBy = valueDes;
          break;
        case r'rejectedDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rejectedDate = valueDes;
          break;
        case r'rejectedReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rejectedReason = valueDes;
          break;
        case r'rejectedAdditionalComments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rejectedAdditionalComments = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'kecelakaanList':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Kecelakaan)]),
          ) as BuiltList<Kecelakaan>;
          result.kecelakaanList.replace(valueDes);
          break;
        case r'cuacaList':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Cuaca)]),
          ) as BuiltList<Cuaca>;
          result.cuacaList.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Report deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportBuilder();
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

