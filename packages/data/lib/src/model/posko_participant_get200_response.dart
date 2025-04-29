//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/peserta_posko.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'posko_participant_get200_response.g.dart';

/// PoskoParticipantGet200Response
///
/// Properties:
/// * [success] 
/// * [data] 
@BuiltValue()
abstract class PoskoParticipantGet200Response implements Built<PoskoParticipantGet200Response, PoskoParticipantGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  BuiltList<PesertaPosko?>? get data;

  PoskoParticipantGet200Response._();

  factory PoskoParticipantGet200Response([void updates(PoskoParticipantGet200ResponseBuilder b)]) = _$PoskoParticipantGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PoskoParticipantGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PoskoParticipantGet200Response> get serializer => _$PoskoParticipantGet200ResponseSerializer();
}

class _$PoskoParticipantGet200ResponseSerializer implements PrimitiveSerializer<PoskoParticipantGet200Response> {
  @override
  final Iterable<Type> types = const [PoskoParticipantGet200Response, _$PoskoParticipantGet200Response];

  @override
  final String wireName = r'PoskoParticipantGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PoskoParticipantGet200Response object, {
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
        specifiedType: const FullType(BuiltList, [FullType.nullable(PesertaPosko)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PoskoParticipantGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PoskoParticipantGet200ResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType.nullable(PesertaPosko)]),
          ) as BuiltList<PesertaPosko?>;
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
  PoskoParticipantGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PoskoParticipantGet200ResponseBuilder();
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

