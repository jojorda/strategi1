import 'package:strategi_hub_app/domain/entities/aggregate_data.dart';

class ComparisonData extends AggregateGraphData {
  bool? isRoutine;
  String? moda;
  int? idLocation;
  String? location;
  int? arrivalSummary;
  int? departureSummary;
  int? vehicleArrivalSummary;
  int? vehicleDepartureSummary;

  ComparisonData({
    this.moda,
    this.isRoutine,
    this.idLocation,
    this.location,
    this.arrivalSummary,
    this.departureSummary,
    this.vehicleArrivalSummary,
    this.vehicleDepartureSummary,
    super.seasonal,
    super.weekly,
    super.monthly,
    super.yearly,
  });

  ComparisonData copyWith({
    String? moda,
    int? idLocation,
    String? location,
    bool? isRoutine,
    int? arrivalSummary,
    int? departureSummary,
    int? vehicleArrivalSummary,
    int? vehicleDepartureSummary,
    TrafficData? seasonal,
    TrafficData? weekly,
    TrafficData? monthly,
    TrafficData? yearly,
  }) {
    return ComparisonData(
      moda: moda ?? this.moda,
      isRoutine: isRoutine ?? this.isRoutine,
      idLocation: idLocation ?? this.idLocation,
      location: location ?? this.location,
      arrivalSummary: arrivalSummary ?? this.arrivalSummary,
      departureSummary: departureSummary ?? this.departureSummary,
      vehicleArrivalSummary:
          vehicleArrivalSummary ?? this.vehicleArrivalSummary,
      vehicleDepartureSummary:
          vehicleDepartureSummary ?? this.vehicleDepartureSummary,
      seasonal: seasonal ?? this.seasonal,
      weekly: weekly ?? this.weekly,
      monthly: monthly ?? this.monthly,
      yearly: yearly ?? this.yearly,
    );
  }
}
