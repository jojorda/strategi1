import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:strategi_hub_app/domain/entities/posko.dart' as domain;
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

import 'posko.auto_mappr.dart';

@AutoMappr([
  MapType<PesertaPosko, domain.PoskoParticipant>(),
])
class PoskoParticipantMapper extends $PoskoMapper {
  const PoskoParticipantMapper();
}
