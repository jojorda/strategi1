//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/kecelakaan.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_id_laporan_pantau_kecelakaan_get200_response.g.dart';

/// ReportIdLaporanPantauKecelakaanGet200Response
///
/// Properties:
/// * [success] 
/// * [data] 
@BuiltValue()
abstract class ReportIdLaporanPantauKecelakaanGet200Response implements Built<ReportIdLaporanPantauKecelakaanGet200Response, ReportIdLaporanPantauKecelakaanGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  BuiltList<Kecelakaan>? get data;

  ReportIdLaporanPantauKecelakaanGet200Response._();

  factory ReportIdLaporanPantauKecelakaanGet200Response([void updates(ReportIdLaporanPantauKecelakaanGet200ResponseBuilder b)]) = _$ReportIdLaporanPantauKecelakaanGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportIdLaporanPantauKecelakaanGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportIdLaporanPantauKecelakaanGet200Response> get serializer => _$ReportIdLaporanPantauKecelakaanGet200ResponseSerializer();
}

class _$ReportIdLaporanPantauKecelakaanGet200ResponseSerializer implements PrimitiveSerializer<ReportIdLaporanPantauKecelakaanGet200Response> {
  @override
  final Iterable<Type> types = const [ReportIdLaporanPantauKecelakaanGet200Response, _$ReportIdLaporanPantauKecelakaanGet200Response];

  @override
  final String wireName = r'ReportIdLaporanPantauKecelakaanGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportIdLaporanPantauKecelakaanGet200Response object, {
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
        specifiedType: const FullType(BuiltList, [FullType(Kecelakaan)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportIdLaporanPantauKecelakaanGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReportIdLaporanPantauKecelakaanGet200ResponseBuilder result,
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
            specifiedType: const FullType(BuiltList, [FullType(Kecelakaan)]),
          ) as BuiltList<Kecelakaan>;
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
  ReportIdLaporanPantauKecelakaanGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportIdLaporanPantauKecelakaanGet200ResponseBuilder();
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

