//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'performance_report_get200_response_data_inner.g.dart';

/// PerformanceReportGet200ResponseDataInner
///
/// Properties:
/// * [pengelola] 
/// * [jumlahSimpul] 
/// * [jumlahPantau] 
/// * [simpulMelapor] 
/// * [laporanMasuk] 
/// * [targetLaporan] 
/// * [persentase] 
@BuiltValue()
abstract class PerformanceReportGet200ResponseDataInner implements Built<PerformanceReportGet200ResponseDataInner, PerformanceReportGet200ResponseDataInnerBuilder> {
  @BuiltValueField(wireName: r'pengelola')
  String? get pengelola;

  @BuiltValueField(wireName: r'jumlahSimpul')
  int? get jumlahSimpul;

  @BuiltValueField(wireName: r'jumlahPantau')
  int? get jumlahPantau;

  @BuiltValueField(wireName: r'simpulMelapor')
  int? get simpulMelapor;

  @BuiltValueField(wireName: r'laporanMasuk')
  int? get laporanMasuk;

  @BuiltValueField(wireName: r'targetLaporan')
  int? get targetLaporan;

  @BuiltValueField(wireName: r'persentase')
  String? get persentase;

  PerformanceReportGet200ResponseDataInner._();

  factory PerformanceReportGet200ResponseDataInner([void updates(PerformanceReportGet200ResponseDataInnerBuilder b)]) = _$PerformanceReportGet200ResponseDataInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PerformanceReportGet200ResponseDataInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PerformanceReportGet200ResponseDataInner> get serializer => _$PerformanceReportGet200ResponseDataInnerSerializer();
}

class _$PerformanceReportGet200ResponseDataInnerSerializer implements PrimitiveSerializer<PerformanceReportGet200ResponseDataInner> {
  @override
  final Iterable<Type> types = const [PerformanceReportGet200ResponseDataInner, _$PerformanceReportGet200ResponseDataInner];

  @override
  final String wireName = r'PerformanceReportGet200ResponseDataInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PerformanceReportGet200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.pengelola != null) {
      yield r'pengelola';
      yield serializers.serialize(
        object.pengelola,
        specifiedType: const FullType(String),
      );
    }
    if (object.jumlahSimpul != null) {
      yield r'jumlahSimpul';
      yield serializers.serialize(
        object.jumlahSimpul,
        specifiedType: const FullType(int),
      );
    }
    if (object.jumlahPantau != null) {
      yield r'jumlahPantau';
      yield serializers.serialize(
        object.jumlahPantau,
        specifiedType: const FullType(int),
      );
    }
    if (object.simpulMelapor != null) {
      yield r'simpulMelapor';
      yield serializers.serialize(
        object.simpulMelapor,
        specifiedType: const FullType(int),
      );
    }
    if (object.laporanMasuk != null) {
      yield r'laporanMasuk';
      yield serializers.serialize(
        object.laporanMasuk,
        specifiedType: const FullType(int),
      );
    }
    if (object.targetLaporan != null) {
      yield r'targetLaporan';
      yield serializers.serialize(
        object.targetLaporan,
        specifiedType: const FullType(int),
      );
    }
    if (object.persentase != null) {
      yield r'persentase';
      yield serializers.serialize(
        object.persentase,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PerformanceReportGet200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PerformanceReportGet200ResponseDataInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'pengelola':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pengelola = valueDes;
          break;
        case r'jumlahSimpul':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.jumlahSimpul = valueDes;
          break;
        case r'jumlahPantau':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.jumlahPantau = valueDes;
          break;
        case r'simpulMelapor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.simpulMelapor = valueDes;
          break;
        case r'laporanMasuk':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.laporanMasuk = valueDes;
          break;
        case r'targetLaporan':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.targetLaporan = valueDes;
          break;
        case r'persentase':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.persentase = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PerformanceReportGet200ResponseDataInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PerformanceReportGet200ResponseDataInnerBuilder();
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

