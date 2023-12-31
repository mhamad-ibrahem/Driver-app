import 'package:driver_app/Local/Core/Constant/Routes.dart';
import 'package:driver_app/Local/modules/sign_in/data/sign_in_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import '../../../../Global/Core/Class/HiveBox.dart';
import '../../../../Global/Core/Class/StatusRequest.dart';

class SignInController extends GetxController {
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Box? authBox;
  StatusRequest statusRequest = StatusRequest.none;
  SignInData signInData = SignInData(Get.find());
  RxBool rememberMe = false.obs;
  RxBool obscure = true.obs;

  RxString countryCode = '963'.obs;

  signIn() async {
    var formData = formKey.currentState;
    if (formData!.validate()) {
      // SignInModel signInModel =SignInModel(password: password.text, phone: phone.text);
      // statusRequest = StatusRequest.loading;
      // update();
      // var response = await signInData.signIn(signInModel);
      // statusRequest = handilingData(response);
      // print(response);
      // if (StatusRequest.success == statusRequest) {
      //   if (response['status'] == 'success') {
      //     if (response['data']["user_approve"] == "1") {
      // authBox!.put(HiveKeys.tokenKeY, response['data']['token']);
      Get.offAllNamed(AppRoute.main);
      //     } else {
      //       Get.toNamed(AppRoute.signUpOtp, arguments: {"email": phone.text});
      //     }
      //   } else {
      //     warningAuthDialog('email or password is wrong');
      //     statusRequest = StatusRequest.faliure;
      //   }
      // }
      // update();
    }
  }

  goToSignUp() {
    Get.toNamed(AppRoute.signUp);
  }

  goToForgetPassword() {
    Get.toNamed(AppRoute.emailSending);
  }

  void openBox() async {
    authBox = await Hive.openBox(HiveBox.authBox);
  }

  @override
  void onInit() {
    openBox();
    super.onInit();
  }
}
