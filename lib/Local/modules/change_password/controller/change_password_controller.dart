import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Global/Core/Class/StatusRequest.dart';
import '../../../Core/Constant/Routes.dart';
import '../data/change_password_data.dart';

class ChangePasswordController extends GetxController {
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  StatusRequest statusRequest = StatusRequest.none;
  ChangePasswordData changePasswordData = ChangePasswordData(Get.find());
  bool obscure1 = true;
  bool obscure2 = true;

  changePassword() async {
    // var formData = formKey.currentState;
    // if (formData!.validate()) {
    //   ChangePasswordModel changePasswordModel = ChangePasswordModel(
    //     password: password.text,
    //     confirmPassword: confirmPassword.text,
    //   );
    //   statusRequest = StatusRequest.loading;
    //   update();
    //   var response =
    //       await changePasswordData.changePassword(changePasswordModel);
    //   statusRequest = handilingData(response);
    //   print(response);
    //   if (StatusRequest.success == statusRequest) {
    //     if (response['status'] == 'success') {
    Get.offAllNamed(AppRoute.signIn);
    //     } else {
    //       warningAuthDialog('${response['message']}');
    //       statusRequest = StatusRequest.faliure;
    //     }
    //   }
    //   update();
    // }
  }

  changeObscure1() {
    obscure1 = !obscure1;
    update();
  }

  changeObscure2() {
    obscure2 = !obscure2;
    update();
  }
}
