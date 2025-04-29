//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_focus_request_cctv_inner.g.dart';

/// CreateFocusRequestCctvInner
///
/// Properties:
/// * [matra] 
/// * [simpul] 
/// * [titikCctv] 
@BuiltValue()
abstract class CreateFocusRequestCctvInner implements Built<CreateFocusRequestCctvInner, CreateFocusRequestCctvInnerBuilder> {
  @BuiltValueField(wireName: r'matra')
  String? get matra;

  @BuiltValueField(wireName: r'simpul')
  String? get simpul;

  @BuiltValueField(wireName: r'titikCctv')
  String? get titikCctv;

  CreateFocusRequestCctvInner._();

  factory CreateFocusRequestCctvInner([void updates(CreateFocusRequestCctvInnerBuilder b)]) = _$CreateFocusRequestCctvInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateFocusRequestCctvInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateFocusRequestCctvInner> get serializer => _$CreateFocusRequestCctvInnerSerializer();
}

class _$CreateFocusRequestCctvInnerSerializer implements PrimitiveSerializer<CreateFocusRequestCctvInner> {
  @override
  final Iterable<Type> types = const [CreateFocusRequestCctvInner, _$CreateFocusRequestCctvInner];

  @override
  final String wireName = r'CreateFocusRequestCctvInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateFocusRequestCctvInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.matra != null) {
      yield r'matra';
      yield serializers.serialize(
        object.matra,
        specifiedType: const FullType(String),
      );
    }
    if (object.simpul != null) {
      yield r'simpul';
      yield serializers.serialize(
        object.simpul,
        specifiedType: const FullType(String),
      );
    }
    if (object.titikCctv != null) {
      yield r'titikCctv';
      yield serializers.serialize(
        object.titikCctv,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateFocusRequestCctvInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateFocusRequestCctvInnerBuilder result,
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
        case r'simpul':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.simpul = valueDes;
          break;
        case r'titikCctv':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.titikCctv = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateFocusRequestCctvInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateFocusRequestCctvInnerBuilder();
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

