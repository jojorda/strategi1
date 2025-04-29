import 'package:expandable/expandable.dart';
import 'package:strategi_hub_app/domain/entities/comparison_data.dart';
import 'package:strategi_hub_app/domain/entities/pantau.dart';

class KomparasiModel {
  bool isLoading;
  String comparisonTitle;
  Location currentLocation;
  Location? comparedLocation;
  ExpandableController expandableController;
  ComparisonData? currentLocationComparison;
  ComparisonData? comparedLocationComparison;
  bool? isDeparture;
  bool? isHideArrival;
  bool? isVehicle;

  KomparasiModel({
    this.isLoading = false,
    required this.comparisonTitle,
    required this.currentLocation,
    this.comparedLocation,
    this.currentLocationComparison,
    this.comparedLocationComparison,
    this.isDeparture,
    this.isHideArrival,
    this.isVehicle,
    ExpandableController? expandableController,
  }) : expandableController = expandableController ?? ExpandableController();

  KomparasiModel copyWith({
    bool? isLoading,
    String? comparisonTitle,
    Location? currentLocation,
    Location? comparedLocation,
    ComparisonData? currentLocationComparison,
    ComparisonData? comparedLocationComparison,
    bool? isDeparture,
    bool? isVehicle,
    bool? isHideArrival,
    ExpandableController? expandableController,
  }) {
    return KomparasiModel(
      isLoading: isLoading ?? this.isLoading,
      comparisonTitle: comparisonTitle ?? this.comparisonTitle,
      currentLocation: currentLocation ?? this.currentLocation,
      comparedLocation: comparedLocation ?? this.comparedLocation,
      currentLocationComparison:
          currentLocationComparison ?? this.currentLocationComparison,
      comparedLocationComparison:
          comparedLocationComparison ?? this.comparedLocationComparison,
      isDeparture: isDeparture ?? this.isDeparture,
      isVehicle: isVehicle ?? this.isVehicle,
      isHideArrival: isHideArrival ?? this.isHideArrival,
      expandableController: expandableController ?? this.expandableController,
    );
  }
}
