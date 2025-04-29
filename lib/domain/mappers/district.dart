import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:strategi_hub_app/domain/entities/district_data.dart';
import 'package:strategi_hub_app/domain/mappers/district.auto_mappr.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

@AutoMappr([
  MapType<MasterKabupatenGet200ResponseDataInner, DistrictData>(
    fields: [
      Field('id', from: 'id', whenNull: ''),
      Field('name', from: 'namaKabupaten', whenNull: ''),
    ],
  ),
])
class DistrictMapper extends $DistrictMapper {}
