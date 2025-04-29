//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'moda_operators_moda_routine_get200_response_inner_documents_inner.g.dart';

/// ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [type] 
/// * [fileUrl] 
@BuiltValue()
abstract class ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner implements Built<ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner, ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'fileUrl')
  String? get fileUrl;

  ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner._();

  factory ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner([void updates(ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInnerBuilder b)]) = _$ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner> get serializer => _$ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInnerSerializer();
}

class _$ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInnerSerializer implements PrimitiveSerializer<ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner> {
  @override
  final Iterable<Type> types = const [ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner, _$ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner];

  @override
  final String wireName = r'ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.fileUrl != null) {
      yield r'fileUrl';
      yield serializers.serialize(
        object.fileUrl,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInnerBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'fileUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fileUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInnerBuilder();
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

