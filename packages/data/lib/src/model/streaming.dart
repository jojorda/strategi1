//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'streaming.g.dart';

/// Streaming
///
/// Properties:
/// * [id] 
/// * [idUser] 
/// * [lokasiStreaming] 
/// * [longitude] 
/// * [latitude] 
/// * [jadwalStreaming] 
/// * [judul] 
/// * [kategori] 
/// * [deskripsi] 
/// * [urlYoutubeStreaming] 
/// * [status] 
/// * [idVerifier] 
/// * [reasonReject] 
/// * [createDate] 
/// * [updateDate] 
/// * [createId] 
/// * [updateId] 
/// * [videoId] 
/// * [urlThumbnail] 
/// * [publishedAt] 
/// * [idAkun] 
/// * [isActive] 
/// * [statusLive] 
/// * [tipeMedia] 
/// * [tipeLokasi] 
/// * [matra] 
/// * [kontributor] 
@BuiltValue()
abstract class Streaming implements Built<Streaming, StreamingBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'idUser')
  String? get idUser;

  @BuiltValueField(wireName: r'lokasiStreaming')
  String? get lokasiStreaming;

  @BuiltValueField(wireName: r'longitude')
  double? get longitude;

  @BuiltValueField(wireName: r'latitude')
  double? get latitude;

  @BuiltValueField(wireName: r'jadwalStreaming')
  DateTime? get jadwalStreaming;

  @BuiltValueField(wireName: r'judul')
  String? get judul;

  @BuiltValueField(wireName: r'kategori')
  String? get kategori;

  @BuiltValueField(wireName: r'deskripsi')
  String? get deskripsi;

  @BuiltValueField(wireName: r'urlYoutubeStreaming')
  String? get urlYoutubeStreaming;

  @BuiltValueField(wireName: r'status')
  int? get status;

  @BuiltValueField(wireName: r'idVerifier')
  String? get idVerifier;

  @BuiltValueField(wireName: r'reasonReject')
  String? get reasonReject;

  @BuiltValueField(wireName: r'createDate')
  DateTime? get createDate;

  @BuiltValueField(wireName: r'updateDate')
  DateTime? get updateDate;

  @BuiltValueField(wireName: r'createId')
  String? get createId;

  @BuiltValueField(wireName: r'updateId')
  String? get updateId;

  @BuiltValueField(wireName: r'videoId')
  String? get videoId;

  @BuiltValueField(wireName: r'urlThumbnail')
  String? get urlThumbnail;

  @BuiltValueField(wireName: r'publishedAt')
  DateTime? get publishedAt;

  @BuiltValueField(wireName: r'idAkun')
  String? get idAkun;

  @BuiltValueField(wireName: r'isActive')
  int? get isActive;

  @BuiltValueField(wireName: r'statusLive')
  int? get statusLive;

  @BuiltValueField(wireName: r'tipeMedia')
  String? get tipeMedia;

  @BuiltValueField(wireName: r'tipeLokasi')
  String? get tipeLokasi;

  @BuiltValueField(wireName: r'matra')
  String? get matra;

  @BuiltValueField(wireName: r'kontributor')
  String? get kontributor;

  Streaming._();

  factory Streaming([void updates(StreamingBuilder b)]) = _$Streaming;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StreamingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Streaming> get serializer => _$StreamingSerializer();
}

class _$StreamingSerializer implements PrimitiveSerializer<Streaming> {
  @override
  final Iterable<Type> types = const [Streaming, _$Streaming];

  @override
  final String wireName = r'Streaming';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Streaming object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.idUser != null) {
      yield r'idUser';
      yield serializers.serialize(
        object.idUser,
        specifiedType: const FullType(String),
      );
    }
    if (object.lokasiStreaming != null) {
      yield r'lokasiStreaming';
      yield serializers.serialize(
        object.lokasiStreaming,
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
    if (object.jadwalStreaming != null) {
      yield r'jadwalStreaming';
      yield serializers.serialize(
        object.jadwalStreaming,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.judul != null) {
      yield r'judul';
      yield serializers.serialize(
        object.judul,
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
    if (object.deskripsi != null) {
      yield r'deskripsi';
      yield serializers.serialize(
        object.deskripsi,
        specifiedType: const FullType(String),
      );
    }
    if (object.urlYoutubeStreaming != null) {
      yield r'urlYoutubeStreaming';
      yield serializers.serialize(
        object.urlYoutubeStreaming,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(int),
      );
    }
    if (object.idVerifier != null) {
      yield r'idVerifier';
      yield serializers.serialize(
        object.idVerifier,
        specifiedType: const FullType(String),
      );
    }
    if (object.reasonReject != null) {
      yield r'reasonReject';
      yield serializers.serialize(
        object.reasonReject,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.createDate != null) {
      yield r'createDate';
      yield serializers.serialize(
        object.createDate,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updateDate != null) {
      yield r'updateDate';
      yield serializers.serialize(
        object.updateDate,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.createId != null) {
      yield r'createId';
      yield serializers.serialize(
        object.createId,
        specifiedType: const FullType(String),
      );
    }
    if (object.updateId != null) {
      yield r'updateId';
      yield serializers.serialize(
        object.updateId,
        specifiedType: const FullType(String),
      );
    }
    if (object.videoId != null) {
      yield r'videoId';
      yield serializers.serialize(
        object.videoId,
        specifiedType: const FullType(String),
      );
    }
    if (object.urlThumbnail != null) {
      yield r'urlThumbnail';
      yield serializers.serialize(
        object.urlThumbnail,
        specifiedType: const FullType(String),
      );
    }
    if (object.publishedAt != null) {
      yield r'publishedAt';
      yield serializers.serialize(
        object.publishedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.idAkun != null) {
      yield r'idAkun';
      yield serializers.serialize(
        object.idAkun,
        specifiedType: const FullType(String),
      );
    }
    if (object.isActive != null) {
      yield r'isActive';
      yield serializers.serialize(
        object.isActive,
        specifiedType: const FullType(int),
      );
    }
    if (object.statusLive != null) {
      yield r'statusLive';
      yield serializers.serialize(
        object.statusLive,
        specifiedType: const FullType(int),
      );
    }
    if (object.tipeMedia != null) {
      yield r'tipeMedia';
      yield serializers.serialize(
        object.tipeMedia,
        specifiedType: const FullType(String),
      );
    }
    if (object.tipeLokasi != null) {
      yield r'tipeLokasi';
      yield serializers.serialize(
        object.tipeLokasi,
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
    if (object.kontributor != null) {
      yield r'kontributor';
      yield serializers.serialize(
        object.kontributor,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Streaming object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StreamingBuilder result,
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
        case r'idUser':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.idUser = valueDes;
          break;
        case r'lokasiStreaming':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lokasiStreaming = valueDes;
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
        case r'jadwalStreaming':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.jadwalStreaming = valueDes;
          break;
        case r'judul':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.judul = valueDes;
          break;
        case r'kategori':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kategori = valueDes;
          break;
        case r'deskripsi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.deskripsi = valueDes;
          break;
        case r'urlYoutubeStreaming':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.urlYoutubeStreaming = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.status = valueDes;
          break;
        case r'idVerifier':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.idVerifier = valueDes;
          break;
        case r'reasonReject':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.reasonReject = valueDes;
          break;
        case r'createDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createDate = valueDes;
          break;
        case r'updateDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updateDate = valueDes;
          break;
        case r'createId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createId = valueDes;
          break;
        case r'updateId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.updateId = valueDes;
          break;
        case r'videoId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.videoId = valueDes;
          break;
        case r'urlThumbnail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.urlThumbnail = valueDes;
          break;
        case r'publishedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.publishedAt = valueDes;
          break;
        case r'idAkun':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.idAkun = valueDes;
          break;
        case r'isActive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.isActive = valueDes;
          break;
        case r'statusLive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.statusLive = valueDes;
          break;
        case r'tipeMedia':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tipeMedia = valueDes;
          break;
        case r'tipeLokasi':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tipeLokasi = valueDes;
          break;
        case r'matra':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.matra = valueDes;
          break;
        case r'kontributor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kontributor = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Streaming deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StreamingBuilder();
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

