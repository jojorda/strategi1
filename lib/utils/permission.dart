import 'package:get/get.dart';
import 'package:strategi_hub_app/data/local/local_storage_keys.dart';
import 'package:strategi_hub_app/data/local/local_storage_service.dart';

bool hasPermission(String permission) {
  final local =
      Get.find<LocalStorageService>().getListDefault(LocalStorageKeys.access);
  if (local == null) {
    return true;
  }
  return local.contains(permission);
}

bool hasChildPermission(String permission) {
  final local =
      Get.find<LocalStorageService>().getListDefault(LocalStorageKeys.access);
  if (local == null) {
    return true;
  }
  return local.any((element) => element.startsWith(permission));
}

bool customPermissionChecks(bool Function(List local) check) {
  final local =
      Get.find<LocalStorageService>().getListDefault(LocalStorageKeys.access);
  if (local == null) {
    return true;
  }
  return check(local);
}
