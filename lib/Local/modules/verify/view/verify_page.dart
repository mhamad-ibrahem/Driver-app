import 'package:driver_app/Global/Core/Class/HandilingData.dart';
import 'package:driver_app/Global/Core/Constant/Size.dart';
import 'package:driver_app/Local/modules/verify/controller/verify_controller.dart';
import 'package:driver_app/Local/Widget/CustomAppScaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Core/Constant/Images.dart';
import '../../../Shared/top_page_forget_password.dart';
import '../../../Widget/CustomButton.dart';
import '../../../Widget/OtpTextField.dart';

class Verify extends StatelessWidget {
  Verify({super.key});
  final VerifyController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: AppSize.screenHight,
          width: AppSize.screenWidth,
          child: Image.asset(
            AppImages.backgroundImage,
            fit: BoxFit.cover,
          ),
        ),
        CustomAppScaffold(
            color: Colors.transparent,
            pageTitle: "Verify",
            isBack: true,
            ispadding: false,
            isScroll: false,
            widget: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
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
                          child: GetBuilder<VerifyController>(
                            builder: (controller) => HandlingDataRequest(
                              statusRequest: controller.statusRequest,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TopPageForgetPassword(
                                      title: "Please enter your verify code",
                                      subTitle:
                                          "We have send you a verify code to your\nemail",
                                      isVerifay: true,
                                      remaningSecond: '${controller.times}',
                                    ),
                                    OtpInput(
                                      otpFunction: (val) {
                                        controller.goToChangePass(val);
                                      },
                                    ),
                                    const Expanded(
                                      child: SizedBox(
                                        height: 20,
                                      ),
                                    ),
                                    Center(
                                      child: CustomButton(
                                        buttonBody: "Re-send",
                                        buttonWidth: AppSize.screenWidth * 0.8,
                                        onTap: controller.times == 0
                                            ? () {
                                                controller.resendVirifayCode();
                                              }
                                            : null,
                                      ),
                                    )
                                  ]),
                            ),
                          )),
                    ))
              ],
            )),
      ],
    );
  }
}
