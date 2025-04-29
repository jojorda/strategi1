import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:strategi_hub_app/data/models/response/province_response.dart';
import 'package:strategi_hub_app/domain/entities/province_data.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

import 'province.auto_mappr.dart';

@AutoMappr([
  MapType<ProvinceResponse, ProvinceData>(
    fields: [
      Field('id', whenNull: ''),
      Field('name', from: 'namaProvinsi', whenNull: ''),
    ],
  ),
  MapType<MasterProvinsiGet200ResponseDataInner, ProvinceData>(
    fields: [
      Field('id', from: 'id', custom: ProvinceMapper.mapIdProvince),
      Field('name', from: 'namaProvinsi', whenNull: ''),
    ],
  ),
])
class ProvinceMapper extends $ProvinceMapper {
  static String mapIdProvince(MasterProvinsiGet200ResponseDataInner data) =>
      data.id.toString();
}
