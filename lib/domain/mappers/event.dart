import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:strategi_hub_app/data/models/response/event_response.dart';
import 'package:strategi_hub_app/domain/entities/event.dart' as domain;
import 'package:strategi_hub_app/domain/mappers/shared.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

import 'event.auto_mappr.dart';

@AutoMappr([
  MapType<EventResponse, domain.Event>(
    fields: [
      Field('id', whenNull: 0),
      Field('nama', whenNull: ''),
      Field('tipe', whenNull: ''),
      Field('prevEvent', whenNull: ''),
      Field('flag', whenNull: 0)
    ],
  ),
  MapType<Event, domain.Event>(
    fields: [
      Field('id', whenNull: 0),
      Field('nama', whenNull: ''),
      Field('tipe', whenNull: ''),
      Field('prevEvent', whenNull: ''),
      Field('flag', whenNull: 0)
    ],
  ),
], includes: [
  SharedMapper()
])
class EventMapper extends $EventMapper {
  const EventMapper();
}
