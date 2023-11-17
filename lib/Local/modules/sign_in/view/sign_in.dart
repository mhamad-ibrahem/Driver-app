import 'package:driver_app/Global/Core/Class/HandilingData.dart';
import 'package:driver_app/Global/Core/Constant/Size.dart';
import 'package:driver_app/Local/Core/Constant/Images.dart';
import 'package:driver_app/Local/modules/sign_in/controller/SignInController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Shared/custom_app_bar.dart';
import 'custom/bottom_page.dart';
import 'custom/sign_in_form.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});
  final SignInController controller = Get.put(SignInController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          SizedBox(
            height: AppSize.screenHight,
            width: AppSize.screenWidth,
            child: Image.asset(
              AppImages.backgroundImage,
              fit: BoxFit.cover,
            ),
          ),
          Scaffold(
            appBar: customAppBar(title: 'Sign In', isBack: false),
            backgroundColor: Colors.transparent,
            body: HandlingDataRequest(
              statusRequest: controller.statusRequest,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: AppSize.screenHight * 0.2,
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
        ],
      ),
    );
  }
}
