//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'moda_operators_moda_od_get200_response_data_inner.g.dart';

/// ModaOperatorsModaOdGet200ResponseDataInner
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [origin] 
/// * [destination] 
@BuiltValue()
abstract class ModaOperatorsModaOdGet200ResponseDataInner implements Built<ModaOperatorsModaOdGet200ResponseDataInner, ModaOperatorsModaOdGet200ResponseDataInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'origin')
  String? get origin;

  @BuiltValueField(wireName: r'destination')
  String? get destination;

  ModaOperatorsModaOdGet200ResponseDataInner._();

  factory ModaOperatorsModaOdGet200ResponseDataInner([void updates(ModaOperatorsModaOdGet200ResponseDataInnerBuilder b)]) = _$ModaOperatorsModaOdGet200ResponseDataInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModaOperatorsModaOdGet200ResponseDataInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModaOperatorsModaOdGet200ResponseDataInner> get serializer => _$ModaOperatorsModaOdGet200ResponseDataInnerSerializer();
}

class _$ModaOperatorsModaOdGet200ResponseDataInnerSerializer implements PrimitiveSerializer<ModaOperatorsModaOdGet200ResponseDataInner> {
  @override
  final Iterable<Type> types = const [ModaOperatorsModaOdGet200ResponseDataInner, _$ModaOperatorsModaOdGet200ResponseDataInner];

  @override
  final String wireName = r'ModaOperatorsModaOdGet200ResponseDataInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModaOperatorsModaOdGet200ResponseDataInner object, {
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
    if (object.origin != null) {
      yield r'origin';
      yield serializers.serialize(
        object.origin,
        specifiedType: const FullType(String),
      );
    }
    if (object.destination != null) {
      yield r'destination';
      yield serializers.serialize(
        object.destination,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModaOperatorsModaOdGet200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModaOperatorsModaOdGet200ResponseDataInnerBuilder result,
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
        case r'origin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.origin = valueDes;
          break;
        case r'destination':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.destination = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModaOperatorsModaOdGet200ResponseDataInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModaOperatorsModaOdGet200ResponseDataInnerBuilder();
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

