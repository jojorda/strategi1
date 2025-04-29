import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:built_collection/built_collection.dart';
import 'package:strategi_hub_app/domain/entities/report_approval.dart';
import 'package:strategi_hub_app/domain/mappers/shared.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

import 'report_approval.auto_mappr.dart';

@AutoMappr(
  [
    MapType<Kecelakaan, KecelakaanData>(),
    MapType<Cuaca, CuacaData>(),
    MapType<Report, ReportApproval>(
      fields: [
        Field('status', custom: ReportApprovalMapper.mapStatusApproval),
      ],
    )
  ],
  converters: [
    TypeConverter<BuiltList<Kecelakaan>?, List<KecelakaanData>?>(
        ReportApprovalMapper.builtListKecelakaan),
    TypeConverter<BuiltList<Cuaca>?, List<CuacaData>?>(
        ReportApprovalMapper.builtListCuaca),
  ],
  includes: [
    SharedMapper(),
  ],
)
class ReportApprovalMapper extends $ReportApprovalMapper {
  static StatusApproval mapStatusApproval(Report? source) {
    if (source?.approvedDate != null) {
      return StatusApproval.approved;
    }
    if (source?.rejectedDate != null) {
      return StatusApproval.rejected;
    }
    return StatusApproval.pending;
  }

  static List<KecelakaanData>? builtListKecelakaan(
      BuiltList<Kecelakaan>? source) {
    return ReportApprovalMapper().convertList<Kecelakaan, KecelakaanData>(
      source?.toList() ?? [],
    );
  }

  static List<CuacaData>? builtListCuaca(BuiltList<Cuaca>? source) {
    return ReportApprovalMapper().convertList<Cuaca, CuacaData>(
      source?.toList() ?? [],
    );
  }
}
