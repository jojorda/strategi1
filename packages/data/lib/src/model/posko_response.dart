//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/event.dart';
import 'package:strategi_mobile_api/src/model/posko.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'posko_response.g.dart';

/// PoskoResponse
///
/// Properties:
/// * [success] 
/// * [data] 
/// * [eventList] 
@BuiltValue()
abstract class PoskoResponse implements Built<PoskoResponse, PoskoResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  Posko? get data;

  @BuiltValueField(wireName: r'eventList')
  BuiltList<Event>? get eventList;

  PoskoResponse._();

  factory PoskoResponse([void updates(PoskoResponseBuilder b)]) = _$PoskoResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PoskoResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PoskoResponse> get serializer => _$PoskoResponseSerializer();
}

class _$PoskoResponseSerializer implements PrimitiveSerializer<PoskoResponse> {
  @override
  final Iterable<Type> types = const [PoskoResponse, _$PoskoResponse];

  @override
  final String wireName = r'PoskoResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PoskoResponse object, {
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
        specifiedType: const FullType(Posko),
      );
    }
    if (object.eventList != null) {
      yield r'eventList';
      yield serializers.serialize(
        object.eventList,
        specifiedType: const FullType(BuiltList, [FullType(Event)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PoskoResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PoskoResponseBuilder result,
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
            specifiedType: const FullType(Posko),
          ) as Posko;
          result.data.replace(valueDes);
          break;
        case r'eventList':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Event)]),
          ) as BuiltList<Event>;
          result.eventList.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PoskoResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PoskoResponseBuilder();
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

