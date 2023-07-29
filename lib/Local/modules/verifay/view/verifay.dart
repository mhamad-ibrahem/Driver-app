import 'package:driver_app/Global/Core/Class/HandilingData.dart';
import 'package:driver_app/Global/Core/Constant/Size.dart';
import 'package:driver_app/Local/modules/verifay/controller/verifay_controller.dart';
import 'package:driver_app/Local/Core/Constant/Colors.dart';
import 'package:driver_app/Local/Widget/CustomAppScaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Global/Core/Constant/Colors.dart';
import '../../../Shared/top_page_forget_password.dart';
import '../../../Widget/CustomButton.dart';
import '../../../Widget/OtpTextField.dart';

class Verifay extends StatelessWidget {
  Verifay({super.key});
  VerifayController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return CustomAppScaffold(
        color: AppColors.lPurple,
        pageTitle: "Verifay",
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
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(35)),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: GetBuilder<VerifayController>(
                        builder: (controller) => HandilingDataRequest(
                          statusRequest: controller.statusRequest,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TopPageForgetPassword(
                                  title: "Please enter your verifay code",
                                  subTitle:
                                      "We have send you a vrifay code to your\nemail",
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
        ));
  }
}
