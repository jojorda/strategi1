//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/summary_routine_get200_response_data_vehicle_inner.dart';
import 'package:strategi_mobile_api/src/model/summary_routine_get200_response_data_network_inner.dart';
import 'package:strategi_mobile_api/src/model/summary_routine_get200_response_data_graph_inner.dart';
import 'package:strategi_mobile_api/src/model/summary_routine_get200_response_data_flight.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'summary_routine_get200_response_data.g.dart';

/// SummaryRoutineGet200ResponseData
///
/// Properties:
/// * [graph] 
/// * [vehicle] 
/// * [network] 
/// * [flight] 
@BuiltValue()
abstract class SummaryRoutineGet200ResponseData implements Built<SummaryRoutineGet200ResponseData, SummaryRoutineGet200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'graph')
  BuiltList<SummaryRoutineGet200ResponseDataGraphInner>? get graph;

  @BuiltValueField(wireName: r'vehicle')
  BuiltList<SummaryRoutineGet200ResponseDataVehicleInner>? get vehicle;

  @BuiltValueField(wireName: r'network')
  BuiltList<SummaryRoutineGet200ResponseDataNetworkInner>? get network;

  @BuiltValueField(wireName: r'flight')
  SummaryRoutineGet200ResponseDataFlight? get flight;

  SummaryRoutineGet200ResponseData._();

  factory SummaryRoutineGet200ResponseData([void updates(SummaryRoutineGet200ResponseDataBuilder b)]) = _$SummaryRoutineGet200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SummaryRoutineGet200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SummaryRoutineGet200ResponseData> get serializer => _$SummaryRoutineGet200ResponseDataSerializer();
}

class _$SummaryRoutineGet200ResponseDataSerializer implements PrimitiveSerializer<SummaryRoutineGet200ResponseData> {
  @override
  final Iterable<Type> types = const [SummaryRoutineGet200ResponseData, _$SummaryRoutineGet200ResponseData];

  @override
  final String wireName = r'SummaryRoutineGet200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SummaryRoutineGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.graph != null) {
      yield r'graph';
      yield serializers.serialize(
        object.graph,
        specifiedType: const FullType(BuiltList, [FullType(SummaryRoutineGet200ResponseDataGraphInner)]),
      );
    }
    if (object.vehicle != null) {
      yield r'vehicle';
      yield serializers.serialize(
        object.vehicle,
        specifiedType: const FullType(BuiltList, [FullType(SummaryRoutineGet200ResponseDataVehicleInner)]),
      );
    }
    if (object.network != null) {
      yield r'network';
      yield serializers.serialize(
        object.network,
        specifiedType: const FullType(BuiltList, [FullType(SummaryRoutineGet200ResponseDataNetworkInner)]),
      );
    }
    if (object.flight != null) {
      yield r'flight';
      yield serializers.serialize(
        object.flight,
        specifiedType: const FullType(SummaryRoutineGet200ResponseDataFlight),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SummaryRoutineGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SummaryRoutineGet200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'graph':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SummaryRoutineGet200ResponseDataGraphInner)]),
          ) as BuiltList<SummaryRoutineGet200ResponseDataGraphInner>;
          result.graph.replace(valueDes);
          break;
        case r'vehicle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SummaryRoutineGet200ResponseDataVehicleInner)]),
          ) as BuiltList<SummaryRoutineGet200ResponseDataVehicleInner>;
          result.vehicle.replace(valueDes);
          break;
        case r'network':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SummaryRoutineGet200ResponseDataNetworkInner)]),
          ) as BuiltList<SummaryRoutineGet200ResponseDataNetworkInner>;
          result.network.replace(valueDes);
          break;
        case r'flight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SummaryRoutineGet200ResponseDataFlight),
          ) as SummaryRoutineGet200ResponseDataFlight;
          result.flight.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SummaryRoutineGet200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SummaryRoutineGet200ResponseDataBuilder();
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

