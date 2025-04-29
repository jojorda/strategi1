import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:strategi_hub_app/domain/entities/perizinan.dart';
import 'package:strategi_hub_app/domain/entities/sarana.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

import 'sarana.auto_mappr.dart';

@AutoMappr([
  MapType<ModaOperatorsModaFleetsGet200ResponseDataInner, Sarana>(fields: [
    Field('id', from: 'id', whenNull: ""),
    Field('name', from: 'name', whenNull: ""),
    Field('location', from: 'location', whenNull: ""),
    Field('plateNumber', from: 'plateNumber', whenNull: ""),
    Field('brand', from: 'brand', whenNull: ""),
    Field('wheelCount', from: 'wheelCount', whenNull: 0),
    Field('maxPassengerCount', from: 'maxPassengerCount', whenNull: 0),
    Field('documents', from: 'documents'),
  ]),
  MapType<ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner, Perizinan>(
      fields: [
        Field('fileUrl', from: 'fileUrl'),
      ]),
])
class SaranaMapper extends $SaranaMapper {}