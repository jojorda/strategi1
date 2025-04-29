//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/kecelakaan.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_id_laporan_pantau_kecelakaan_post201_response.g.dart';

/// ReportIdLaporanPantauKecelakaanPost201Response
///
/// Properties:
/// * [success] 
/// * [data] 
@BuiltValue()
abstract class ReportIdLaporanPantauKecelakaanPost201Response implements Built<ReportIdLaporanPantauKecelakaanPost201Response, ReportIdLaporanPantauKecelakaanPost201ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  Kecelakaan? get data;

  ReportIdLaporanPantauKecelakaanPost201Response._();

  factory ReportIdLaporanPantauKecelakaanPost201Response([void updates(ReportIdLaporanPantauKecelakaanPost201ResponseBuilder b)]) = _$ReportIdLaporanPantauKecelakaanPost201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportIdLaporanPantauKecelakaanPost201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportIdLaporanPantauKecelakaanPost201Response> get serializer => _$ReportIdLaporanPantauKecelakaanPost201ResponseSerializer();
}

class _$ReportIdLaporanPantauKecelakaanPost201ResponseSerializer implements PrimitiveSerializer<ReportIdLaporanPantauKecelakaanPost201Response> {
  @override
  final Iterable<Type> types = const [ReportIdLaporanPantauKecelakaanPost201Response, _$ReportIdLaporanPantauKecelakaanPost201Response];

  @override
  final String wireName = r'ReportIdLaporanPantauKecelakaanPost201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportIdLaporanPantauKecelakaanPost201Response object, {
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
        specifiedType: const FullType(Kecelakaan),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportIdLaporanPantauKecelakaanPost201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReportIdLaporanPantauKecelakaanPost201ResponseBuilder result,
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
            specifiedType: const FullType(Kecelakaan),
          ) as Kecelakaan;
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
  ReportIdLaporanPantauKecelakaanPost201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportIdLaporanPantauKecelakaanPost201ResponseBuilder();
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

