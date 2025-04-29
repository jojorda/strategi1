//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/moda_aggregate_moda_seasonal_get200_response_data.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'moda_aggregate_moda_seasonal_get200_response.g.dart';

/// ModaAggregateModaSeasonalGet200Response
///
/// Properties:
/// * [status] 
/// * [message] 
/// * [data] 
@BuiltValue()
abstract class ModaAggregateModaSeasonalGet200Response implements Built<ModaAggregateModaSeasonalGet200Response, ModaAggregateModaSeasonalGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'status')
  bool? get status;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'data')
  ModaAggregateModaSeasonalGet200ResponseData? get data;

  ModaAggregateModaSeasonalGet200Response._();

  factory ModaAggregateModaSeasonalGet200Response([void updates(ModaAggregateModaSeasonalGet200ResponseBuilder b)]) = _$ModaAggregateModaSeasonalGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModaAggregateModaSeasonalGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModaAggregateModaSeasonalGet200Response> get serializer => _$ModaAggregateModaSeasonalGet200ResponseSerializer();
}

class _$ModaAggregateModaSeasonalGet200ResponseSerializer implements PrimitiveSerializer<ModaAggregateModaSeasonalGet200Response> {
  @override
  final Iterable<Type> types = const [ModaAggregateModaSeasonalGet200Response, _$ModaAggregateModaSeasonalGet200Response];

  @override
  final String wireName = r'ModaAggregateModaSeasonalGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModaAggregateModaSeasonalGet200Response object, {
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
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(ModaAggregateModaSeasonalGet200ResponseData),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModaAggregateModaSeasonalGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModaAggregateModaSeasonalGet200ResponseBuilder result,
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
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ModaAggregateModaSeasonalGet200ResponseData),
          ) as ModaAggregateModaSeasonalGet200ResponseData;
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
  ModaAggregateModaSeasonalGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModaAggregateModaSeasonalGet200ResponseBuilder();
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

