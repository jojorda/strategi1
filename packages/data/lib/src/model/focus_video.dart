//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'focus_video.g.dart';

/// FocusVideo
///
/// Properties:
/// * [judul] 
/// * [link] 
@BuiltValue()
abstract class FocusVideo implements Built<FocusVideo, FocusVideoBuilder> {
  @BuiltValueField(wireName: r'judul')
  String? get judul;

  @BuiltValueField(wireName: r'link')
  String? get link;

  FocusVideo._();

  factory FocusVideo([void updates(FocusVideoBuilder b)]) = _$FocusVideo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FocusVideoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FocusVideo> get serializer => _$FocusVideoSerializer();
}

class _$FocusVideoSerializer implements PrimitiveSerializer<FocusVideo> {
  @override
  final Iterable<Type> types = const [FocusVideo, _$FocusVideo];

  @override
  final String wireName = r'FocusVideo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FocusVideo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.judul != null) {
      yield r'judul';
      yield serializers.serialize(
        object.judul,
        specifiedType: const FullType(String),
      );
    }
    if (object.link != null) {
      yield r'link';
      yield serializers.serialize(
        object.link,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FocusVideo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FocusVideoBuilder result,
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
        case r'link':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.link = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FocusVideo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FocusVideoBuilder();
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

