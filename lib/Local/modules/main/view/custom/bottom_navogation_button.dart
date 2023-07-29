import 'package:driver_app/Local/modules/main/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Core/Constant/Colors.dart';
import 'navigation_item.dart';

class BottomNaviagtion extends StatelessWidget {
  BottomNaviagtion({super.key});
  MainController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        color: AppColors.lPurple,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(35),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavigationItem(
              title: "Home",
              icon: Icons.home,
              isSelected: controller.currentindex == 0 ? true : false,
              onTap: () {
                controller.changePage(0);
              }),
          NavigationItem(
              title: "Chat",
              icon: Icons.chat_rounded,
              isSelected: controller.currentindex == 1 ? true : false,
              onTap: () {
                controller.changePage(1);
              }),
          NavigationItem(
              title: "Profile",
              icon: Icons.person,
              isSelected: controller.currentindex == 2 ? true : false,
              onTap: () {
                controller.changePage(2);
              })
        ],
      ),
    );
  }
}
