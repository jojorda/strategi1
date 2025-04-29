import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:strategi_hub_app/domain/entities/operator.dart';
import 'package:strategi_hub_app/domain/entities/perizinan.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

import 'operator.auto_mappr.dart';

@AutoMappr([
  MapType<ModaOperatorsModaRoutineGet200ResponseInner, Operator>(fields: [
    Field('documents', from: 'documents'),
  ]),
  MapType<ModaOperatorsModaRoutineGet200ResponseInnerDocumentsInner, Perizinan>(
      fields: [
        Field('fileUrl', from: 'fileUrl'),
      ]),
])
class OperatorMapper extends $OperatorMapper {}
