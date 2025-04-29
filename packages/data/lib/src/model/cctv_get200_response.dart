//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/cctv_get200_response_data_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cctv_get200_response.g.dart';

/// CctvGet200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class CctvGet200Response implements Built<CctvGet200Response, CctvGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'data')
  BuiltList<CctvGet200ResponseDataInner>? get data;

  CctvGet200Response._();

  factory CctvGet200Response([void updates(CctvGet200ResponseBuilder b)]) = _$CctvGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CctvGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CctvGet200Response> get serializer => _$CctvGet200ResponseSerializer();
}

class _$CctvGet200ResponseSerializer implements PrimitiveSerializer<CctvGet200Response> {
  @override
  final Iterable<Type> types = const [CctvGet200Response, _$CctvGet200Response];

  @override
  final String wireName = r'CctvGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CctvGet200Response object, {
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
        specifiedType: const FullType(BuiltList, [FullType(CctvGet200ResponseDataInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CctvGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CctvGet200ResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(CctvGet200ResponseDataInner)]),
          ) as BuiltList<CctvGet200ResponseDataInner>;
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
  CctvGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CctvGet200ResponseBuilder();
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

