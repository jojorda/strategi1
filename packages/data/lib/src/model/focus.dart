//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/transportation_data.dart';
import 'package:strategi_mobile_api/src/model/focus_video.dart';
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/focus_cctv.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'focus.g.dart';

/// Focus
///
/// Properties:
/// * [id] 
/// * [idUser] 
/// * [judul] 
/// * [simpulTransportasi] 
/// * [cctv] 
/// * [video30s] 
/// * [videoLiveStreaming] 
/// * [createDate] 
/// * [updateDate] 
@BuiltValue()
abstract class Focus implements Built<Focus, FocusBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'idUser')
  String? get idUser;

  @BuiltValueField(wireName: r'judul')
  String? get judul;

  @BuiltValueField(wireName: r'simpulTransportasi')
  BuiltList<TransportationData>? get simpulTransportasi;

  @BuiltValueField(wireName: r'cctv')
  BuiltList<FocusCCTV>? get cctv;

  @BuiltValueField(wireName: r'video30s')
  BuiltList<FocusVideo>? get video30s;

  @BuiltValueField(wireName: r'videoLiveStreaming')
  BuiltList<FocusVideo>? get videoLiveStreaming;

  @BuiltValueField(wireName: r'createDate')
  String? get createDate;

  @BuiltValueField(wireName: r'updateDate')
  String? get updateDate;

  Focus._();

  factory Focus([void updates(FocusBuilder b)]) = _$Focus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FocusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Focus> get serializer => _$FocusSerializer();
}

class _$FocusSerializer implements PrimitiveSerializer<Focus> {
  @override
  final Iterable<Type> types = const [Focus, _$Focus];

  @override
  final String wireName = r'Focus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Focus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.idUser != null) {
      yield r'idUser';
      yield serializers.serialize(
        object.idUser,
        specifiedType: const FullType(String),
      );
    }
    if (object.judul != null) {
      yield r'judul';
      yield serializers.serialize(
        object.judul,
        specifiedType: const FullType(String),
      );
    }
    if (object.simpulTransportasi != null) {
      yield r'simpulTransportasi';
      yield serializers.serialize(
        object.simpulTransportasi,
        specifiedType: const FullType(BuiltList, [FullType(TransportationData)]),
      );
    }
    if (object.cctv != null) {
      yield r'cctv';
      yield serializers.serialize(
        object.cctv,
        specifiedType: const FullType(BuiltList, [FullType(FocusCCTV)]),
      );
    }
    if (object.video30s != null) {
      yield r'video30s';
      yield serializers.serialize(
        object.video30s,
        specifiedType: const FullType(BuiltList, [FullType(FocusVideo)]),
      );
    }
    if (object.videoLiveStreaming != null) {
      yield r'videoLiveStreaming';
      yield serializers.serialize(
        object.videoLiveStreaming,
        specifiedType: const FullType(BuiltList, [FullType(FocusVideo)]),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    Focus object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FocusBuilder result,
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
        case r'idUser':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.idUser = valueDes;
          break;
        case r'judul':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.judul = valueDes;
          break;
        case r'simpulTransportasi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TransportationData)]),
          ) as BuiltList<TransportationData>;
          result.simpulTransportasi.replace(valueDes);
          break;
        case r'cctv':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(FocusCCTV)]),
          ) as BuiltList<FocusCCTV>;
          result.cctv.replace(valueDes);
          break;
        case r'video30s':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(FocusVideo)]),
          ) as BuiltList<FocusVideo>;
          result.video30s.replace(valueDes);
          break;
        case r'videoLiveStreaming':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(FocusVideo)]),
          ) as BuiltList<FocusVideo>;
          result.videoLiveStreaming.replace(valueDes);
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Focus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FocusBuilder();
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

