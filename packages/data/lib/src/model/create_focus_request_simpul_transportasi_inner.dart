//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_focus_request_simpul_transportasi_inner.g.dart';

/// CreateFocusRequestSimpulTransportasiInner
///
/// Properties:
/// * [matra] 
/// * [moda] 
/// * [simpul] 
@BuiltValue()
abstract class CreateFocusRequestSimpulTransportasiInner implements Built<CreateFocusRequestSimpulTransportasiInner, CreateFocusRequestSimpulTransportasiInnerBuilder> {
  @BuiltValueField(wireName: r'matra')
  String? get matra;

  @BuiltValueField(wireName: r'moda')
  String? get moda;

  @BuiltValueField(wireName: r'simpul')
  String? get simpul;

  CreateFocusRequestSimpulTransportasiInner._();

  factory CreateFocusRequestSimpulTransportasiInner([void updates(CreateFocusRequestSimpulTransportasiInnerBuilder b)]) = _$CreateFocusRequestSimpulTransportasiInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateFocusRequestSimpulTransportasiInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateFocusRequestSimpulTransportasiInner> get serializer => _$CreateFocusRequestSimpulTransportasiInnerSerializer();
}

class _$CreateFocusRequestSimpulTransportasiInnerSerializer implements PrimitiveSerializer<CreateFocusRequestSimpulTransportasiInner> {
  @override
  final Iterable<Type> types = const [CreateFocusRequestSimpulTransportasiInner, _$CreateFocusRequestSimpulTransportasiInner];

  @override
  final String wireName = r'CreateFocusRequestSimpulTransportasiInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateFocusRequestSimpulTransportasiInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.matra != null) {
      yield r'matra';
      yield serializers.serialize(
        object.matra,
        specifiedType: const FullType(String),
      );
    }
    if (object.moda != null) {
      yield r'moda';
      yield serializers.serialize(
        object.moda,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateFocusRequestSimpulTransportasiInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateFocusRequestSimpulTransportasiInnerBuilder result,
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
        case r'moda':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.moda = valueDes;
          break;
        case r'simpul':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.simpul = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateFocusRequestSimpulTransportasiInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateFocusRequestSimpulTransportasiInnerBuilder();
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

