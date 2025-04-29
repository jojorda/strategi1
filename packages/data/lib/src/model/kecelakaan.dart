//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'kecelakaan.g.dart';

/// Kecelakaan
///
/// Properties:
/// * [id] 
/// * [idLaporanPantau] - ID of the associated report
/// * [matra] - Transportation mode (Darat, Laut, Udara, etc.)
/// * [tanggalWaktuKejadian] - Date and time of the accident
/// * [jenisKecelakaan] - Type of accident
/// * [uraian] - Detailed description of the accident
/// * [korbanJiwa] - Number of fatalities
/// * [lukaBerat] - Number of seriously injured people
/// * [lukaRingan] - Number of slightly injured people
/// * [hilang] - Number of missing people
/// * [selamat] - Number of survivors
/// * [dampakLingkunganJenis] - Type of environmental impact
/// * [dampakLingkunganUraian] - Description of environmental impact
/// * [dampakLaluLintasJenis] - Type of traffic impact
/// * [dampakLaluLintasUraian] - Description of traffic impact
/// * [statusPenanggulanganJenis] - Type of response/mitigation status
/// * [statusPenanggulanganUraian] - Description of response/mitigation efforts
/// * [lokasi] - Location description of the accident
/// * [koordinat] - Geographic coordinates of the accident location
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class Kecelakaan implements Built<Kecelakaan, KecelakaanBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// ID of the associated report
  @BuiltValueField(wireName: r'idLaporanPantau')
  int? get idLaporanPantau;

  /// Transportation mode (Darat, Laut, Udara, etc.)
  @BuiltValueField(wireName: r'matra')
  String? get matra;

  /// Date and time of the accident
  @BuiltValueField(wireName: r'tanggalWaktuKejadian')
  DateTime? get tanggalWaktuKejadian;

  /// Type of accident
  @BuiltValueField(wireName: r'jenisKecelakaan')
  String? get jenisKecelakaan;

  /// Detailed description of the accident
  @BuiltValueField(wireName: r'uraian')
  String? get uraian;

  /// Number of fatalities
  @BuiltValueField(wireName: r'korbanJiwa')
  int? get korbanJiwa;

  /// Number of seriously injured people
  @BuiltValueField(wireName: r'lukaBerat')
  int? get lukaBerat;

  /// Number of slightly injured people
  @BuiltValueField(wireName: r'lukaRingan')
  int? get lukaRingan;

  /// Number of missing people
  @BuiltValueField(wireName: r'hilang')
  int? get hilang;

  /// Number of survivors
  @BuiltValueField(wireName: r'selamat')
  int? get selamat;

  /// Type of environmental impact
  @BuiltValueField(wireName: r'dampakLingkunganJenis')
  String? get dampakLingkunganJenis;

  /// Description of environmental impact
  @BuiltValueField(wireName: r'dampakLingkunganUraian')
  String? get dampakLingkunganUraian;

  /// Type of traffic impact
  @BuiltValueField(wireName: r'dampakLaluLintasJenis')
  String? get dampakLaluLintasJenis;

  /// Description of traffic impact
  @BuiltValueField(wireName: r'dampakLaluLintasUraian')
  String? get dampakLaluLintasUraian;

  /// Type of response/mitigation status
  @BuiltValueField(wireName: r'statusPenanggulanganJenis')
  String? get statusPenanggulanganJenis;

  /// Description of response/mitigation efforts
  @BuiltValueField(wireName: r'statusPenanggulanganUraian')
  String? get statusPenanggulanganUraian;

  /// Location description of the accident
  @BuiltValueField(wireName: r'lokasi')
  String? get lokasi;

  /// Geographic coordinates of the accident location
  @BuiltValueField(wireName: r'koordinat')
  String? get koordinat;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  Kecelakaan._();

  factory Kecelakaan([void updates(KecelakaanBuilder b)]) = _$Kecelakaan;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(KecelakaanBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Kecelakaan> get serializer => _$KecelakaanSerializer();
}

class _$KecelakaanSerializer implements PrimitiveSerializer<Kecelakaan> {
  @override
  final Iterable<Type> types = const [Kecelakaan, _$Kecelakaan];

  @override
  final String wireName = r'Kecelakaan';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Kecelakaan object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.idLaporanPantau != null) {
      yield r'idLaporanPantau';
      yield serializers.serialize(
        object.idLaporanPantau,
        specifiedType: const FullType(int),
      );
    }
    if (object.matra != null) {
      yield r'matra';
      yield serializers.serialize(
        object.matra,
        specifiedType: const FullType(String),
      );
    }
    if (object.tanggalWaktuKejadian != null) {
      yield r'tanggalWaktuKejadian';
      yield serializers.serialize(
        object.tanggalWaktuKejadian,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.jenisKecelakaan != null) {
      yield r'jenisKecelakaan';
      yield serializers.serialize(
        object.jenisKecelakaan,
        specifiedType: const FullType(String),
      );
    }
    if (object.uraian != null) {
      yield r'uraian';
      yield serializers.serialize(
        object.uraian,
        specifiedType: const FullType(String),
      );
    }
    if (object.korbanJiwa != null) {
      yield r'korbanJiwa';
      yield serializers.serialize(
        object.korbanJiwa,
        specifiedType: const FullType(int),
      );
    }
    if (object.lukaBerat != null) {
      yield r'lukaBerat';
      yield serializers.serialize(
        object.lukaBerat,
        specifiedType: const FullType(int),
      );
    }
    if (object.lukaRingan != null) {
      yield r'lukaRingan';
      yield serializers.serialize(
        object.lukaRingan,
        specifiedType: const FullType(int),
      );
    }
    if (object.hilang != null) {
      yield r'hilang';
      yield serializers.serialize(
        object.hilang,
        specifiedType: const FullType(int),
      );
    }
    if (object.selamat != null) {
      yield r'selamat';
      yield serializers.serialize(
        object.selamat,
        specifiedType: const FullType(int),
      );
    }
    if (object.dampakLingkunganJenis != null) {
      yield r'dampakLingkunganJenis';
      yield serializers.serialize(
        object.dampakLingkunganJenis,
        specifiedType: const FullType(String),
      );
    }
    if (object.dampakLingkunganUraian != null) {
      yield r'dampakLingkunganUraian';
      yield serializers.serialize(
        object.dampakLingkunganUraian,
        specifiedType: const FullType(String),
      );
    }
    if (object.dampakLaluLintasJenis != null) {
      yield r'dampakLaluLintasJenis';
      yield serializers.serialize(
        object.dampakLaluLintasJenis,
        specifiedType: const FullType(String),
      );
    }
    if (object.dampakLaluLintasUraian != null) {
      yield r'dampakLaluLintasUraian';
      yield serializers.serialize(
        object.dampakLaluLintasUraian,
        specifiedType: const FullType(String),
      );
    }
    if (object.statusPenanggulanganJenis != null) {
      yield r'statusPenanggulanganJenis';
      yield serializers.serialize(
        object.statusPenanggulanganJenis,
        specifiedType: const FullType(String),
      );
    }
    if (object.statusPenanggulanganUraian != null) {
      yield r'statusPenanggulanganUraian';
      yield serializers.serialize(
        object.statusPenanggulanganUraian,
        specifiedType: const FullType(String),
      );
    }
    if (object.lokasi != null) {
      yield r'lokasi';
      yield serializers.serialize(
        object.lokasi,
        specifiedType: const FullType(String),
      );
    }
    if (object.koordinat != null) {
      yield r'koordinat';
      yield serializers.serialize(
        object.koordinat,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    Kecelakaan object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required KecelakaanBuilder result,
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
        case r'idLaporanPantau':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.idLaporanPantau = valueDes;
          break;
        case r'matra':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.matra = valueDes;
          break;
        case r'tanggalWaktuKejadian':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.tanggalWaktuKejadian = valueDes;
          break;
        case r'jenisKecelakaan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.jenisKecelakaan = valueDes;
          break;
        case r'uraian':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uraian = valueDes;
          break;
        case r'korbanJiwa':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.korbanJiwa = valueDes;
          break;
        case r'lukaBerat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lukaBerat = valueDes;
          break;
        case r'lukaRingan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lukaRingan = valueDes;
          break;
        case r'hilang':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.hilang = valueDes;
          break;
        case r'selamat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.selamat = valueDes;
          break;
        case r'dampakLingkunganJenis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dampakLingkunganJenis = valueDes;
          break;
        case r'dampakLingkunganUraian':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dampakLingkunganUraian = valueDes;
          break;
        case r'dampakLaluLintasJenis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dampakLaluLintasJenis = valueDes;
          break;
        case r'dampakLaluLintasUraian':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dampakLaluLintasUraian = valueDes;
          break;
        case r'statusPenanggulanganJenis':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.statusPenanggulanganJenis = valueDes;
          break;
        case r'statusPenanggulanganUraian':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.statusPenanggulanganUraian = valueDes;
          break;
        case r'lokasi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lokasi = valueDes;
          break;
        case r'koordinat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.koordinat = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Kecelakaan deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = KecelakaanBuilder();
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

