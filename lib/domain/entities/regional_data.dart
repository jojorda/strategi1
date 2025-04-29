import 'package:json_annotation/json_annotation.dart';
import 'package:strategi_hub_app/domain/entities/aggregate_data.dart';

part 'regional_data.g.dart';

@JsonSerializable(explicitToJson: true)
class RegionalData {
  @JsonKey(name: "graph")
  AggregateGraphData? graph;

  @JsonKey(name: "list")
  List<NodeData>? list;

  RegionalData({
    this.graph,
    this.list,
  });

  factory RegionalData.fromJson(Map<String, dynamic> json) =>
      _$RegionalDataFromJson(json);
  Map<String, dynamic> toJson() => _$RegionalDataToJson(this);
}

@JsonSerializable()
class NodeData {
  @JsonKey(name: "id_location")
  String? idLocation;

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

  @JsonKey(name: "vehicle_departure")
  int? vehicleDeparture;

  @JsonKey(name: "vehicle_arrival")
  int? vehicleArrival;

  @JsonKey(name: "longitude")
  String? longitude;

  @JsonKey(name: "latitude")
  String? latitude;

  @JsonKey(name: "coordinate")
  String? coordinate;

  @JsonKey(name: "timezone")
  String? timezone;

  NodeData({
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

  factory NodeData.fromJson(Map<String, dynamic> json) =>
      _$NodeDataFromJson(json);
  Map<String, dynamic> toJson() => _$NodeDataToJson(this);
}
