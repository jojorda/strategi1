//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/master_kabupaten_get200_response_data_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'master_kabupaten_get200_response.g.dart';

/// MasterKabupatenGet200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class MasterKabupatenGet200Response implements Built<MasterKabupatenGet200Response, MasterKabupatenGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'data')
  BuiltList<MasterKabupatenGet200ResponseDataInner>? get data;

  MasterKabupatenGet200Response._();

  factory MasterKabupatenGet200Response([void updates(MasterKabupatenGet200ResponseBuilder b)]) = _$MasterKabupatenGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MasterKabupatenGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MasterKabupatenGet200Response> get serializer => _$MasterKabupatenGet200ResponseSerializer();
}

class _$MasterKabupatenGet200ResponseSerializer implements PrimitiveSerializer<MasterKabupatenGet200Response> {
  @override
  final Iterable<Type> types = const [MasterKabupatenGet200Response, _$MasterKabupatenGet200Response];

  @override
  final String wireName = r'MasterKabupatenGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MasterKabupatenGet200Response object, {
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
        specifiedType: const FullType(BuiltList, [FullType(MasterKabupatenGet200ResponseDataInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MasterKabupatenGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MasterKabupatenGet200ResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(MasterKabupatenGet200ResponseDataInner)]),
          ) as BuiltList<MasterKabupatenGet200ResponseDataInner>;
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
  MasterKabupatenGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MasterKabupatenGet200ResponseBuilder();
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

