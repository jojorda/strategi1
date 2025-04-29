import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:strategi_hub_app/domain/entities/operator.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

import 'operator_od.auto_mappr.dart';

@AutoMappr([
  MapType<ModaOperatorsModaOdGet200ResponseDataInner, OperatorOd>(fields: [
    Field('id', from: 'id', whenNull: 0),
  ]),
])
class OperatorOdMapper extends $OperatorOdMapper {}