//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/coordinates.dart';
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/jenis_posko.dart';
import 'package:strategi_mobile_api/src/model/event.dart';
import 'package:strategi_mobile_api/src/model/peserta_posko.dart';
import 'package:strategi_mobile_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'posko.g.dart';

/// Posko
///
/// Properties:
/// * [id] 
/// * [idJenisPosko] 
/// * [idEvent] 
/// * [namaPosko] 
/// * [alamatPosko] 
/// * [unitKerjaKoordinator] 
/// * [idPesertaPosko] 
/// * [lokasiPosko] 
/// * [koordinatPosko] 
/// * [ketuaPosko] 
/// * [noTelpKetuaPosko] 
/// * [picPosko] 
/// * [noTelpPosko] 
/// * [masaPantauAwal] 
/// * [masaPantauAkhir] 
/// * [titikPantau] 
/// * [fokusPantau] 
/// * [lampiran] 
/// * [createDate] 
/// * [updateDate] 
/// * [jenisPosko] 
/// * [pesertaPosko] 
/// * [event] 
@BuiltValue()
abstract class Posko implements Built<Posko, PoskoBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'idJenisPosko')
  int? get idJenisPosko;

  @BuiltValueField(wireName: r'idEvent')
  int? get idEvent;

  @BuiltValueField(wireName: r'namaPosko')
  String? get namaPosko;

  @BuiltValueField(wireName: r'alamatPosko')
  String? get alamatPosko;

  @BuiltValueField(wireName: r'unitKerjaKoordinator')
  String? get unitKerjaKoordinator;

  @BuiltValueField(wireName: r'idPesertaPosko')
  int? get idPesertaPosko;

  @BuiltValueField(wireName: r'lokasiPosko')
  String? get lokasiPosko;

  @BuiltValueField(wireName: r'koordinatPosko')
  Coordinates? get koordinatPosko;

  @BuiltValueField(wireName: r'ketuaPosko')
  String? get ketuaPosko;

  @BuiltValueField(wireName: r'noTelpKetuaPosko')
  String? get noTelpKetuaPosko;

  @BuiltValueField(wireName: r'picPosko')
  String? get picPosko;

  @BuiltValueField(wireName: r'noTelpPosko')
  String? get noTelpPosko;

  @BuiltValueField(wireName: r'masaPantauAwal')
  Date? get masaPantauAwal;

  @BuiltValueField(wireName: r'masaPantauAkhir')
  Date? get masaPantauAkhir;

  @BuiltValueField(wireName: r'titikPantau')
  String? get titikPantau;

  @BuiltValueField(wireName: r'fokusPantau')
  BuiltList<String>? get fokusPantau;

  @BuiltValueField(wireName: r'lampiran')
  String? get lampiran;

  @BuiltValueField(wireName: r'createDate')
  String? get createDate;

  @BuiltValueField(wireName: r'updateDate')
  String? get updateDate;

  @BuiltValueField(wireName: r'jenisPosko')
  JenisPosko? get jenisPosko;

  @BuiltValueField(wireName: r'pesertaPosko')
  PesertaPosko? get pesertaPosko;

  @BuiltValueField(wireName: r'event')
  Event? get event;

  Posko._();

  factory Posko([void updates(PoskoBuilder b)]) = _$Posko;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PoskoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Posko> get serializer => _$PoskoSerializer();
}

class _$PoskoSerializer implements PrimitiveSerializer<Posko> {
  @override
  final Iterable<Type> types = const [Posko, _$Posko];

  @override
  final String wireName = r'Posko';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Posko object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.idJenisPosko != null) {
      yield r'idJenisPosko';
      yield serializers.serialize(
        object.idJenisPosko,
        specifiedType: const FullType(int),
      );
    }
    if (object.idEvent != null) {
      yield r'idEvent';
      yield serializers.serialize(
        object.idEvent,
        specifiedType: const FullType(int),
      );
    }
    if (object.namaPosko != null) {
      yield r'namaPosko';
      yield serializers.serialize(
        object.namaPosko,
        specifiedType: const FullType(String),
      );
    }
    if (object.alamatPosko != null) {
      yield r'alamatPosko';
      yield serializers.serialize(
        object.alamatPosko,
        specifiedType: const FullType(String),
      );
    }
    if (object.unitKerjaKoordinator != null) {
      yield r'unitKerjaKoordinator';
      yield serializers.serialize(
        object.unitKerjaKoordinator,
        specifiedType: const FullType(String),
      );
    }
    if (object.idPesertaPosko != null) {
      yield r'idPesertaPosko';
      yield serializers.serialize(
        object.idPesertaPosko,
        specifiedType: const FullType(int),
      );
    }
    if (object.lokasiPosko != null) {
      yield r'lokasiPosko';
      yield serializers.serialize(
        object.lokasiPosko,
        specifiedType: const FullType(String),
      );
    }
    if (object.koordinatPosko != null) {
      yield r'koordinatPosko';
      yield serializers.serialize(
        object.koordinatPosko,
        specifiedType: const FullType(Coordinates),
      );
    }
    if (object.ketuaPosko != null) {
      yield r'ketuaPosko';
      yield serializers.serialize(
        object.ketuaPosko,
        specifiedType: const FullType(String),
      );
    }
    if (object.noTelpKetuaPosko != null) {
      yield r'noTelpKetuaPosko';
      yield serializers.serialize(
        object.noTelpKetuaPosko,
        specifiedType: const FullType(String),
      );
    }
    if (object.picPosko != null) {
      yield r'picPosko';
      yield serializers.serialize(
        object.picPosko,
        specifiedType: const FullType(String),
      );
    }
    if (object.noTelpPosko != null) {
      yield r'noTelpPosko';
      yield serializers.serialize(
        object.noTelpPosko,
        specifiedType: const FullType(String),
      );
    }
    if (object.masaPantauAwal != null) {
      yield r'masaPantauAwal';
      yield serializers.serialize(
        object.masaPantauAwal,
        specifiedType: const FullType(Date),
      );
    }
    if (object.masaPantauAkhir != null) {
      yield r'masaPantauAkhir';
      yield serializers.serialize(
        object.masaPantauAkhir,
        specifiedType: const FullType(Date),
      );
    }
    if (object.titikPantau != null) {
      yield r'titikPantau';
      yield serializers.serialize(
        object.titikPantau,
        specifiedType: const FullType(String),
      );
    }
    if (object.fokusPantau != null) {
      yield r'fokusPantau';
      yield serializers.serialize(
        object.fokusPantau,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.lampiran != null) {
      yield r'lampiran';
      yield serializers.serialize(
        object.lampiran,
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
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.jenisPosko != null) {
      yield r'jenisPosko';
      yield serializers.serialize(
        object.jenisPosko,
        specifiedType: const FullType(JenisPosko),
      );
    }
    if (object.pesertaPosko != null) {
      yield r'pesertaPosko';
      yield serializers.serialize(
        object.pesertaPosko,
        specifiedType: const FullType.nullable(PesertaPosko),
      );
    }
    if (object.event != null) {
      yield r'event';
      yield serializers.serialize(
        object.event,
        specifiedType: const FullType(Event),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Posko object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PoskoBuilder result,
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
        case r'idJenisPosko':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.idJenisPosko = valueDes;
          break;
        case r'idEvent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.idEvent = valueDes;
          break;
        case r'namaPosko':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.namaPosko = valueDes;
          break;
        case r'alamatPosko':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.alamatPosko = valueDes;
          break;
        case r'unitKerjaKoordinator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.unitKerjaKoordinator = valueDes;
          break;
        case r'idPesertaPosko':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.idPesertaPosko = valueDes;
          break;
        case r'lokasiPosko':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lokasiPosko = valueDes;
          break;
        case r'koordinatPosko':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Coordinates),
          ) as Coordinates;
          result.koordinatPosko.replace(valueDes);
          break;
        case r'ketuaPosko':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ketuaPosko = valueDes;
          break;
        case r'noTelpKetuaPosko':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.noTelpKetuaPosko = valueDes;
          break;
        case r'picPosko':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.picPosko = valueDes;
          break;
        case r'noTelpPosko':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.noTelpPosko = valueDes;
          break;
        case r'masaPantauAwal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.masaPantauAwal = valueDes;
          break;
        case r'masaPantauAkhir':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.masaPantauAkhir = valueDes;
          break;
        case r'titikPantau':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.titikPantau = valueDes;
          break;
        case r'fokusPantau':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.fokusPantau.replace(valueDes);
          break;
        case r'lampiran':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lampiran = valueDes;
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
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.updateDate = valueDes;
          break;
        case r'jenisPosko':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JenisPosko),
          ) as JenisPosko;
          result.jenisPosko.replace(valueDes);
          break;
        case r'pesertaPosko':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PesertaPosko),
          ) as PesertaPosko?;
          if (valueDes == null) continue;
          result.pesertaPosko.replace(valueDes);
          break;
        case r'event':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Event),
          ) as Event;
          result.event.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Posko deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PoskoBuilder();
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

