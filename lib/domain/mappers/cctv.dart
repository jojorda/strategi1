import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:strategi_hub_app/domain/entities/cctv_data.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

import 'cctv.auto_mappr.dart';

@AutoMappr([
  MapType<CctvGet200ResponseDataInner, CctvData>(
    fields: [
      Field('locationName', from: 'namaLokasi'),
      Field('cctvName', from: 'namaCctv'),
      Field('managerName', from: 'namaPengelola'),
      Field('source', from: 'source'),
      Field('categoryTag', from: 'tagKategori'),
      Field('cityName', from: 'namaKabupatenKota'),
      Field('provinceName', from: 'namaProvinsi'),
      Field('status', custom: CctvMapper.mapStatus),
    ],
  ),
])
class CctvMapper extends $CctvMapper {
  static String? mapStatus(CctvGet200ResponseDataInner data) =>
      data.status?.name;
}
