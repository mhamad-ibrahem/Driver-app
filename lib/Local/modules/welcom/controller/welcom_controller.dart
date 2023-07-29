import 'dart:async';

import 'package:driver_app/Local/Core/Constant/Routes.dart';
import 'package:get/get.dart';

class WelcomController extends GetxController {
  Timer? timer;
  int remainingSeconds = 1;
  int times = 30;
  startTimer(int seconds) {
    const duration = Duration(seconds: 1);
    remainingSeconds = seconds;
    timer = Timer.periodic(duration, (time) {
      if (remainingSeconds == 0) {
        times = remainingSeconds;
        Get.offAllNamed(AppRoute.signIn);
        time.cancel();
        update();
      } else {
        times = remainingSeconds;
        remainingSeconds--;
        update();
      }
    });
    update();
  }

  @override
  void onReady() {
    startTimer(2);
    super.onReady();
  }

  @override
  void onClose() {
    if (timer != null) {
      timer!.cancel();
    }
    super.onClose();
  }
}
