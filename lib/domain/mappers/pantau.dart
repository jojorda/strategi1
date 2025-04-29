import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:strategi_hub_app/data/models/response/pantau_response.dart';
import 'package:strategi_hub_app/domain/entities/pantau.dart';

import 'pantau.auto_mappr.dart';

@AutoMappr([
  MapType<LocationResponse, Location>(fields: [
    Field(
      'idLokasi',
      custom: PantauMapper.mapIdLokasi,
    )
  ]),
  MapType<StasiunResponse, Location>(),
  MapType<PantauResponse, Simpul>(),
], converters: [
  TypeConverter<LocationResponse?, Location?>(PantauMapper.responseToLocation),
  TypeConverter<StasiunResponse?, Location?>(PantauMapper.responseToStasiun),
])
class PantauMapper extends $PantauMapper {
  static String? mapIdLokasi(LocationResponse? source) {
    return source?.idLokasi.toString();
  }

  static Location? responseToLocation(LocationResponse? source) {
    return PantauMapper().convert<LocationResponse, Location>(source);
  }

  static Location? responseToStasiun(StasiunResponse? source) {
    return PantauMapper().convert<StasiunResponse, Location>(source);
  }
}
