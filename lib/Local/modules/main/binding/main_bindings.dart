import 'package:driver_app/Local/modules/chat/controller/chat_controller.dart';
import 'package:driver_app/Local/modules/main/controller/main_controller.dart';
import 'package:get/get.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
  }
}
