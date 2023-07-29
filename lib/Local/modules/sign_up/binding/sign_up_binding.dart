import 'package:get/get.dart';

import '../controller/SignUpController.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SignUpController());
  }
}
