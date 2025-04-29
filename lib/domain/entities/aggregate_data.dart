import 'package:json_annotation/json_annotation.dart';

part 'aggregate_data.g.dart';

@JsonSerializable(explicitToJson: true)
class AggregateData {
  @JsonKey(name: 'graph')
  AggregateGraphData? graph;
  @JsonKey(name: 'chart')
  List<AggregateChartData>? chart;
  @JsonKey(name: 'chart_capacity')
  Map<String, int>? chartCapacity;
  @JsonKey(name: 'chart_flight')
  AggregateChartFlightData? chartFlight;
  @JsonKey(name: 'chart_sailing')
  AggregateChartSailingData? chartSailing;

  AggregateData({
    this.graph,
    this.chart,
    this.chartCapacity,
    this.chartFlight,
    this.chartSailing,
  });

  factory AggregateData.fromJson(Map<String, dynamic> json) =>
      _$AggregateDataFromJson(json);

  Map<String, dynamic> toJson() => _$AggregateDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AggregateChartData {
  @JsonKey(name: 'id_location')
  String? idLocation;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'departure')
  int? departure;
  @JsonKey(name: 'arrival')
  int? arrival;
  @JsonKey(name: 'vehicle_departure')
  int? vehicleDeparture;
  @JsonKey(name: 'vehicle_arrival')
  int? vehicleArrival;

  AggregateChartData({
    this.idLocation,
    this.name,
    this.departure,
    this.arrival,
    this.vehicleDeparture,
    this.vehicleArrival,
  });

  factory AggregateChartData.fromJson(Map<String, dynamic> json) =>
      _$AggregateChartDataFromJson(json);

  Map<String, dynamic> toJson() => _$AggregateChartDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AggregateGraphData {
  @JsonKey(name: 'seasonal')
  TrafficData? seasonal;
  @JsonKey(name: 'weekly')
  TrafficData? weekly;
  @JsonKey(name: 'monthly')
  TrafficData? monthly;
  @JsonKey(name: 'yearly')
  TrafficData? yearly;

  AggregateGraphData({
    this.seasonal,
    this.weekly,
    this.monthly,
    this.yearly,
  });

  factory AggregateGraphData.fromJson(Map<String, dynamic> json) =>
      _$AggregateGraphDataFromJson(json);

  Map<String, dynamic> toJson() => _$AggregateGraphDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TrafficData {
  @JsonKey(name: 'departure')
  List<ChartData>? departure;
  @JsonKey(name: 'arrival')
  List<ChartData>? arrival;
  @JsonKey(name: 'vehicle_departure')
  List<ChartData>? vehicleDeparture;
  @JsonKey(name: 'vehicle_arrival')
  List<ChartData>? vehicleArrival;

  TrafficData({
    this.departure,
    this.arrival,
    this.vehicleDeparture,
    this.vehicleArrival,
  });

  factory TrafficData.fromJson(Map<String, dynamic> json) =>
      _$TrafficDataFromJson(json);

  Map<String, dynamic> toJson() => _$TrafficDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ChartData {
  @JsonKey(name: 'label')
  final String label;
  @JsonKey(name: 'value')
  final double value;

  ChartData({required this.label, required this.value});

  factory ChartData.fromJson(Map<String, dynamic> json) =>
      _$ChartDataFromJson(json);

  Map<String, dynamic> toJson() => _$ChartDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AggregateChartFlightData {
  @JsonKey(name: 'passengers')
  final Map<String, int>? passengers;
  @JsonKey(name: 'aircraft')
  final Map<String, int>? aircraft;

  AggregateChartFlightData({
    this.passengers,
    this.aircraft,
  });

  factory AggregateChartFlightData.fromJson(Map<String, dynamic> json) =>
      _$AggregateChartFlightDataFromJson(json);

  Map<String, dynamic> toJson() => _$AggregateChartFlightDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AggregateChartSailingData {
  @JsonKey(name: 'passengers')
  final Map<String, int>? passengers;
  @JsonKey(name: 'ship')
  final Map<String, int>? ship;

  AggregateChartSailingData({
    this.passengers,
    this.ship,
  });

  factory AggregateChartSailingData.fromJson(Map<String, dynamic> json) =>
      _$AggregateChartSailingDataFromJson(json);

  Map<String, dynamic> toJson() => _$AggregateChartSailingDataToJson(this);
}
