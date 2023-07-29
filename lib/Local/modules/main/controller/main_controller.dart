import 'package:driver_app/Local/modules/chat/view/chat.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../Core/Functions/request_permission.dart';
import '../../home/view/home.dart';
import '../../profile/view/profile.dart';
import '../../chat_details/view/chat.dart';

class MainController extends GetxController {
  int currentindex = 0;
  bool isSelected = false;
  List<Widget> pages = [Home(), Chat(), Profile()];
  changePage(
    int value,
  ) {
    currentindex = value;
    update();
  }

  @override
  void onInit() {
    requestLocationPermission();
    super.onInit();
  }
}
