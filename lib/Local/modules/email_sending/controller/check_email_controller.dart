import 'dart:developer';
import 'package:driver_app/Local/Core/Constant/Routes.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../../Global/Core/Class/StatusRequest.dart';
import '../../../../Global/Core/Functions/handilingData.dart';
import '../../../../Global/Core/Functions/warningAuthDialog.dart';
import '../data/check_email_data.dart';
import '../model/CheckEmialModel.dart';

class CheckEmailController extends GetxController {
  TextEditingController phone = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  StatusRequest statusRequest = StatusRequest.none;
  CheckEmailData checkEmailData = CheckEmailData(Get.find());

  goToVerifay() async {
    // var formData = formKey.currentState;
    // if (formData!.validate()) {
    //   CheckEmialModel checkEmialModel = CheckEmialModel(phone: phone.text);
    //   statusRequest = StatusRequest.loading;
    //   update();
    //   var response = await checkEmailData.checkEmail(checkEmialModel);
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
