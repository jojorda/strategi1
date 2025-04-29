import 'package:json_annotation/json_annotation.dart';

part 'summary_response.g.dart';

@JsonSerializable()
class SummaryResponse {
  @JsonKey(name: "graph")
  List<GraphResponse>? graph;
  @JsonKey(name: "vehicle")
  List<NetworkResponse>? vehicle;
  @JsonKey(name: "network")
  List<NetworkResponse>? network;
  @JsonKey(name: "flight")
  FlightResponse? flight;
  @JsonKey(name: "sailing")
  SailingResponse? sailing;

  SummaryResponse({
    this.graph,
    this.vehicle,
    this.network,
    this.flight,
    this.sailing,
  });

  factory SummaryResponse.fromJson(Map<String, dynamic> json) =>
      _$SummaryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SummaryResponseToJson(this);
}

@JsonSerializable()
class FlightResponse {
  @JsonKey(name: "passengers")
  AircraftResponse? passengers;
  @JsonKey(name: "aircraft")
  AircraftResponse? aircraft;

  FlightResponse({
    this.passengers,
    this.aircraft,
  });

  factory FlightResponse.fromJson(Map<String, dynamic> json) =>
      _$FlightResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FlightResponseToJson(this);
}

@JsonSerializable()
class AircraftResponse {
  @JsonKey(name: "domestic")
  int? domestic;
  @JsonKey(name: "outbound")
  int? outbound;
  @JsonKey(name: "inbound")
  int? inbound;

  AircraftResponse({
    this.domestic,
    this.outbound,
    this.inbound,
  });

  factory AircraftResponse.fromJson(Map<String, dynamic> json) =>
      _$AircraftResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AircraftResponseToJson(this);
}

@JsonSerializable()
class GraphResponse {
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "count")
  int? count;

  GraphResponse({
    this.name,
    this.count,
  });

  factory GraphResponse.fromJson(Map<String, dynamic> json) =>
      _$GraphResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GraphResponseToJson(this);
}

@JsonSerializable()
class NetworkResponse {
  @JsonKey(name: "type")
  String? type;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "count")
  int? count;
  @JsonKey(name: "point")
  int? point;
  @JsonKey(name: "percent")
  double? percent;

  NetworkResponse({
    this.type,
    this.name,
    this.count,
    this.point,
    this.percent,
  });

  factory NetworkResponse.fromJson(Map<String, dynamic> json) =>
      _$NetworkResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NetworkResponseToJson(this);
}

@JsonSerializable()
class SailingResponse {
  @JsonKey(name: "passengers")
  AircraftResponse? passengers;
  @JsonKey(name: "ship")
  AircraftResponse? ship;

  SailingResponse({
    this.passengers,
    this.ship,
  });

  factory SailingResponse.fromJson(Map<String, dynamic> json) =>
      _$SailingResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SailingResponseToJson(this);
}
