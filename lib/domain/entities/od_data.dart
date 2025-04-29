import 'package:json_annotation/json_annotation.dart';
import 'package:strategi_hub_app/domain/entities/event.dart';
import 'package:strategi_hub_app/data/models/enum/moda_type.dart';

part 'od_data.g.dart';

@JsonSerializable(explicitToJson: true)
class OdGraphData {
  final OriginDestinationData? origin;
  final OriginDestinationData? destination;

  OdGraphData({this.origin, this.destination});

  factory OdGraphData.fromJson(Map<String, dynamic> json) =>
      _$OdGraphDataFromJson(json);

  Map<String, dynamic> toJson() => _$OdGraphDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OdChartList {
  final List<OdChartData> data;

  OdChartList({
    required this.data,
  });

  factory OdChartList.fromJson(Map<String, dynamic> json) =>
      _$OdChartListFromJson(json);

  Map<String, dynamic> toJson() => _$OdChartListToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OdChartData {
  final String? idOrigin;
  final String? origin;
  final String? originCity;
  final String? originType;
  final String? idDestination;
  final String? destination;
  final String? destinationCity;
  final String? destinationType;
  final int? departure;
  final int? arrival;
  final int? vehicleDeparture;
  final int? vehicleArrival;

  OdChartData({
    this.idOrigin,
    this.origin,
    this.originCity,
    this.originType,
    this.idDestination,
    this.destination,
    this.destinationCity,
    this.destinationType,
    this.departure,
    this.arrival,
    this.vehicleDeparture,
    this.vehicleArrival,
  });

  factory OdChartData.fromJson(Map<String, dynamic> json) =>
      _$OdChartDataFromJson(json);

  Map<String, dynamic> toJson() => _$OdChartDataToJson(this);

  String get combinedLabel => '$origin\n$destination';

  int get total => (departure ?? 0) + (arrival ?? 0);
}

@JsonSerializable(explicitToJson: true)
class OriginDestinationData {
  TrafficData? seasonal;
  TrafficData? weekly;
  TrafficData? monthly;
  TrafficData? yearly;

  OriginDestinationData({
    this.weekly,
    this.monthly,
    this.yearly,
    this.seasonal,
  });

  factory OriginDestinationData.fromJson(Map<String, dynamic> json) =>
      _$OriginDestinationDataFromJson(json);

  Map<String, dynamic> toJson() => _$OriginDestinationDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TrafficData {
  final List<ChartData> departure;
  final List<ChartData> arrival;
  final List<ChartData> vehicleDeparture;
  final List<ChartData> vehicleArrival;

  TrafficData({
    required this.departure,
    required this.arrival,
    required this.vehicleDeparture,
    required this.vehicleArrival,
  });

  factory TrafficData.fromJson(Map<String, dynamic> json) =>
      _$TrafficDataFromJson(json);

  Map<String, dynamic> toJson() => _$TrafficDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ChartData {
  final String label;
  final double value;
  final String? color;

  ChartData({
    required this.label,
    required this.value,
    this.color,
  });

  factory ChartData.fromJson(Map<String, dynamic> json) =>
      _$ChartDataFromJson(json);

  Map<String, dynamic> toJson() => _$ChartDataToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OdDetailArgument {
  Event? event;
  bool? isRoutine;
  DateTime? selectedDate;
  DateTime? tanggalAwal1;
  DateTime? tanggalAkhir1;
  String? idOrigin;
  String? idDestination;
  ModaType? modaType;
  String? origin;
  String? destination;
  int? selectedFilter;
  String? originCityName;
  String? destinationCityName;
  String? originType;
  String? destinationType;

  OdDetailArgument({
    this.event,
    this.isRoutine,
    this.selectedDate,
    this.tanggalAwal1,
    this.tanggalAkhir1,
    this.idOrigin,
    this.idDestination,
    this.modaType,
    this.origin,
    this.destination,
    this.selectedFilter,
    this.originCityName,
    this.destinationCityName,
    this.originType,
    this.destinationType,
  });

  factory OdDetailArgument.fromJson(Map<String, dynamic> json) =>
      _$OdDetailArgumentFromJson(json);

  Map<String, dynamic> toJson() => _$OdDetailArgumentToJson(this);
  Map<String, dynamic> toMap() {
    return {
      'event': event?.id,
      'isRoutine': isRoutine,
      'selectedDate': selectedDate,
      'tanggalAwal1': tanggalAwal1,
      'tanggalAkhir1': tanggalAkhir1,
      'idOrigin': idOrigin,
      'idDestination': idDestination,
      'modaType': modaType,
    };
  }
}
