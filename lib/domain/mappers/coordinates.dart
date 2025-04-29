import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:strategi_hub_app/domain/entities/coordinates.dart' as domain;
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

import 'coordinates.auto_mappr.dart';

@AutoMappr([
  MapType<Coordinates, domain.Coordinates>(
    fields: [
      Field('x', whenNull: 0.0),
      Field('y', whenNull: 0.0),
    ],
  ),
])
class CoordinatesMapper extends $CoordinatesMapper {
  const CoordinatesMapper();
}
