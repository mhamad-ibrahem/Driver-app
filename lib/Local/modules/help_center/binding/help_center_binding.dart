import 'package:driver_app/Local/modules/help_center/controller/help_center_controller.dart';
import 'package:get/get.dart';

class HelpCenterBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HelpCenterController());
  }
}
