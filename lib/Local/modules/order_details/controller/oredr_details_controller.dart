import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderDetailsController extends GetxController {
  TimeOfDay selectedTime = TimeOfDay.now();
  accept() {}
  refeuse() {}
  exit() {
    Get.back();
  }

  openClock(BuildContext context) async {
    TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (time == null) return;
    selectedTime = time;
    update();
  }
}
