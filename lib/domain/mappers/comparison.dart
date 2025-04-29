import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:strategi_hub_app/domain/entities/aggregate_data.dart';
import 'package:strategi_hub_app/domain/entities/comparison_data.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

import 'comparison.auto_mappr.dart';

@AutoMappr([
  MapType<ComparisonGet200ResponseDataInner, ComparisonData>(
    fields: [
      Field('weekly', custom: ComparisonMapper.mapWeekly),
      Field('monthly', custom: ComparisonMapper.mapMonthly),
      Field('yearly', custom: ComparisonMapper.mapYearly),
      Field('seasonal', custom: ComparisonMapper.mapSeasonal),
    ],
  ),
])
class ComparisonMapper extends $ComparisonMapper {
  static TrafficData? mapWeekly(ComparisonGet200ResponseDataInner source) {
    return _mapTrafficData(weeklySource: source.weekly?.toMap());
  }

  static TrafficData? mapMonthly(ComparisonGet200ResponseDataInner source) {
    return _mapTrafficData(weeklySource: source.monthly?.toMap());
  }

  static TrafficData? mapYearly(ComparisonGet200ResponseDataInner source) {
    return _mapTrafficData(weeklySource: source.yearly?.toMap());
  }

  static TrafficData? mapSeasonal(ComparisonGet200ResponseDataInner source) {
    return _mapTrafficData(seasonalSource: source.seasonal?.toMap());
  }

  static TrafficData? _mapTrafficData({
    Map<String, ComparisonGet200ResponseDataInnerWeeklyValue>? weeklySource,
    Map<String, ComparisonGet200ResponseDataInnerSeasonalValue>? seasonalSource,
  }) {
    // Ensure at least one source is provided
    if (weeklySource == null && seasonalSource == null) return null;

    return TrafficData(
      departure: [
        if (weeklySource != null)
          ...weeklySource.entries.map((entry) => ChartData(
                label: entry.key,
                value: entry.value.departure?.toDouble() ?? 0.0,
              )),
        if (seasonalSource != null)
          ...seasonalSource.entries.map((entry) => ChartData(
                label: entry.key,
                value: entry.value.departure?.toDouble() ?? 0.0,
              )),
      ],
      arrival: [
        if (weeklySource != null)
          ...weeklySource.entries.map((entry) => ChartData(
                label: entry.key,
                value: entry.value.arrival?.toDouble() ?? 0.0,
              )),
        if (seasonalSource != null)
          ...seasonalSource.entries.map((entry) => ChartData(
                label: entry.key,
                value: entry.value.arrival?.toDouble() ?? 0.0,
              )),
      ],
      vehicleDeparture: [
        if (weeklySource != null)
          ...weeklySource.entries.map((entry) => ChartData(
                label: entry.key,
                value: entry.value.vehicleDeparture?.toDouble() ?? 0.0,
              )),
        if (seasonalSource != null)
          ...seasonalSource.entries.map((entry) => ChartData(
                label: entry.key,
                value: entry.value.vehicleDeparture?.toDouble() ?? 0.0,
              )),
      ],
      vehicleArrival: [
        if (weeklySource != null)
          ...weeklySource.entries.map((entry) => ChartData(
                label: entry.key,
                value: entry.value.vehicleArrival?.toDouble() ?? 0.0,
              )),
        if (seasonalSource != null)
          ...seasonalSource.entries.map((entry) => ChartData(
                label: entry.key,
                value: entry.value.vehicleArrival?.toDouble() ?? 0.0,
              )),
      ],
    );
  }
}
