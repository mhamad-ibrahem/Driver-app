import 'package:driver_app/Local/Core/Constant/TextStyles.dart';
import 'package:driver_app/Local/modules/chat/controller/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom/chat_body.dart';

class Chat extends StatelessWidget {
  Chat({super.key});
  ChatController chatController = Get.put(ChatController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              ...chatController.chatList.map((e) => ChatBody(
                    chatModel: e,
                    onTap: () {
                      chatController.goToChatDetails();
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
