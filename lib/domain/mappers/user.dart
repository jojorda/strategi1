import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:strategi_hub_app/data/models/response/user_response.dart';
import 'package:strategi_hub_app/domain/entities/user.dart';
import 'package:strategi_mobile_api/strategi_mobile_api.dart';

import 'user.auto_mappr.dart';

@AutoMappr([
  MapType<UserResponse, User>(
    fields: [
      Field('id', whenNull: 0),
      Field('nama', whenNull: ''),
      Field('tipe', whenNull: ''),
      Field('prevEvent', whenNull: ''),
      Field('flag', whenNull: 0)
    ],
  ),
  MapType<MasterUserApprovalGet200ResponseDataInner, User>(
    fields: [
      Field('username', from: 'username', whenNull: ''),
      Field('fullname', from: 'fullname', whenNull: ''),
      Field('kantor', from: 'kantor', whenNull: ''),
    ],
  ),
])
class UserMapper extends $UserMapper {}
