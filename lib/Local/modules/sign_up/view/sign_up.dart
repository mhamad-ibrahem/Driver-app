import 'package:driver_app/Global/Core/Class/HandilingData.dart';
import 'package:driver_app/Global/Core/Constant/Size.dart';
import 'package:driver_app/Local/modules/sign_up/controller/SignUpController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Core/Constant/Images.dart';
import '../../../Shared/custom_app_bar.dart';
import 'custom/bottom_page.dart';
import 'custom/sign_up_form.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final SignUpController controller = Get.put(SignUpController());
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
            appBar: customAppBar(
              title: 'Sign Up',
            ),
            backgroundColor: Colors.transparent,
            body: GetBuilder<SignUpController>(
                builder: (controller) => HandlingDataRequest(
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
                        ])))),
      ],
    ));
  }
}
