import 'package:driver_app/Local/modules/chat_details/controller/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Core/Constant/Colors.dart';
import '../../../../Core/Constant/TextStyles.dart';

class ChatForm extends StatelessWidget {
  ChatForm({super.key});
  final ChatDetailsController chatDetailsController = Get.find();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.primary,
      controller: chatDetailsController.message,
      style: textFormStyle(context),
      decoration: InputDecoration(
          hintText: "Type massage",
          hintStyle: textFormStyle(context).copyWith(color: AppColors.deepGrey),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.grey, width: 2)),
          disabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.deepGrey, width: 2)),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.primary, width: 2)),
          suffixIcon: IconButton(
              onPressed: () {
                print(chatDetailsController.message.text);
                if (chatDetailsController.message.text.trim().isNotEmpty) {
                  chatDetailsController.sendMessage();
                }
              },
              icon: const Icon(
                Icons.send_rounded,
                color: AppColors.primary,
              ))),
    );
  }
}
