import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:strategi_hub_app/domain/entities/posko.dart' as domain;
import 'package:strategi_hub_app/domain/mappers/coordinates.dart';
import 'package:strategi_hub_app/domain/mappers/event.dart';
import 'package:strategi_hub_app/domain/mappers/posko_participant.dart';
import 'package:strategi_hub_app/domain/mappers/posko_type.dart';
import 'package:strategi_hub_app/domain/mappers/shared.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

import 'posko.auto_mappr.dart';

@AutoMappr([
  MapType<Posko, domain.Posko>(fields: [
    Field('namaPosko', whenNull: ''),
    Field(
      'masaPantauStr',
      whenNull: '',
      custom: PoskoMapper.mapMasaPantauStr,
    ),
  ]),
  MapType<PaginatedPoskoResponse, domain.PaginatedPosko>(
      fields: [Field('items', custom: PoskoMapper.mapItems)]),
  MapType<domain.PoskoRequest, PoskoPostRequest>(fields: [
    Field('koordinatPosko', custom: PoskoMapper.mapKoordinatPoskoRequest)
  ]),
], includes: [
  SharedMapper(),
  CoordinatesMapper(),
  EventMapper(),
  PoskoParticipantMapper(),
  PoskoTypeMapper(),
])
class PoskoMapper extends $PoskoMapper {
  static List<domain.Posko>? mapItems(PaginatedPoskoResponse source) {
    return PoskoMapper().convertList<Posko, domain.Posko>(
      source.data?.toList() ?? [],
    );
  }

  static String mapKoordinatPoskoRequest(domain.PoskoRequest? source) {
    final koordinat = source?.koordinatPosko;
    if (koordinat == null) {
      return '';
    }
    return '${koordinat.x}, ${koordinat.y}';
  }

  static String mapMasaPantauStr(Posko? source) {
    if (source == null ||
        (source.masaPantauAwal == null && source.masaPantauAkhir == null)) {
      return '';
    }
    final awal = source.masaPantauAwal?.toDateTime().toDate().toString() ?? '';
    final akhir =
        source.masaPantauAkhir?.toDateTime().toDate().toString() ?? '';
    return awal.isEmpty || akhir.isEmpty ? awal + akhir : '$awal - $akhir';
  }
}
