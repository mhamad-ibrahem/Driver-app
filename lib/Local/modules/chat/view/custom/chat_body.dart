import 'package:driver_app/Local/Core/Constant/Colors.dart';
import 'package:driver_app/Local/Core/Constant/Images.dart';
import 'package:driver_app/Local/Shared/app_divider.dart';
import 'package:flutter/material.dart';

import '../../model/chat_model.dart';

class ChatBody extends StatelessWidget {
  ChatBody({super.key, this.onTap, required this.chatModel});
  final void Function()? onTap;
  final ChatModel chatModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: CircleAvatar(
                  maxRadius: 35,
                  backgroundColor: AppColors.primary,
                  child: Image.asset(
                    AppImages.profile2,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            chatModel.name,
                            style: Theme.of(context).textTheme.headline1,
                          ),
                          Text(
                            chatModel.date,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            chatModel.lastMessage,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          const Icon(
                            Icons.check,
                            color: AppColors.primary,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          const AppDivider()
        ],
      ),
    );
  }
}
