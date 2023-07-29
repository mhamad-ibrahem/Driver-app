import 'package:driver_app/Global/Core/Class/HiveKeys.dart';
import 'package:driver_app/Local/Core/Constant/Colors.dart';
import 'package:driver_app/Local/modules/chat_details/binding/chat_binding.dart';
import 'package:driver_app/Local/modules/chat_details/controller/chat_controller.dart';
import 'package:driver_app/Local/modules/chat_details/model/message_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatMessage extends StatelessWidget {
  ChatMessage({super.key, required this.model, required this.isRecive});
  final MessageModel model;
  final bool isRecive;
  ChatDetailsController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          model.senderUserName == controller.authBox.get(HiveKeys.nameKeY)
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: AppColors.lPurple,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(model.senderUserName ==
                        controller.authBox.get(HiveKeys.nameKeY)
                    ? 45
                    : 35),
                bottomLeft: Radius.circular(model.senderUserName ==
                        controller.authBox.get(HiveKeys.nameKeY)
                    ? 0
                    : 35),
                topRight: Radius.circular(model.senderUserName ==
                        controller.authBox.get(HiveKeys.nameKeY)
                    ? 35
                    : 45),
                bottomRight: Radius.circular(
                    model.senderUserName == controller.authBox.get(HiveKeys.nameKeY)
                        ? 35
                        : 0)),
          ),
          child: Text(
            model.meassage,
          ),
        ),
      ],
    );
  }
}
