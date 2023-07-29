import 'package:driver_app/Local/Core/Constant/Routes.dart';
import 'package:driver_app/Local/modules/chat/model/chat_model.dart';
import 'package:get/get.dart';

class ChatController extends GetxController {
  List<ChatModel> chatList = [
    ChatModel(
        id: "1",
        image: "",
        name: "Mhamad",
        lastMessage: "Dont forget sos bro",
        date: "10 : 30 AM"),
    ChatModel(
        id: "2",
        image: "",
        name: "Ali",
        lastMessage: "Im waiting",
        date: "10 : 00 AM"),
    ChatModel(
        id: "3",
        image: "",
        name: "Hasan",
        lastMessage: "Thanks",
        date: "9 : 10 AM")
  ];
  goToChatDetails() {
    Get.toNamed(AppRoute.chatDetails);
  }
}
