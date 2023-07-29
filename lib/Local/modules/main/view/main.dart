import 'package:driver_app/Local/modules/main/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom/app_bar.dart';
import 'custom/bottom_navogation_button.dart';

class Main extends StatelessWidget {
  Main({super.key});
  MainController controller = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetBuilder<MainController>(
        builder: (controller) => Scaffold(
          appBar: mainAppBar(),
          bottomNavigationBar: BottomNaviagtion(),
          body: controller.pages[controller.currentindex],
        ),
      ),
    );
  }
}
