import 'package:get/get.dart';
import '../controller/verify_controller.dart';

class VerifyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(VerifyController());
  }
}
