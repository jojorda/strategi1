//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/model30_seconds_get200_response_data_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'model30_seconds_get200_response.g.dart';

/// Model30SecondsGet200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class Model30SecondsGet200Response implements Built<Model30SecondsGet200Response, Model30SecondsGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'data')
  BuiltList<Model30SecondsGet200ResponseDataInner>? get data;

  Model30SecondsGet200Response._();

  factory Model30SecondsGet200Response([void updates(Model30SecondsGet200ResponseBuilder b)]) = _$Model30SecondsGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Model30SecondsGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Model30SecondsGet200Response> get serializer => _$Model30SecondsGet200ResponseSerializer();
}

class _$Model30SecondsGet200ResponseSerializer implements PrimitiveSerializer<Model30SecondsGet200Response> {
  @override
  final Iterable<Type> types = const [Model30SecondsGet200Response, _$Model30SecondsGet200Response];

  @override
  final String wireName = r'Model30SecondsGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Model30SecondsGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(bool),
      );
    }
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(BuiltList, [FullType(Model30SecondsGet200ResponseDataInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Model30SecondsGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required Model30SecondsGet200ResponseBuilder result,
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
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Model30SecondsGet200ResponseDataInner)]),
          ) as BuiltList<Model30SecondsGet200ResponseDataInner>;
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
  Model30SecondsGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Model30SecondsGet200ResponseBuilder();
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

