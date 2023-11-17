import 'package:driver_app/Local/Core/Constant/Routes.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../../Global/Core/Class/StatusRequest.dart';
import '../data/forget_password_data.dart';

class ForgetPasswordController extends GetxController {
  TextEditingController phone = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  StatusRequest statusRequest = StatusRequest.none;
  ForgetPasswordData forgetPasswordData = ForgetPasswordData(Get.find());
  RxString countryCode = '963'.obs;

  goToVerifay() async {
    // var formData = formKey.currentState;
    // if (formData!.validate()) {
    //   CheckEmialModel checkEmialModel = CheckEmialModel(phone: phone.text);
    //   statusRequest = StatusRequest.loading;
    //   update();
    //   var response = await ForgetPasswordData.ForgetPassword(checkEmialModel);
    //   statusRequest = handilingData(response);
    //   log(response);
    //   if (StatusRequest.success == statusRequest) {
    //     if (response['status'] == 'success') {
    Get.toNamed(AppRoute.verifay, arguments: {"phone": phone.text});
    //     }
    //     warningAuthDialog('${response['message']}');
    //     statusRequest = StatusRequest.faliure;
    //   }
    // }
    // update();
  }
}
