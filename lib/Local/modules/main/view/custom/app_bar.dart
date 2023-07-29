import 'package:driver_app/Local/Core/Constant/Colors.dart';
import 'package:driver_app/Local/Core/Constant/Routes.dart';
import 'package:driver_app/Local/Core/Constant/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/main_controller.dart';

PreferredSizeWidget? mainAppBar() {
  MainController controller = Get.find();
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: Text(
      controller.currentindex == 0
          ? "Home"
          : controller.currentindex == 1
              ? "Chat"
              : "Profile",
      style: purpleTextStyle(false).copyWith(color: AppColors.dPurple),
    ),
    leading: IconButton(
        onPressed: () {
          Get.toNamed(AppRoute.notificatios);
        },
        icon: const Icon(
          Icons.notifications_active,
          color: AppColors.dPurple,
        )),
    actions: [],
  );
}
