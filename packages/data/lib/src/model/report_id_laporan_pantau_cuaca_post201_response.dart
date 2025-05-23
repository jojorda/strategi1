//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/cuaca.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_id_laporan_pantau_cuaca_post201_response.g.dart';

/// ReportIdLaporanPantauCuacaPost201Response
///
/// Properties:
/// * [success] 
/// * [data] 
@BuiltValue()
abstract class ReportIdLaporanPantauCuacaPost201Response implements Built<ReportIdLaporanPantauCuacaPost201Response, ReportIdLaporanPantauCuacaPost201ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'data')
  Cuaca? get data;

  ReportIdLaporanPantauCuacaPost201Response._();

  factory ReportIdLaporanPantauCuacaPost201Response([void updates(ReportIdLaporanPantauCuacaPost201ResponseBuilder b)]) = _$ReportIdLaporanPantauCuacaPost201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReportIdLaporanPantauCuacaPost201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReportIdLaporanPantauCuacaPost201Response> get serializer => _$ReportIdLaporanPantauCuacaPost201ResponseSerializer();
}

class _$ReportIdLaporanPantauCuacaPost201ResponseSerializer implements PrimitiveSerializer<ReportIdLaporanPantauCuacaPost201Response> {
  @override
  final Iterable<Type> types = const [ReportIdLaporanPantauCuacaPost201Response, _$ReportIdLaporanPantauCuacaPost201Response];

  @override
  final String wireName = r'ReportIdLaporanPantauCuacaPost201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReportIdLaporanPantauCuacaPost201Response object, {
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
        specifiedType: const FullType(Cuaca),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReportIdLaporanPantauCuacaPost201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReportIdLaporanPantauCuacaPost201ResponseBuilder result,
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
            specifiedType: const FullType(Cuaca),
          ) as Cuaca;
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
  ReportIdLaporanPantauCuacaPost201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReportIdLaporanPantauCuacaPost201ResponseBuilder();
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

