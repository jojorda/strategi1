import 'package:json_annotation/json_annotation.dart';

import 'package:strategi_hub_app/data/models/response/aggregate_response.dart';

part 'regional_response.g.dart';

@JsonSerializable()
class RegionalResponse {
  @JsonKey(name: "graph")
  AggregateGraphResponse? graph;
  @JsonKey(name: "list")
  List<RegionalItemResponse>? list;

  RegionalResponse({
    this.graph,
    this.list,
  });

  factory RegionalResponse.fromJson(Map<String, dynamic> json) =>
      _$RegionalResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RegionalResponseToJson(this);
}

@JsonSerializable()
class RegionalItemResponse {
  @JsonKey(name: "idLocation")
  dynamic idLocation;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "city")
  String? city;
  @JsonKey(name: "type")
  String? type;
  @JsonKey(name: "departure")
  int? departure;
  @JsonKey(name: "arrival")
  int? arrival;
  @JsonKey(name: "vehicleDeparture")
  int? vehicleDeparture;
  @JsonKey(name: "vehicleArrival")
  int? vehicleArrival;
  @JsonKey(name: "longitude")
  String? longitude;
  @JsonKey(name: "latitude")
  String? latitude;
  @JsonKey(name: "coordinate")
  String? coordinate;
  @JsonKey(name: "timezone")
  String? timezone;

  RegionalItemResponse({
    this.idLocation,
    this.name,
    this.city,
    this.type,
    this.departure,
    this.arrival,
    this.vehicleDeparture,
    this.vehicleArrival,
    this.longitude,
    this.latitude,
    this.coordinate,
    this.timezone,
  });

  factory RegionalItemResponse.fromJson(Map<String, dynamic> json) =>
      _$RegionalItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RegionalItemResponseToJson(this);
}
