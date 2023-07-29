import 'package:get/get.dart';
import '../controller/verifay_controller.dart';

class VerifayBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(VerifayController());
  }
}
