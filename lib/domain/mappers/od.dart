import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:strategi_hub_app/domain/entities/od_data.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

import 'od.auto_mappr.dart';

@AutoMappr([
  MapType<ModaOdModaRoutineGet200Response, OdChartList>(fields: [
    Field('data', custom: OdMapper.mapChartList),
  ]),
  MapType<ModaOdModaRoutineGet200ResponseDataInner, OdChartData>(),
  MapType<ModaOdModaRoutineDetailGet200ResponseData, OdGraphData>(
    fields: [
      Field('origin', custom: OdMapper.mapGraphOrigin),
      Field('destination', custom: OdMapper.mapGraphDestination),
    ],
  ),
])
class OdMapper extends $OdMapper {
  static List<OdChartData> mapChartList(
      ModaOdModaRoutineGet200Response source) {
    var data = (source.data?.asList() ?? [])
        .map((e) => OdChartData(
              idOrigin: e.idOrigin,
              idDestination: e.idDestination,
              origin: e.origin,
              originCity: e.originCity,
              originType: e.originType,
              destinationCity: e.destinationCity,
              destinationType: e.destinationType,
              destination: e.destination,
              departure: e.departure,
              arrival: e.arrival,
              vehicleDeparture: e.vehicleDeparture,
              vehicleArrival: e.vehicleArrival,
            ))
        .toList();

    return data;
  }

  static OriginDestinationData? mapGraphDestination(
      ModaOdModaRoutineDetailGet200ResponseData? source) {
    if (source == null) return null;
    final graph = source.destination;

    return OriginDestinationData(
      weekly: _mapTrafficData(graph?.weekly?.toMap()),
      monthly: _mapTrafficData(graph?.monthly?.toMap()),
      yearly: _mapTrafficData(graph?.yearly?.toMap()),
    );
  }

  static OriginDestinationData? mapGraphOrigin(
      ModaOdModaRoutineDetailGet200ResponseData? source) {
    if (source == null) return null;
    final graph = source.origin;

    return OriginDestinationData(
      weekly: _mapTrafficData(graph?.weekly?.toMap()),
      monthly: _mapTrafficData(graph?.monthly?.toMap()),
      yearly: _mapTrafficData(graph?.yearly?.toMap()),
    );
  }

  static TrafficData? _mapTrafficData(
      Map<String, ModaOdModaRoutineDetailGet200ResponseDataOriginWeeklyValue>?
          source) {
    if (source == null) return null;

    int labelToInt(String label) {
      label = label.trim();

      if (label == 'H') return 0;

      final hDash = RegExp(r'^H\s*-\s*(\d+)$').firstMatch(label);
      if (hDash != null) return -int.tryParse(hDash.group(1)!)!;

      final hPlus = RegExp(r'^H\s*\+\s*(\d+)$').firstMatch(label);
      if (hPlus != null) return int.tryParse(hPlus.group(1)!)!;

      final hIndex = RegExp(r'^H(\d+)$').firstMatch(label);
      if (hIndex != null) return int.tryParse(hIndex.group(1)!) ?? 0;

      return 0;
    }

    final sortedEntries = source.entries.toList()
      ..sort((a, b) => labelToInt(a.key).compareTo(labelToInt(b.key)));

    return TrafficData(
      departure: sortedEntries
          .map((entry) => ChartData(
                label: entry.key,
                value: entry.value.departure?.toDouble() ?? 0.0,
              ))
          .toList(),
      arrival: sortedEntries
          .map((entry) => ChartData(
                label: entry.key,
                value: entry.value.arrival?.toDouble() ?? 0.0,
              ))
          .toList(),
      vehicleDeparture: sortedEntries
          .map((entry) => ChartData(
                label: entry.key,
                value: entry.value.vehicleDeparture?.toDouble() ?? 0.0,
              ))
          .toList(),
      vehicleArrival: sortedEntries
          .map((entry) => ChartData(
                label: entry.key,
                value: entry.value.vehicleArrival?.toDouble() ?? 0.0,
              ))
          .toList(),
    );
  }
}
