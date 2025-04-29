import 'package:json_annotation/json_annotation.dart';

part 'aggregate_response.g.dart';

@JsonSerializable()
class AggregateResponse {
  @JsonKey(name: "graph")
  AggregateGraphResponse? graph;
  @JsonKey(name: "chart")
  List<AggregateChartResponse>? chart;
  @JsonKey(name: "chartCapacity")
  Map<String, dynamic>? chartCapacity;
  @JsonKey(name: "chartFlight")
  AggregateChartFlightResponse? chartFlight;
  @JsonKey(name: "chartSailing")
  AggregateChartSailingResponse? chartSailing;

  AggregateResponse({
    this.graph,
    this.chart,
    this.chartCapacity,
    this.chartFlight,
    this.chartSailing,
  });

  factory AggregateResponse.fromJson(Map<String, dynamic> json) =>
      _$AggregateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AggregateResponseToJson(this);
}

@JsonSerializable()
class AggregateChartResponse {
  @JsonKey(name: "idLocation")
  dynamic idLocation;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "departure")
  int? departure;
  @JsonKey(name: "arrival")
  int? arrival;
  @JsonKey(name: "vehicleDeparture")
  int? vehicleDeparture;
  @JsonKey(name: "vehicleArrival")
  int? vehicleArrival;

  AggregateChartResponse({
    this.idLocation,
    this.name,
    this.departure,
    this.arrival,
    this.vehicleDeparture,
    this.vehicleArrival,
  });

  factory AggregateChartResponse.fromJson(Map<String, dynamic> json) =>
      _$AggregateChartResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AggregateChartResponseToJson(this);
}

@JsonSerializable()
class AggregateGraphResponse {
  @JsonKey(name: "seasonal")
  Map<String, AggregateTrafficResponse>? seasonal;
  @JsonKey(name: "weekly")
  Map<String, AggregateTrafficResponse>? weekly;
  @JsonKey(name: "monthly")
  Map<String, AggregateTrafficResponse>? monthly;
  @JsonKey(name: "yearly")
  Map<String, AggregateTrafficResponse>? yearly;

  AggregateGraphResponse({
    this.seasonal,
    this.weekly,
    this.monthly,
    this.yearly,
  });

  factory AggregateGraphResponse.fromJson(Map<String, dynamic> json) =>
      _$AggregateGraphResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AggregateGraphResponseToJson(this);
}

@JsonSerializable()
class AggregateTrafficResponse {
  @JsonKey(name: "arrival")
  int? arrival;
  @JsonKey(name: "departure")
  int? departure;
  @JsonKey(name: "vehicleDeparture")
  int? vehicleDeparture;
  @JsonKey(name: "vehicleArrival")
  int? vehicleArrival;

  AggregateTrafficResponse({
    this.arrival,
    this.departure,
    this.vehicleDeparture,
    this.vehicleArrival,
  });

  factory AggregateTrafficResponse.fromJson(Map<String, dynamic> json) =>
      _$AggregateTrafficResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AggregateTrafficResponseToJson(this);
}

@JsonSerializable()
class AggregateChartFlightResponse {
  @JsonKey(name: "passengers")
  Map<String, dynamic>? passengers;
  @JsonKey(name: "aircraft")
  Map<String, dynamic>? aircraft;

  AggregateChartFlightResponse({
    this.passengers,
    this.aircraft,
  });

  factory AggregateChartFlightResponse.fromJson(Map<String, dynamic> json) =>
      _$AggregateChartFlightResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AggregateChartFlightResponseToJson(this);
}

@JsonSerializable()
class AggregateChartSailingResponse {
  @JsonKey(name: "passengers")
  Map<String, dynamic>? passengers;
  @JsonKey(name: "ship")
  Map<String, dynamic>? ship;

  AggregateChartSailingResponse({
    this.passengers,
    this.ship,
  });

  factory AggregateChartSailingResponse.fromJson(Map<String, dynamic> json) =>
      _$AggregateChartSailingResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AggregateChartSailingResponseToJson(this);
}
