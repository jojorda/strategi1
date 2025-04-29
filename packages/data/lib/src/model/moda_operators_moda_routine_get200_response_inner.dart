//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/moda_operators_moda_routine_get200_response_inner_documents_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'moda_operators_moda_routine_get200_response_inner.g.dart';

/// ModaOperatorsModaRoutineGet200ResponseInner
///
/// Properties:
/// * [id] 
/// * [name] 
/// * [logo] 
/// * [contactPerson] 
/// * [contactPhone] 
/// * [contactEmail] 
/// * [contactLocation] 
/// * [addressLongLat] 
/// * [fleetSize] 
/// * [passengerCount] 
/// * [otpRate] - On-Time Performance rate in percentage
/// * [documents] 
@BuiltValue()
abstract class ModaOperatorsModaRoutineGet200ResponseInner implements Built<ModaOperatorsModaRoutineGet200ResponseInner, ModaOperatorsModaRoutineGet200ResponseInnerBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'logo')
  String? get logo;

  @BuiltValueField(wireName: r'contactPerson')
  String? get contactPerson;

  @BuiltValueField(wireName: r'contactPhone')
  String? get contactPhone;

  @BuiltValueField(wireName: r'contactEmail')
  String? get contactEmail;

  @BuiltValueField(wireName: r'contactLocation')
  String? get contactLocation;

  @BuiltValueField(wireName: r'addressLongLat')
  String? get addressLongLat;

  @BuiltValueField(wireName: r'fleetSize')
  int? get fleetSize;

  @BuiltValueField(wireName: r'passengerCount')
  int? get passengerCount;

  /// On-Time Performance rate in percentage
  @BuiltValueField(wireName: r'otpRate')
  double? get otpRate;

  @BuiltValueField(wireName: r'documents')
  BuiltList<ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner>? get documents;

  ModaOperatorsModaRoutineGet200ResponseInner._();

  factory ModaOperatorsModaRoutineGet200ResponseInner([void updates(ModaOperatorsModaRoutineGet200ResponseInnerBuilder b)]) = _$ModaOperatorsModaRoutineGet200ResponseInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModaOperatorsModaRoutineGet200ResponseInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModaOperatorsModaRoutineGet200ResponseInner> get serializer => _$ModaOperatorsModaRoutineGet200ResponseInnerSerializer();
}

class _$ModaOperatorsModaRoutineGet200ResponseInnerSerializer implements PrimitiveSerializer<ModaOperatorsModaRoutineGet200ResponseInner> {
  @override
  final Iterable<Type> types = const [ModaOperatorsModaRoutineGet200ResponseInner, _$ModaOperatorsModaRoutineGet200ResponseInner];

  @override
  final String wireName = r'ModaOperatorsModaRoutineGet200ResponseInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModaOperatorsModaRoutineGet200ResponseInner object, {
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
    if (object.logo != null) {
      yield r'logo';
      yield serializers.serialize(
        object.logo,
        specifiedType: const FullType(String),
      );
    }
    if (object.contactPerson != null) {
      yield r'contactPerson';
      yield serializers.serialize(
        object.contactPerson,
        specifiedType: const FullType(String),
      );
    }
    if (object.contactPhone != null) {
      yield r'contactPhone';
      yield serializers.serialize(
        object.contactPhone,
        specifiedType: const FullType(String),
      );
    }
    if (object.contactEmail != null) {
      yield r'contactEmail';
      yield serializers.serialize(
        object.contactEmail,
        specifiedType: const FullType(String),
      );
    }
    if (object.contactLocation != null) {
      yield r'contactLocation';
      yield serializers.serialize(
        object.contactLocation,
        specifiedType: const FullType(String),
      );
    }
    if (object.addressLongLat != null) {
      yield r'addressLongLat';
      yield serializers.serialize(
        object.addressLongLat,
        specifiedType: const FullType(String),
      );
    }
    if (object.fleetSize != null) {
      yield r'fleetSize';
      yield serializers.serialize(
        object.fleetSize,
        specifiedType: const FullType(int),
      );
    }
    if (object.passengerCount != null) {
      yield r'passengerCount';
      yield serializers.serialize(
        object.passengerCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.otpRate != null) {
      yield r'otpRate';
      yield serializers.serialize(
        object.otpRate,
        specifiedType: const FullType(double),
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
    ModaOperatorsModaRoutineGet200ResponseInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ModaOperatorsModaRoutineGet200ResponseInnerBuilder result,
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
        case r'logo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.logo = valueDes;
          break;
        case r'contactPerson':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contactPerson = valueDes;
          break;
        case r'contactPhone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contactPhone = valueDes;
          break;
        case r'contactEmail':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contactEmail = valueDes;
          break;
        case r'contactLocation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contactLocation = valueDes;
          break;
        case r'addressLongLat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.addressLongLat = valueDes;
          break;
        case r'fleetSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.fleetSize = valueDes;
          break;
        case r'passengerCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.passengerCount = valueDes;
          break;
        case r'otpRate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.otpRate = valueDes;
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
  ModaOperatorsModaRoutineGet200ResponseInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModaOperatorsModaRoutineGet200ResponseInnerBuilder();
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

