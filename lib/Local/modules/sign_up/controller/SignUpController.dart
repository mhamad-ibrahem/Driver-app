import 'package:driver_app/Global/Core/Class/StatusRequest.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import '../../../../Global/Core/Class/HiveBox.dart';
import '../../../../Global/Core/Class/HiveKeys.dart';
import '../../../Core/Constant/Routes.dart';
import '../data/sign_up_data.dart';

class SignUpController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  StatusRequest statusRequest = StatusRequest.none;
  SignUpData signUpData = SignUpData(Get.find());
  Box authBox = Hive.box(HiveBox.authBox);
  bool rememberMe = false;
  bool obscure = true;

  signUp() async {
    // var formData = formKey.currentState;
    // if (formData!.validate()) {
    // SignUpModel signupModel = SignUpModel(
    //     name: name.text, password: password.text, phone: phone.text);
    // statusRequest = StatusRequest.loading;
    // update();
    // var response = await signUpData.signUp(signupModel);
    // statusRequest = handilingData(response);
    // log(response);
    // if (StatusRequest.success == statusRequest) {
    //   if (response['status'] == 'success') {
    authBox.put(HiveKeys.nameKeY, name.text);
    //     authBox!.put(HiveKeys.tokenKeY, response['data']['token']);
    Get.offAllNamed(AppRoute.main);
    //     } else {
    //       warningAuthDialog('${response['message']}');
    //       statusRequest = StatusRequest.faliure;
    //     }
    //   }
    //   update();
    // }
  }

  goToSignIn() {
    Get.offAllNamed(AppRoute.signIn);
  }

  rememberMeCheck() {
    rememberMe = !rememberMe;
    update();
  }

  changeObscure() {
    obscure = !obscure;
    update();
  }
}
