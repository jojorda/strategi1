import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:strategi_hub_app/domain/entities/stream.dart';
import 'package:strategi_hub_app/domain/mappers/shared.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

import 'stream.auto_mappr.dart';

@AutoMappr([
  MapType<Streaming, StreamData>(
    fields: [],
  ),
], includes: [
  SharedMapper(),
])
class StreamMapper extends $StreamMapper {}
