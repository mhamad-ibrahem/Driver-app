import 'package:get/get.dart';
import '../controller/chat_controller.dart';

class ChatDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ChatDetailsController());
  }
}
