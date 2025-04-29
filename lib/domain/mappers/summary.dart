import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:strategi_hub_app/data/models/response/summary_response.dart';
import 'package:strategi_hub_app/domain/entities/summary.dart';

import 'summary.auto_mappr.dart';

@AutoMappr([
  MapType<GraphResponse, Graph>(),
  MapType<NetworkResponse, Network>(),
  MapType<FlightResponse, Flight>(),
  MapType<AircraftResponse, Aircraft>(),
  MapType<SailingResponse, Sailing>(),
  MapType<SummaryResponse, Summary>(
    fields: [],
  ),
])
class SummaryMapper extends $SummaryMapper {}
