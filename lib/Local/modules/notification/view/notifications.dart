import 'package:driver_app/Global/Core/Constant/Size.dart';
import 'package:driver_app/Local/Widget/CustomButton.dart';
import 'package:driver_app/Local/modules/notification/model/notification_model.dart';
import 'package:flutter/material.dart';
import '../../../Shared/app_divider.dart';
import '../../../Widget/CustomAppScaffold.dart';
import 'custom/notifications_body.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppScaffold(
        pageTitle: "Notification",
        isBack: true,
        isScroll: false,
        widget: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    ...["d", "d", "d", "", "", "", "", "", "", "", "", "", ""]
                        .map((e) => NotificationBody(
                              notificationModel: NotificationModel(
                                  image: null,
                                  title: "Title",
                                  subTitle: "SubTitle"),
                            )),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
                buttonBody: "Remove All",
                onTap: () {},
                buttonWidth: AppSize.screenWidth * 0.8)
          ],
        ));
  }
}
