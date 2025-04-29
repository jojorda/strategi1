import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:built_collection/built_collection.dart';
import 'package:strategi_hub_app/domain/entities/aggregate_data.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

import 'regional.auto_mappr.dart';

@AutoMappr([
  MapType<ModaRegionalIdLocationRoutineGet200ResponseData, AggregateGraphData>(
    converters: [
      TypeConverter<
          BuiltMap<String,
              ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>?,
          TrafficData?>(TrafficDataMapper.convertToTrafficData),
    ],
  ),
])
class TrafficDataMapper extends $TrafficDataMapper {
  static TrafficData? convertToTrafficData(
      BuiltMap<String,
              ModaAggregateModaSeasonalGet200ResponseDataGraphSeasonalValue>?
          sourceMap) {
    if (sourceMap == null) return null;
    final entries = sourceMap.entries;

    return TrafficData(
      departure: entries
          .map((entry) => ChartData(
                label: entry.key,
                value: entry.value.departure?.toDouble() ?? 0.0,
              ))
          .toList(),
      arrival: entries
          .map((entry) => ChartData(
                label: entry.key,
                value: entry.value.arrival?.toDouble() ?? 0.0,
              ))
          .toList(),
      vehicleDeparture: entries
          .map((entry) => ChartData(
                label: entry.key,
                value: entry.value.vehicleDeparture?.toDouble() ?? 0.0,
              ))
          .toList(),
      vehicleArrival: entries
          .map((entry) => ChartData(
                label: entry.key,
                value: entry.value.vehicleArrival?.toDouble() ?? 0.0,
              ))
          .toList(),
    );
  }
}
