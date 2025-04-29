import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:strategi_hub_app/data/models/response/aggregate_response.dart';
import 'package:strategi_hub_app/data/models/response/regional_response.dart';
import 'package:strategi_hub_app/domain/entities/aggregate_data.dart';
import 'package:strategi_hub_app/domain/entities/regional_data.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

import 'aggregate.auto_mappr.dart';

@AutoMappr([
  MapType<AggregateChartResponse, AggregateChartData>(),
  // MapType<ModaRegionalIdLocationRoutineGet200ResponseData, AggregateGraphData>(
  // fields: [
  //   Field('seasonal', custom: AggregateMapper.mapIdLocation),
  //   Field('weekly', custom: AggregateMapper.mapIdLocation),
  //   Field('monthly', custom: AggregateMapper.mapIdLocation),
  //   Field('yearly', custom: AggregateMapper.mapIdLocation),
  // ],
  // ),
  MapType<RegionalItemResponse, NodeData>(fields: [
    Field('idLocation', custom: AggregateMapper.mapIdLocation),
  ]),
  MapType<AggregateResponse, AggregateData>(
    fields: [
      Field('graph', custom: AggregateMapper.mapGraph),
      Field('chart', custom: AggregateMapper.mapChart),
      Field('chartCapacity', custom: AggregateMapper.mapCapacity),
      Field('chartFlight', custom: AggregateMapper.mapFlight),
      Field('chartSailing', custom: AggregateMapper.mapSailing),
    ],
  ),
  MapType<RegionalResponse, RegionalData>(
    fields: [
      Field('graph', custom: AggregateMapper.mapGraphRegional),
      Field('list', custom: AggregateMapper.mapRegionalItem),
    ],
  ),
])
class AggregateMapper extends $AggregateMapper {
  // static TrafficData? mapSeasonalTrafficData(
  //     ModaRegionalRoutineGet200ResponseDataGraph? source) {
  //   return _mapTrafficData(source?.weekly);
  // }

  // static TrafficData? _mapSimpulData(
  //     Map<String, TransportationMetrics>? source) {
  //   if (source == null) return null;
  //   return TrafficData();
  // }

  static AggregateGraphData? mapGraph(AggregateResponse? source) {
    if (source == null) return null;
    final graph = source.graph;

    return AggregateGraphData(
      seasonal: _mapTrafficData(graph?.seasonal),
      weekly: _mapTrafficData(graph?.weekly),
      monthly: _mapTrafficData(graph?.monthly),
      yearly: _mapTrafficData(graph?.yearly),
    );
  }

  static String? mapIdLocation(RegionalItemResponse? source) {
    if (source?.idLocation == null) return null;

    return '${source?.idLocation}';
  }

  static AggregateGraphData? mapGraphRegional(RegionalResponse? source) {
    if (source == null) return null;
    final graph = source.graph;

    return AggregateGraphData(
      seasonal: _mapTrafficData(graph?.seasonal),
      weekly: _mapTrafficData(graph?.weekly),
      monthly: _mapTrafficData(graph?.monthly),
      yearly: _mapTrafficData(graph?.yearly),
    );
  }

  static TrafficData? _mapTrafficData(
      Map<String, AggregateTrafficResponse>? source) {
    if (source == null) return null;

    return TrafficData(
      departure: source.entries
          .map((entry) => ChartData(
                label: entry.key,
                value: entry.value.departure?.toDouble() ?? 0.0,
              ))
          .toList(),
      arrival: source.entries
          .map((entry) => ChartData(
                label: entry.key,
                value: entry.value.arrival?.toDouble() ?? 0.0,
              ))
          .toList(),
      vehicleDeparture: source.entries
          .map((entry) => ChartData(
                label: entry.key,
                value: entry.value.vehicleDeparture?.toDouble() ?? 0.0,
              ))
          .toList(),
      vehicleArrival: source.entries
          .map((entry) => ChartData(
                label: entry.key,
                value: entry.value.vehicleArrival?.toDouble() ?? 0.0,
              ))
          .toList(),
    );
  }

  static List<AggregateChartData>? mapChart(AggregateResponse source) {
    return source.chart?.map((chartResponse) {
      // some responses are integer and string. cast all of them into string instead.
      chartResponse.idLocation = chartResponse.idLocation.toString();
      return AggregateMapper()
          .convert<AggregateChartResponse, AggregateChartData>(chartResponse);
    }).toList();
  }

  static Map<String, int>? mapCapacity(AggregateResponse source) {
    return mapStringDynamicToMapStringInt(source.chartCapacity);
  }

  static List<NodeData>? mapRegionalItem(RegionalResponse source) {
    return AggregateMapper()
        .convertList<RegionalItemResponse, NodeData>(source.list ?? []);
  }

  static AggregateChartFlightData? mapFlight(AggregateResponse source) {
    return AggregateChartFlightData(
      aircraft: mapStringDynamicToMapStringInt(source.chartFlight?.aircraft),
      passengers:
          mapStringDynamicToMapStringInt(source.chartFlight?.passengers),
    );
  }

  static AggregateChartSailingData? mapSailing(AggregateResponse source) {
    return AggregateChartSailingData(
      passengers:
          mapStringDynamicToMapStringInt(source.chartSailing?.passengers),
      ship: mapStringDynamicToMapStringInt(source.chartSailing?.ship),
    );
  }

  static Map<String, int>? mapStringDynamicToMapStringInt(
      Map<String, dynamic>? source) {
    return source?.map((key, value) {
      if (value.runtimeType == int) {
        return MapEntry(key, value);
      }

      return MapEntry(key, int.tryParse(value.toString()) ?? 0);
    });
  }
}
