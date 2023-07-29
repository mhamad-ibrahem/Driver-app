import 'package:driver_app/Local/modules/sign_in/controller/SignInController.dart';
import 'package:get/get.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SignInController());
  }
}
