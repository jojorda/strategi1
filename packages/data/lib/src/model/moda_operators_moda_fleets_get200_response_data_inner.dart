//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/moda_operators_moda_routine_get200_response_inner_documents_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'moda_operators_moda_fleets_get200_response_data_inner.g.dart';

/// ModaOperatorsModaFleetsGet200ResponseDataInner
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [location] 
/// * [longLat] 
/// * [plateNumber] 
/// * [brand] 
/// * [wheelCount] 
/// * [maxPassengerCount] 
/// * [documents] 
@BuiltValue()
abstract class ModaOperatorsModaFleetsGet200ResponseDataInner implements Built<ModaOperatorsModaFleetsGet200ResponseDataInner, ModaOperatorsModaFleetsGet200ResponseDataInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'location')
  String? get location;

  @BuiltValueField(wireName: r'longLat')
  String? get longLat;

  @BuiltValueField(wireName: r'plateNumber')
  String? get plateNumber;

  @BuiltValueField(wireName: r'brand')
  String? get brand;

  @BuiltValueField(wireName: r'wheelCount')
  int? get wheelCount;

  @BuiltValueField(wireName: r'maxPassengerCount')
  int? get maxPassengerCount;

  @BuiltValueField(wireName: r'documents')
  BuiltList<ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner>? get documents;

  ModaOperatorsModaFleetsGet200ResponseDataInner._();

  factory ModaOperatorsModaFleetsGet200ResponseDataInner([void updates(ModaOperatorsModaFleetsGet200ResponseDataInnerBuilder b)]) = _$ModaOperatorsModaFleetsGet200ResponseDataInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModaOperatorsModaFleetsGet200ResponseDataInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModaOperatorsModaFleetsGet200ResponseDataInner> get serializer => _$ModaOperatorsModaFleetsGet200ResponseDataInnerSerializer();
}

class _$ModaOperatorsModaFleetsGet200ResponseDataInnerSerializer implements PrimitiveSerializer<ModaOperatorsModaFleetsGet200ResponseDataInner> {
  @override
  final Iterable<Type> types = const [ModaOperatorsModaFleetsGet200ResponseDataInner, _$ModaOperatorsModaFleetsGet200ResponseDataInner];

  @override
  final String wireName = r'ModaOperatorsModaFleetsGet200ResponseDataInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModaOperatorsModaFleetsGet200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.location != null) {
      yield r'location';
      yield serializers.serialize(
        object.location,
        specifiedType: const FullType(String),
      );
    }
    if (object.longLat != null) {
      yield r'longLat';
      yield serializers.serialize(
        object.longLat,
        specifiedType: const FullType(String),
      );
    }
    if (object.plateNumber != null) {
      yield r'plateNumber';
      yield serializers.serialize(
        object.plateNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.brand != null) {
      yield r'brand';
      yield serializers.serialize(
        object.brand,
        specifiedType: const FullType(String),
      );
    }
    if (object.wheelCount != null) {
      yield r'wheelCount';
      yield serializers.serialize(
        object.wheelCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.maxPassengerCount != null) {
      yield r'maxPassengerCount';
      yield serializers.serialize(
        object.maxPassengerCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.documents != null) {
      yield r'documents';
      yield serializers.serialize(
        object.documents,
        specifiedType: const FullType(BuiltList, [FullType(ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ModaOperatorsModaFleetsGet200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModaOperatorsModaFleetsGet200ResponseDataInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'location':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.location = valueDes;
          break;
        case r'longLat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.longLat = valueDes;
          break;
        case r'plateNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.plateNumber = valueDes;
          break;
        case r'brand':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.brand = valueDes;
          break;
        case r'wheelCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.wheelCount = valueDes;
          break;
        case r'maxPassengerCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.maxPassengerCount = valueDes;
          break;
        case r'documents':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner)]),
          ) as BuiltList<ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner>;
          result.documents.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModaOperatorsModaFleetsGet200ResponseDataInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModaOperatorsModaFleetsGet200ResponseDataInnerBuilder();
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

