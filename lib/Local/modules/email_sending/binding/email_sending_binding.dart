import 'package:get/get.dart';

import '../controller/check_email_controller.dart';

class EmailSendingBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CheckEmailController());
  }
}
