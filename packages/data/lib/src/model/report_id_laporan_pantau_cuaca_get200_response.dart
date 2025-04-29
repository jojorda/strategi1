//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/cuaca.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_id_laporan_pantau_cuaca_get200_response.g.dart';

/// ReportIdLaporanPantauCuacaGet200Response
///
/// Properties:
/// * [success] 
/// * [data] 
@BuiltValue()
abstract class ReportIdLaporanPantauCuacaGet200Response implements Built<ReportIdLaporanPantauCuacaGet200Response, ReportIdLaporanPantauCuacaGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  BuiltList<Cuaca>? get data;

  ReportIdLaporanPantauCuacaGet200Response._();

  factory ReportIdLaporanPantauCuacaGet200Response([void updates(ReportIdLaporanPantauCuacaGet200ResponseBuilder b)]) = _$ReportIdLaporanPantauCuacaGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportIdLaporanPantauCuacaGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportIdLaporanPantauCuacaGet200Response> get serializer => _$ReportIdLaporanPantauCuacaGet200ResponseSerializer();
}

class _$ReportIdLaporanPantauCuacaGet200ResponseSerializer implements PrimitiveSerializer<ReportIdLaporanPantauCuacaGet200Response> {
  @override
  final Iterable<Type> types = const [ReportIdLaporanPantauCuacaGet200Response, _$ReportIdLaporanPantauCuacaGet200Response];

  @override
  final String wireName = r'ReportIdLaporanPantauCuacaGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportIdLaporanPantauCuacaGet200Response object, {
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
        specifiedType: const FullType(BuiltList, [FullType(Cuaca)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportIdLaporanPantauCuacaGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReportIdLaporanPantauCuacaGet200ResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(Cuaca)]),
          ) as BuiltList<Cuaca>;
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
  ReportIdLaporanPantauCuacaGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportIdLaporanPantauCuacaGet200ResponseBuilder();
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

