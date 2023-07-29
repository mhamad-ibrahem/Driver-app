import 'package:driver_app/Local/modules/settings/controller/settings_controller.dart';
import 'package:get/get.dart';

class SettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SettingsController());
  }
}
