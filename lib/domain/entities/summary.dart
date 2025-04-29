import 'package:json_annotation/json_annotation.dart';

part 'summary.g.dart';

@JsonSerializable(explicitToJson: true)
class Summary {
  @JsonKey(name: "graph")
  List<Graph>? graph;
  @JsonKey(name: "vehicle")
  List<Network>? vehicle;
  @JsonKey(name: "network")
  List<Network>? network;
  @JsonKey(name: "flight")
  Flight? flight;
  @JsonKey(name: "sailing")
  Sailing? sailing;

  Summary({
    this.graph,
    this.vehicle,
    this.network,
    this.flight,
    this.sailing,
  });

  factory Summary.fromJson(Map<String, dynamic> json) =>
      _$SummaryFromJson(json);

  Map<String, dynamic> toJson() => _$SummaryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Flight {
  @JsonKey(name: "passengers")
  Aircraft? passengers;
  @JsonKey(name: "aircraft")
  Aircraft? aircraft;

  Flight({
    this.passengers,
    this.aircraft,
  });

  factory Flight.fromJson(Map<String, dynamic> json) => _$FlightFromJson(json);

  Map<String, dynamic> toJson() => _$FlightToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Sailing {
  @JsonKey(name: "passengers")
  Aircraft? passengers;
  @JsonKey(name: "ship")
  Aircraft? ship;

  Sailing({
    this.passengers,
    this.ship,
  });

  factory Sailing.fromJson(Map<String, dynamic> json) =>
      _$SailingFromJson(json);

  Map<String, dynamic> toJson() => _$SailingToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Aircraft {
  @JsonKey(name: "domestic")
  int? domestic;
  @JsonKey(name: "outbound")
  int? outbound;
  @JsonKey(name: "inbound")
  int? inbound;

  Aircraft({
    this.domestic,
    this.outbound,
    this.inbound,
  });

  factory Aircraft.fromJson(Map<String, dynamic> json) =>
      _$AircraftFromJson(json);

  Map<String, dynamic> toJson() => _$AircraftToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Graph {
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "count")
  int? count;

  Graph({
    this.name,
    this.count,
  });

  factory Graph.fromJson(Map<String, dynamic> json) => _$GraphFromJson(json);

  Map<String, dynamic> toJson() => _$GraphToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Network {
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

  Network({
    this.type,
    this.name,
    this.count,
    this.point,
    this.percent,
  });

  factory Network.fromJson(Map<String, dynamic> json) =>
      _$NetworkFromJson(json);

  Map<String, dynamic> toJson() => _$NetworkToJson(this);
}
