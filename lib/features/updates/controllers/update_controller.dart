// features/updates/controllers/update_controller.dart

import 'package:get/get.dart';
import '../models/update_info_model.dart';
import '../services/update_service.dart';
import 'package:package_info_plus/package_info_plus.dart';

class UpdateController extends GetxController {
  var latestUpdate = Rxn<UpdateInfoModel>();
  var isLoading = false.obs;

  Future<void> checkForUpdates() async {
    isLoading.value = true;

    final info = await UpdateService.fetchLatestUpdate();
    if (info != null) {
      final packageInfo = await PackageInfo.fromPlatform();
      final currentVersion = packageInfo.version;

      if (isNewVersion(currentVersion, info.version)) {
        latestUpdate.value = info;
      }
    }

    isLoading.value = false;
  }

  bool isNewVersion(String current, String latest) {
    final currentParts = current.split('.').map(int.parse).toList();
    final latestParts = latest.split('.').map(int.parse).toList();

    for (int i = 0; i < currentParts.length; i++) {
      if (latestParts[i] > currentParts[i]) {
        return true;
      } else if (latestParts[i] < currentParts[i]) {
        return false;
      }
    }
    return false;
  }
}
