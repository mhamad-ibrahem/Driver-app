import 'package:driver_app/Local/modules/edit_profile/controller/edit_profile_controller.dart';
import 'package:get/get.dart';

class EditeProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(EditeProfileController());
  }
}
