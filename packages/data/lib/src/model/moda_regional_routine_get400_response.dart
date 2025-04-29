//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'moda_regional_routine_get400_response.g.dart';

/// ModaRegionalRoutineGet400Response
///
/// Properties:
/// * [status] 
/// * [message] 
@BuiltValue()
abstract class ModaRegionalRoutineGet400Response implements Built<ModaRegionalRoutineGet400Response, ModaRegionalRoutineGet400ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'message')
  String? get message;

  ModaRegionalRoutineGet400Response._();

  factory ModaRegionalRoutineGet400Response([void updates(ModaRegionalRoutineGet400ResponseBuilder b)]) = _$ModaRegionalRoutineGet400Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModaRegionalRoutineGet400ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModaRegionalRoutineGet400Response> get serializer => _$ModaRegionalRoutineGet400ResponseSerializer();
}

class _$ModaRegionalRoutineGet400ResponseSerializer implements PrimitiveSerializer<ModaRegionalRoutineGet400Response> {
  @override
  final Iterable<Type> types = const [ModaRegionalRoutineGet400Response, _$ModaRegionalRoutineGet400Response];

  @override
  final String wireName = r'ModaRegionalRoutineGet400Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModaRegionalRoutineGet400Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModaRegionalRoutineGet400Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModaRegionalRoutineGet400ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.status = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModaRegionalRoutineGet400Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModaRegionalRoutineGet400ResponseBuilder();
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

