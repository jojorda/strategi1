//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cuaca.g.dart';

/// Cuaca
///
/// Properties:
/// * [id] 
/// * [idLaporanPantau] - ID of the associated report
/// * [kondisiCuaca] - Weather condition (e.g., Berangin, Hujan, Cerah)
/// * [jarakPandang] - Visibility distance in kilometers
/// * [arahAnginDari] - Wind direction (from)
/// * [arahAnginKe] - Wind direction (to)
/// * [kecepatanAngin] - Wind speed in knots
/// * [tinggiGelombang] - Wave height in meters
/// * [createdAt] 
/// * [updatedAt] 
@BuiltValue()
abstract class Cuaca implements Built<Cuaca, CuacaBuilder> {
  @BuiltValueField(wireName: r'id')
  int? get id;

  /// ID of the associated report
  @BuiltValueField(wireName: r'idLaporanPantau')
  int? get idLaporanPantau;

  /// Weather condition (e.g., Berangin, Hujan, Cerah)
  @BuiltValueField(wireName: r'kondisiCuaca')
  String? get kondisiCuaca;

  /// Visibility distance in kilometers
  @BuiltValueField(wireName: r'jarakPandang')
  double? get jarakPandang;

  /// Wind direction (from)
  @BuiltValueField(wireName: r'arahAnginDari')
  String? get arahAnginDari;

  /// Wind direction (to)
  @BuiltValueField(wireName: r'arahAnginKe')
  String? get arahAnginKe;

  /// Wind speed in knots
  @BuiltValueField(wireName: r'kecepatanAngin')
  double? get kecepatanAngin;

  /// Wave height in meters
  @BuiltValueField(wireName: r'tinggiGelombang')
  double? get tinggiGelombang;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  Cuaca._();

  factory Cuaca([void updates(CuacaBuilder b)]) = _$Cuaca;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CuacaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Cuaca> get serializer => _$CuacaSerializer();
}

class _$CuacaSerializer implements PrimitiveSerializer<Cuaca> {
  @override
  final Iterable<Type> types = const [Cuaca, _$Cuaca];

  @override
  final String wireName = r'Cuaca';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Cuaca object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(int),
      );
    }
    if (object.idLaporanPantau != null) {
      yield r'idLaporanPantau';
      yield serializers.serialize(
        object.idLaporanPantau,
        specifiedType: const FullType(int),
      );
    }
    if (object.kondisiCuaca != null) {
      yield r'kondisiCuaca';
      yield serializers.serialize(
        object.kondisiCuaca,
        specifiedType: const FullType(String),
      );
    }
    if (object.jarakPandang != null) {
      yield r'jarakPandang';
      yield serializers.serialize(
        object.jarakPandang,
        specifiedType: const FullType(double),
      );
    }
    if (object.arahAnginDari != null) {
      yield r'arahAnginDari';
      yield serializers.serialize(
        object.arahAnginDari,
        specifiedType: const FullType(String),
      );
    }
    if (object.arahAnginKe != null) {
      yield r'arahAnginKe';
      yield serializers.serialize(
        object.arahAnginKe,
        specifiedType: const FullType(String),
      );
    }
    if (object.kecepatanAngin != null) {
      yield r'kecepatanAngin';
      yield serializers.serialize(
        object.kecepatanAngin,
        specifiedType: const FullType(double),
      );
    }
    if (object.tinggiGelombang != null) {
      yield r'tinggiGelombang';
      yield serializers.serialize(
        object.tinggiGelombang,
        specifiedType: const FullType(double),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Cuaca object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CuacaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'idLaporanPantau':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.idLaporanPantau = valueDes;
          break;
        case r'kondisiCuaca':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kondisiCuaca = valueDes;
          break;
        case r'jarakPandang':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.jarakPandang = valueDes;
          break;
        case r'arahAnginDari':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.arahAnginDari = valueDes;
          break;
        case r'arahAnginKe':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.arahAnginKe = valueDes;
          break;
        case r'kecepatanAngin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.kecepatanAngin = valueDes;
          break;
        case r'tinggiGelombang':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.tinggiGelombang = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Cuaca deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CuacaBuilder();
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

