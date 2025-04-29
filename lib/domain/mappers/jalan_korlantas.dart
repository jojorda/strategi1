import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:strategi_hub_app/data/models/response/jalan_korlantas_response.dart';
import 'package:strategi_hub_app/domain/entities/jalan_korlantas.dart';
import 'jalan_korlantas.auto_mappr.dart';

@AutoMappr([
  MapType<JalanKorlantasResponse, JalanKorlantasDataEntity>(),
  MapType<JalanData, JalanKorlantasEntity>(),
  MapType<Summary, SummaryEntity>(),
  MapType<Pagination, PaginationEntity>(),
])
class JalanKorlantasMappr extends $JalanKorlantasMappr {}
