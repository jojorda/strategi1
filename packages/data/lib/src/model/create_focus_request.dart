//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/focus_video.dart';
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/create_focus_request_cctv_inner.dart';
import 'package:strategi_mobile_api/src/model/create_focus_request_simpul_transportasi_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_focus_request.g.dart';

/// CreateFocusRequest
///
/// Properties:
/// * [judul] 
/// * [simpulTransportasi] 
/// * [cctv] 
/// * [video30s] 
/// * [videoLiveStreaming] 
@BuiltValue()
abstract class CreateFocusRequest implements Built<CreateFocusRequest, CreateFocusRequestBuilder> {
  @BuiltValueField(wireName: r'judul')
  String? get judul;

  @BuiltValueField(wireName: r'simpulTransportasi')
  BuiltList<CreateFocusRequestSimpulTransportasiInner>? get simpulTransportasi;

  @BuiltValueField(wireName: r'cctv')
  BuiltList<CreateFocusRequestCctvInner>? get cctv;

  @BuiltValueField(wireName: r'video30s')
  BuiltList<FocusVideo>? get video30s;

  @BuiltValueField(wireName: r'videoLiveStreaming')
  BuiltList<FocusVideo>? get videoLiveStreaming;

  CreateFocusRequest._();

  factory CreateFocusRequest([void updates(CreateFocusRequestBuilder b)]) = _$CreateFocusRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateFocusRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateFocusRequest> get serializer => _$CreateFocusRequestSerializer();
}

class _$CreateFocusRequestSerializer implements PrimitiveSerializer<CreateFocusRequest> {
  @override
  final Iterable<Type> types = const [CreateFocusRequest, _$CreateFocusRequest];

  @override
  final String wireName = r'CreateFocusRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateFocusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
        specifiedType: const FullType(BuiltList, [FullType(CreateFocusRequestSimpulTransportasiInner)]),
      );
    }
    if (object.cctv != null) {
      yield r'cctv';
      yield serializers.serialize(
        object.cctv,
        specifiedType: const FullType(BuiltList, [FullType(CreateFocusRequestCctvInner)]),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateFocusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateFocusRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
            specifiedType: const FullType(BuiltList, [FullType(CreateFocusRequestSimpulTransportasiInner)]),
          ) as BuiltList<CreateFocusRequestSimpulTransportasiInner>;
          result.simpulTransportasi.replace(valueDes);
          break;
        case r'cctv':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CreateFocusRequestCctvInner)]),
          ) as BuiltList<CreateFocusRequestCctvInner>;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateFocusRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateFocusRequestBuilder();
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

