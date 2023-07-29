import 'dart:async';
import 'dart:developer';
import 'package:driver_app/Local/Core/Constant/Routes.dart';
import 'package:driver_app/Local/modules/verifay/data/verifay_data.dart';
import 'package:get/get.dart';
import '../../../../Global/Core/Class/StatusRequest.dart';
import '../../../../Global/Core/Functions/handilingData.dart';
import '../../../../Global/Core/Functions/warningAuthDialog.dart';
import '../model/verifay_model.dart';

class VerifayController extends GetxController {
  StatusRequest statusRequest = StatusRequest.none;
  VerifayData verifayData = VerifayData(Get.find());
  late String phone;
  Timer? timer;
  int remainingSeconds = 1;
  int times = 30;
  bool activitButton = false;
  goToChangePass(String vertifaycode) async {
    // VerifayModel verifayModel = VerifayModel(verifayCode: vertifaycode);
    // statusRequest = StatusRequest.loading;
    // update();
    // var response = await verifayData.checkVerifay(verifayModel);
    // statusRequest = handilingData(response);
    // log(response);
    // if (StatusRequest.success == statusRequest) {
    //   if (response['status'] == 'success') {
    Get.toNamed(AppRoute.changePassword);
    //   } else {
    //     warningAuthDialog('${response['message']}');
    //     statusRequest = StatusRequest.faliure;
    //   }
    // }
    // update();
  }

  resendVirifayCode() {
    verifayData.resendCode(phone);
    startTimer(30);
  }

  startTimer(int seconds) {
    const duration = Duration(seconds: 1);
    remainingSeconds = seconds;
    timer = Timer.periodic(duration, (time) {
      if (remainingSeconds == 0) {
        times = remainingSeconds;
        activitButton = true;
        time.cancel();
        update();
      } else {
        times = remainingSeconds;
        remainingSeconds--;
        activitButton = false;
        update();
      }
    });
    update();
  }

  @override
  void onReady() {
    startTimer(30);
    super.onReady();
  }

  @override
  void onClose() {
    if (timer != null) {
      timer!.cancel();
    }
    super.onClose();
  }

  @override
  void onInit() {
    phone = Get.arguments["phone"];
    super.onInit();
  }
}
