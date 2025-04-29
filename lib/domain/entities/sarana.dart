import 'package:strategi_hub_app/domain/entities/perizinan.dart';

import 'package:json_annotation/json_annotation.dart';

part 'sarana.g.dart';

@JsonSerializable(explicitToJson: true)
class Sarana {
  final String id;
  final String name;
  final String location;
  final String plateNumber;
  final String brand;
  final int wheelCount;
  final int maxPassengerCount;
  final List<Perizinan> documents;

  Sarana({
    required this.id,
    required this.name,
    required this.location,
    required this.plateNumber,
    required this.brand,
    required this.wheelCount,
    required this.maxPassengerCount,
    this.documents = const [],
  });

  factory Sarana.fromJson(Map<String, dynamic> json) => _$SaranaFromJson(json);
  Map<String, dynamic> toJson() => _$SaranaToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SaranaResponse {
  List<Sarana> listSarana;
  int total;

  SaranaResponse({
    this.listSarana = const [],
    this.total = 0,
  });

  factory SaranaResponse.fromJson(Map<String, dynamic> json) =>
      _$SaranaResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SaranaResponseToJson(this);
}
