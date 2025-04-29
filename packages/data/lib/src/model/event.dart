//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event.g.dart';

/// Event
///
/// Properties:
/// * [id] 
/// * [nama] 
/// * [tipe] 
/// * [tanggalMulai] 
/// * [tanggalSelesai] 
/// * [prevEvent] 
/// * [h1] 
/// * [subNama] 
/// * [noteNarasi] 
/// * [splitPeriode] 
/// * [flag] 
@BuiltValue()
abstract class Event implements Built<Event, EventBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'nama')
  String? get nama;

  @BuiltValueField(wireName: r'tipe')
  String? get tipe;

  @BuiltValueField(wireName: r'tanggalMulai')
  Date? get tanggalMulai;

  @BuiltValueField(wireName: r'tanggalSelesai')
  Date? get tanggalSelesai;

  @BuiltValueField(wireName: r'prevEvent')
  String? get prevEvent;

  @BuiltValueField(wireName: r'h1')
  Date? get h1;

  @BuiltValueField(wireName: r'subNama')
  String? get subNama;

  @BuiltValueField(wireName: r'noteNarasi')
  String? get noteNarasi;

  @BuiltValueField(wireName: r'splitPeriode')
  String? get splitPeriode;

  @BuiltValueField(wireName: r'flag')
  int? get flag;

  Event._();

  factory Event([void updates(EventBuilder b)]) = _$Event;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Event> get serializer => _$EventSerializer();
}

class _$EventSerializer implements PrimitiveSerializer<Event> {
  @override
  final Iterable<Type> types = const [Event, _$Event];

  @override
  final String wireName = r'Event';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Event object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.nama != null) {
      yield r'nama';
      yield serializers.serialize(
        object.nama,
        specifiedType: const FullType(String),
      );
    }
    if (object.tipe != null) {
      yield r'tipe';
      yield serializers.serialize(
        object.tipe,
        specifiedType: const FullType(String),
      );
    }
    if (object.tanggalMulai != null) {
      yield r'tanggalMulai';
      yield serializers.serialize(
        object.tanggalMulai,
        specifiedType: const FullType(Date),
      );
    }
    if (object.tanggalSelesai != null) {
      yield r'tanggalSelesai';
      yield serializers.serialize(
        object.tanggalSelesai,
        specifiedType: const FullType(Date),
      );
    }
    if (object.prevEvent != null) {
      yield r'prevEvent';
      yield serializers.serialize(
        object.prevEvent,
        specifiedType: const FullType(String),
      );
    }
    if (object.h1 != null) {
      yield r'h1';
      yield serializers.serialize(
        object.h1,
        specifiedType: const FullType(Date),
      );
    }
    if (object.subNama != null) {
      yield r'subNama';
      yield serializers.serialize(
        object.subNama,
        specifiedType: const FullType(String),
      );
    }
    if (object.noteNarasi != null) {
      yield r'noteNarasi';
      yield serializers.serialize(
        object.noteNarasi,
        specifiedType: const FullType(String),
      );
    }
    if (object.splitPeriode != null) {
      yield r'splitPeriode';
      yield serializers.serialize(
        object.splitPeriode,
        specifiedType: const FullType(String),
      );
    }
    if (object.flag != null) {
      yield r'flag';
      yield serializers.serialize(
        object.flag,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Event object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EventBuilder result,
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
        case r'nama':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nama = valueDes;
          break;
        case r'tipe':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tipe = valueDes;
          break;
        case r'tanggalMulai':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.tanggalMulai = valueDes;
          break;
        case r'tanggalSelesai':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.tanggalSelesai = valueDes;
          break;
        case r'prevEvent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.prevEvent = valueDes;
          break;
        case r'h1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.h1 = valueDes;
          break;
        case r'subNama':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.subNama = valueDes;
          break;
        case r'noteNarasi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.noteNarasi = valueDes;
          break;
        case r'splitPeriode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.splitPeriode = valueDes;
          break;
        case r'flag':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.flag = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Event deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EventBuilder();
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

