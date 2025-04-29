//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/focus.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'focus_response.g.dart';

/// FocusResponse
///
/// Properties:
/// * [success] 
/// * [data] 
@BuiltValue()
abstract class FocusResponse implements Built<FocusResponse, FocusResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  Focus? get data;

  FocusResponse._();

  factory FocusResponse([void updates(FocusResponseBuilder b)]) = _$FocusResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FocusResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FocusResponse> get serializer => _$FocusResponseSerializer();
}

class _$FocusResponseSerializer implements PrimitiveSerializer<FocusResponse> {
  @override
  final Iterable<Type> types = const [FocusResponse, _$FocusResponse];

  @override
  final String wireName = r'FocusResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FocusResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(Focus),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FocusResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FocusResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Focus),
          ) as Focus;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FocusResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FocusResponseBuilder();
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

