//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'peserta_posko.g.dart';

/// PesertaPosko
///
/// Properties:
/// * [id] 
/// * [nama] 
/// * [status] 
@BuiltValue()
abstract class PesertaPosko implements Built<PesertaPosko, PesertaPoskoBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'nama')
  String? get nama;

  @BuiltValueField(wireName: r'status')
  bool? get status;

  PesertaPosko._();

  factory PesertaPosko([void updates(PesertaPoskoBuilder b)]) = _$PesertaPosko;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PesertaPoskoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PesertaPosko> get serializer => _$PesertaPoskoSerializer();
}

class _$PesertaPoskoSerializer implements PrimitiveSerializer<PesertaPosko> {
  @override
  final Iterable<Type> types = const [PesertaPosko, _$PesertaPosko];

  @override
  final String wireName = r'PesertaPosko';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PesertaPosko object, {
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
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PesertaPosko object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PesertaPoskoBuilder result,
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
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PesertaPosko deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PesertaPoskoBuilder();
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

