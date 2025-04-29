import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:strategi_hub_app/data/models/response/matrix_report_response.dart';
import 'package:strategi_hub_app/domain/mappers/matrix_report.auto_mappr.dart';

import '../entities/matrix_report.dart';

@AutoMappr([
  MapType<MatrixReportResponse, MatrixReportEntity>(),
  MapType<HeaderItem, HeaderEntity>(),
  MapType<MatrixReportDataItem, MatrixReportDataEntity>(),
  MapType<DetailItem, DetailEntity>(),
])
class MatrixReportMappr extends $MatrixReportMappr {}
