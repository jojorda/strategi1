//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'jenis_posko.g.dart';

/// JenisPosko
///
/// Properties:
/// * [id] 
/// * [nama] 
/// * [status] 
@BuiltValue()
abstract class JenisPosko implements Built<JenisPosko, JenisPoskoBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'nama')
  String? get nama;

  @BuiltValueField(wireName: r'status')
  bool? get status;

  JenisPosko._();

  factory JenisPosko([void updates(JenisPoskoBuilder b)]) = _$JenisPosko;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(JenisPoskoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<JenisPosko> get serializer => _$JenisPoskoSerializer();
}

class _$JenisPoskoSerializer implements PrimitiveSerializer<JenisPosko> {
  @override
  final Iterable<Type> types = const [JenisPosko, _$JenisPosko];

  @override
  final String wireName = r'JenisPosko';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    JenisPosko object, {
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
    JenisPosko object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required JenisPoskoBuilder result,
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
  JenisPosko deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JenisPoskoBuilder();
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

