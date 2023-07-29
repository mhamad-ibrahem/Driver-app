import 'package:driver_app/Local/Core/Constant/Colors.dart';
import 'package:driver_app/Local/Shared/app_divider.dart';
import 'package:driver_app/Local/modules/chat_details/controller/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Core/Constant/Images.dart';
import '../../../Core/Constant/TextStyles.dart';
import 'custom/chat_form.dart';
import 'custom/chat_message.dart';

class ChatDetails extends StatelessWidget {
  ChatDetails({super.key});
  ChatDetailsController chatDetailsController = Get.find();
  @override
  Widget build(BuildContext context) {
    List chat = [
      ["hello frind how are you", true],
      ["good how are you", false],
      ["Dont forget sos bro", true],
    ];
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  maxRadius: 30,
                  backgroundColor: AppColors.primary,
                  child: Image.asset(
                    AppImages.profile2,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mhamad",
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Connected",
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(color: AppColors.primary),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const AppDivider(),
            const SizedBox(
              height: 20,
            ),
            GetBuilder<ChatDetailsController>(
              builder: (chatDetailsController) => Expanded(
                child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) => ChatMessage(
                        model: chatDetailsController.messages[index],
                        isRecive: true),
                    separatorBuilder: (context, i) => const SizedBox(
                          height: 20,
                        ),
                    itemCount: chatDetailsController.messages.length),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ChatForm(),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      )),
    );
  }
}
