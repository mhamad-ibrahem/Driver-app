import 'package:driver_app/Global/Core/Class/HandilingData.dart';
import 'package:driver_app/Global/Core/Constant/Colors.dart';
import 'package:driver_app/Global/Core/Constant/Size.dart';
import 'package:driver_app/Local/modules/sign_up/controller/SignUpController.dart';
import 'package:driver_app/Local/Core/Constant/TextStyles.dart';
import 'package:driver_app/Local/Widget/CustomBackButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Core/Constant/Colors.dart';
import 'custom/bottom_page.dart';
import 'custom/sign_up_form.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  SignUpController controller = Get.put(SignUpController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors.lPurple,
            body: GetBuilder<SignUpController>(
                builder: (controller) => HandilingDataRequest(
                    statusRequest: controller.statusRequest,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              alignment: Alignment.topLeft,
                              color: Colors.transparent,
                              height: AppSize.screenHight * 0.2,
                              padding: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const CustomBackButton(),
                                  Text(
                                    "Sign Up",
                                    style: purpleTextStyle(false),
                                  ),
                                  const SizedBox(
                                    width: 50,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 5,
                              child: Container(
                                  width: AppSize.screenWidth,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: const BorderRadius.vertical(
                                        top: Radius.circular(35)),
                                  ),
                                  child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(child: SignUpForm()),
                                            BottomPageSignUp()
                                          ]))))
                        ])))));
  }
}
