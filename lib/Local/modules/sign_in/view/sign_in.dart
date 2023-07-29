import 'package:driver_app/Global/Core/Class/HandilingData.dart';
import 'package:driver_app/Global/Core/Constant/Colors.dart';
import 'package:driver_app/Global/Core/Constant/Size.dart';
import 'package:driver_app/Local/modules/sign_in/controller/SignInController.dart';
import 'package:driver_app/Local/Core/Constant/Colors.dart';
import 'package:driver_app/Local/Core/Constant/TextStyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'custom/bottom_page.dart';
import 'custom/sign_in_form.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});
  SignInController controller = Get.put(SignInController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          title: Text(
            "Sign In",
            style: purpleTextStyle(false),
          ),
        ),
        backgroundColor: AppColors.lPurple,
        body: GetBuilder<SignInController>(
          builder: (controller) => HandilingDataRequest(
            statusRequest: controller.statusRequest,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.transparent,
                    height: AppSize.screenHight * 0.2,
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    width: AppSize.screenWidth,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(35)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: SignInForm()),
                          BottomPageSignIn()
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
