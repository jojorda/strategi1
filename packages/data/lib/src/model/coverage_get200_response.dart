//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/streaming.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'coverage_get200_response.g.dart';

/// CoverageGet200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class CoverageGet200Response implements Built<CoverageGet200Response, CoverageGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'data')
  BuiltList<Streaming>? get data;

  CoverageGet200Response._();

  factory CoverageGet200Response([void updates(CoverageGet200ResponseBuilder b)]) = _$CoverageGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CoverageGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CoverageGet200Response> get serializer => _$CoverageGet200ResponseSerializer();
}

class _$CoverageGet200ResponseSerializer implements PrimitiveSerializer<CoverageGet200Response> {
  @override
  final Iterable<Type> types = const [CoverageGet200Response, _$CoverageGet200Response];

  @override
  final String wireName = r'CoverageGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CoverageGet200Response object, {
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
        specifiedType: const FullType(BuiltList, [FullType(Streaming)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CoverageGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CoverageGet200ResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(Streaming)]),
          ) as BuiltList<Streaming>;
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
  CoverageGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CoverageGet200ResponseBuilder();
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

