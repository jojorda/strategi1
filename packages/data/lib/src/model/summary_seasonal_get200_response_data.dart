//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:strategi_mobile_api/src/model/summary_seasonal_get200_response_data_network_inner.dart';
import 'package:strategi_mobile_api/src/model/summary_seasonal_get200_response_data_filter.dart';
import 'package:built_collection/built_collection.dart';
import 'package:strategi_mobile_api/src/model/summary_seasonal_get200_response_data_flight.dart';
import 'package:strategi_mobile_api/src/model/summary_seasonal_get200_response_data_vehicle_inner.dart';
import 'package:strategi_mobile_api/src/model/summary_seasonal_get200_response_data_sailing.dart';
import 'package:strategi_mobile_api/src/model/summary_seasonal_get200_response_data_graph_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'summary_seasonal_get200_response_data.g.dart';

/// SummarySeasonalGet200ResponseData
///
/// Properties:
/// * [graph] 
/// * [vehicle] 
/// * [network] 
/// * [flight] 
/// * [sailing] 
/// * [filter] 
@BuiltValue()
abstract class SummarySeasonalGet200ResponseData implements Built<SummarySeasonalGet200ResponseData, SummarySeasonalGet200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'graph')
  BuiltList<SummarySeasonalGet200ResponseDataGraphInner>? get graph;

  @BuiltValueField(wireName: r'vehicle')
  BuiltList<SummarySeasonalGet200ResponseDataVehicleInner>? get vehicle;

  @BuiltValueField(wireName: r'network')
  BuiltList<SummarySeasonalGet200ResponseDataNetworkInner>? get network;

  @BuiltValueField(wireName: r'flight')
  SummarySeasonalGet200ResponseDataFlight? get flight;

  @BuiltValueField(wireName: r'sailing')
  SummarySeasonalGet200ResponseDataSailing? get sailing;

  @BuiltValueField(wireName: r'filter')
  SummarySeasonalGet200ResponseDataFilter? get filter;

  SummarySeasonalGet200ResponseData._();

  factory SummarySeasonalGet200ResponseData([void updates(SummarySeasonalGet200ResponseDataBuilder b)]) = _$SummarySeasonalGet200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SummarySeasonalGet200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SummarySeasonalGet200ResponseData> get serializer => _$SummarySeasonalGet200ResponseDataSerializer();
}

class _$SummarySeasonalGet200ResponseDataSerializer implements PrimitiveSerializer<SummarySeasonalGet200ResponseData> {
  @override
  final Iterable<Type> types = const [SummarySeasonalGet200ResponseData, _$SummarySeasonalGet200ResponseData];

  @override
  final String wireName = r'SummarySeasonalGet200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SummarySeasonalGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.graph != null) {
      yield r'graph';
      yield serializers.serialize(
        object.graph,
        specifiedType: const FullType(BuiltList, [FullType(SummarySeasonalGet200ResponseDataGraphInner)]),
      );
    }
    if (object.vehicle != null) {
      yield r'vehicle';
      yield serializers.serialize(
        object.vehicle,
        specifiedType: const FullType(BuiltList, [FullType(SummarySeasonalGet200ResponseDataVehicleInner)]),
      );
    }
    if (object.network != null) {
      yield r'network';
      yield serializers.serialize(
        object.network,
        specifiedType: const FullType(BuiltList, [FullType(SummarySeasonalGet200ResponseDataNetworkInner)]),
      );
    }
    if (object.flight != null) {
      yield r'flight';
      yield serializers.serialize(
        object.flight,
        specifiedType: const FullType(SummarySeasonalGet200ResponseDataFlight),
      );
    }
    if (object.sailing != null) {
      yield r'sailing';
      yield serializers.serialize(
        object.sailing,
        specifiedType: const FullType(SummarySeasonalGet200ResponseDataSailing),
      );
    }
    if (object.filter != null) {
      yield r'filter';
      yield serializers.serialize(
        object.filter,
        specifiedType: const FullType(SummarySeasonalGet200ResponseDataFilter),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SummarySeasonalGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SummarySeasonalGet200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'graph':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SummarySeasonalGet200ResponseDataGraphInner)]),
          ) as BuiltList<SummarySeasonalGet200ResponseDataGraphInner>;
          result.graph.replace(valueDes);
          break;
        case r'vehicle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SummarySeasonalGet200ResponseDataVehicleInner)]),
          ) as BuiltList<SummarySeasonalGet200ResponseDataVehicleInner>;
          result.vehicle.replace(valueDes);
          break;
        case r'network':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SummarySeasonalGet200ResponseDataNetworkInner)]),
          ) as BuiltList<SummarySeasonalGet200ResponseDataNetworkInner>;
          result.network.replace(valueDes);
          break;
        case r'flight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SummarySeasonalGet200ResponseDataFlight),
          ) as SummarySeasonalGet200ResponseDataFlight;
          result.flight.replace(valueDes);
          break;
        case r'sailing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SummarySeasonalGet200ResponseDataSailing),
          ) as SummarySeasonalGet200ResponseDataSailing;
          result.sailing.replace(valueDes);
          break;
        case r'filter':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SummarySeasonalGet200ResponseDataFilter),
          ) as SummarySeasonalGet200ResponseDataFilter;
          result.filter.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SummarySeasonalGet200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SummarySeasonalGet200ResponseDataBuilder();
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

