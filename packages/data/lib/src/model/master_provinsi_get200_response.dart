//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/master_provinsi_get200_response_data_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'master_provinsi_get200_response.g.dart';

/// MasterProvinsiGet200Response
///
/// Properties:
/// * [status] 
/// * [data] 
@BuiltValue()
abstract class MasterProvinsiGet200Response implements Built<MasterProvinsiGet200Response, MasterProvinsiGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'data')
  BuiltList<MasterProvinsiGet200ResponseDataInner>? get data;

  MasterProvinsiGet200Response._();

  factory MasterProvinsiGet200Response([void updates(MasterProvinsiGet200ResponseBuilder b)]) = _$MasterProvinsiGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MasterProvinsiGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MasterProvinsiGet200Response> get serializer => _$MasterProvinsiGet200ResponseSerializer();
}

class _$MasterProvinsiGet200ResponseSerializer implements PrimitiveSerializer<MasterProvinsiGet200Response> {
  @override
  final Iterable<Type> types = const [MasterProvinsiGet200Response, _$MasterProvinsiGet200Response];

  @override
  final String wireName = r'MasterProvinsiGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MasterProvinsiGet200Response object, {
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
        specifiedType: const FullType(BuiltList, [FullType(MasterProvinsiGet200ResponseDataInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MasterProvinsiGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required MasterProvinsiGet200ResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(MasterProvinsiGet200ResponseDataInner)]),
          ) as BuiltList<MasterProvinsiGet200ResponseDataInner>;
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
  MasterProvinsiGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MasterProvinsiGet200ResponseBuilder();
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

