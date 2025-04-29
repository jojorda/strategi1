//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/jenis_posko.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'posko_type_get200_response.g.dart';

/// PoskoTypeGet200Response
///
/// Properties:
/// * [success] 
/// * [data] 
@BuiltValue()
abstract class PoskoTypeGet200Response implements Built<PoskoTypeGet200Response, PoskoTypeGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  BuiltList<JenisPosko>? get data;

  PoskoTypeGet200Response._();

  factory PoskoTypeGet200Response([void updates(PoskoTypeGet200ResponseBuilder b)]) = _$PoskoTypeGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PoskoTypeGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PoskoTypeGet200Response> get serializer => _$PoskoTypeGet200ResponseSerializer();
}

class _$PoskoTypeGet200ResponseSerializer implements PrimitiveSerializer<PoskoTypeGet200Response> {
  @override
  final Iterable<Type> types = const [PoskoTypeGet200Response, _$PoskoTypeGet200Response];

  @override
  final String wireName = r'PoskoTypeGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PoskoTypeGet200Response object, {
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
        specifiedType: const FullType(BuiltList, [FullType(JenisPosko)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PoskoTypeGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PoskoTypeGet200ResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(JenisPosko)]),
          ) as BuiltList<JenisPosko>;
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
  PoskoTypeGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PoskoTypeGet200ResponseBuilder();
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

