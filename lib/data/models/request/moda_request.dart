import 'package:json_annotation/json_annotation.dart';

part 'moda_request.g.dart';

@JsonSerializable()
class ModaRequest {
  @JsonKey(name: "tanggalAwal1", includeIfNull: false)
  DateTime? tanggalAwal1;
  @JsonKey(name: "tanggalAkhir1", includeIfNull: false)
  DateTime? tanggalAkhir1;
  @JsonKey(name: "event", includeIfNull: false)
  String? event;
  @JsonKey(name: "provinsi", includeIfNull: false)
  String? provinsi;
  @JsonKey(name: "moda", includeIfNull: false)
  String? moda;
  @JsonKey(name: "type", includeIfNull: false)
  String? type;
  @JsonKey(name: "idOrigin", includeIfNull: false)
  String? idOrigin;
  @JsonKey(name: "idDestination", includeIfNull: false)
  String? idDestination;

  ModaRequest({
    this.tanggalAwal1,
    this.tanggalAkhir1,
    this.event,
    this.provinsi,
    this.moda,
    this.type,
    this.idOrigin,
    this.idDestination,
  });

  factory ModaRequest.fromJson(Map<String, dynamic> json) =>
      _$ModaRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ModaRequestToJson(this);
}
