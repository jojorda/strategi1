import 'package:strategi_hub_app/domain/entities/perizinan.dart';

import 'package:json_annotation/json_annotation.dart';

part 'operator.g.dart';

@JsonSerializable(explicitToJson: true)
class Operator {
  String? id;
  String? name;
  String? logo;
  String? contactPerson;
  String? contactPhone;
  String? contactEmail;
  String? contactLocation;
  String? addressLongLat;
  int? fleetSize;
  int? passengerCount;
  double? otpRate;
  List<Perizinan> documents;

  Operator({
    this.id,
    this.name,
    this.logo,
    this.contactPerson,
    this.contactPhone,
    this.contactEmail,
    this.contactLocation,
    this.addressLongLat,
    this.fleetSize,
    this.passengerCount,
    this.otpRate,
    this.documents = const [],
  });

  factory Operator.fromJson(Map<String, dynamic> json) =>
      _$OperatorFromJson(json);

  Map<String, dynamic> toJson() => _$OperatorToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OperatorOdResponse {
  List<OperatorOd> operatorOds;
  int total;

  OperatorOdResponse({
    this.operatorOds = const [],
    this.total = 0,
  });

  factory OperatorOdResponse.fromJson(Map<String, dynamic> json) =>
      _$OperatorOdResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OperatorOdResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OperatorOd {
  int id;
  String? name;
  String? origin;
  String? destination;

  OperatorOd({
    this.id = 0,
    this.name,
    this.origin,
    this.destination,
  });

  factory OperatorOd.fromJson(Map<String, dynamic> json) =>
      _$OperatorOdFromJson(json);

  Map<String, dynamic> toJson() => _$OperatorOdToJson(this);
}
