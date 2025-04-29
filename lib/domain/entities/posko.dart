import 'package:json_annotation/json_annotation.dart';
import 'package:strategi_hub_app/domain/entities/coordinates.dart';
import 'package:strategi_hub_app/domain/entities/event.dart';

part 'posko.g.dart';

@JsonSerializable(explicitToJson: true)
class Posko {
  int? id;
  int? idEvent;
  int? idJenisPosko;
  String namaPosko;
  String? alamatPosko;
  String? unitKerjaKoordinator;
  int? idPesertaPosko;
  String? lokasiPosko;
  Coordinates? koordinatPosko;
  String? ketuaPosko;
  String? noTelpKetuaPosko;
  String? picPosko;
  String? noTelpPosko;
  DateTime? masaPantau;
  DateTime? masaPantauAwal;
  DateTime? masaPantauAkhir;
  String? titikPantau;
  List<String>? fokusPantau;
  String? lampiran;
  DateTime? createDate;
  DateTime? updateDate;
  PoskoType? jenisPosko;
  PoskoParticipant? pesertaPosko;
  Event? event;

  // proposed field
  String? masaPantauStr;
  String? koordinatPoskoStr;

  Posko({
    this.id,
    this.idEvent,
    this.idJenisPosko,
    required this.namaPosko,
    this.alamatPosko,
    this.unitKerjaKoordinator,
    this.idPesertaPosko,
    this.lokasiPosko,
    this.koordinatPosko,
    this.ketuaPosko,
    this.noTelpKetuaPosko,
    this.picPosko,
    this.noTelpPosko,
    this.titikPantau,
    this.lampiran,
    this.createDate,
    this.updateDate,
    this.masaPantau,
    this.jenisPosko,
    this.pesertaPosko,
    this.event,
    this.masaPantauAwal,
    this.masaPantauAkhir,
    this.masaPantauStr,
    this.fokusPantau,
    this.koordinatPoskoStr,
  });

  factory Posko.fromJson(Map<String, dynamic> json) => _$PoskoFromJson(json);

  Map<String, dynamic> toJson() => _$PoskoToJson(this);
}

@JsonSerializable()
class PoskoParticipant {
  int? id;
  String? nama;
  bool? status;

  PoskoParticipant({
    this.id,
    this.nama,
    this.status,
  });

  factory PoskoParticipant.fromJson(Map<String, dynamic> json) =>
      _$PoskoParticipantFromJson(json);

  Map<String, dynamic> toJson() => _$PoskoParticipantToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PaginatedPosko {
  int? page;
  int? count;
  int? limit;
  int? totalPages;
  List<Posko>? items;

  PaginatedPosko({
    this.page,
    this.count,
    this.limit,
    this.totalPages,
    this.items,
  });

  factory PaginatedPosko.fromJson(Map<String, dynamic> json) =>
      _$PaginatedPoskoFromJson(json);

  Map<String, dynamic> toJson() => _$PaginatedPoskoToJson(this);
}

@JsonSerializable()
class PoskoType {
  int? id;
  String? nama;
  bool? status;

  PoskoType({
    this.id,
    this.nama,
    this.status,
  });

  factory PoskoType.fromJson(Map<String, dynamic> json) =>
      _$PoskoTypeFromJson(json);

  Map<String, dynamic> toJson() => _$PoskoTypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PoskoRequest extends Posko {
  PoskoRequest({
    required super.namaPosko,
    super.alamatPosko,
    super.unitKerjaKoordinator,
    super.idPesertaPosko,
    super.koordinatPosko,
    super.ketuaPosko,
    super.noTelpKetuaPosko,
    super.picPosko,
    super.noTelpPosko,
    super.masaPantau,
    super.masaPantauAwal,
    super.masaPantauAkhir,
    super.titikPantau,
    super.fokusPantau,
    super.lampiran,
    super.createDate,
    super.updateDate,
    super.jenisPosko,
    super.pesertaPosko,
    super.event,
    super.idEvent,
    super.idJenisPosko,
    super.masaPantauStr,
    super.koordinatPoskoStr,
    super.id,
  });

  factory PoskoRequest.fromJson(Map<String, dynamic> json) =>
      _$PoskoRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PoskoRequestToJson(this);
}
