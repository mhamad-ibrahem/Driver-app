import 'package:driver_app/Global/Core/Constant/Size.dart';
import 'package:driver_app/Local/Widget/CustomAppScaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Core/Constant/Images.dart';
import '../controller/forget_password_controller.dart';
import '../../../Widget/CustomButton.dart';
import 'custom/email_form.dart';

class EmailSending extends StatelessWidget {
  EmailSending({super.key});
  final ForgetPasswordController controller = Get.find();
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
            ispadding: false,
            pageTitle: "Forget Password",
            isBack: true,
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
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                EmailForm(),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: CustomButton(
                                    buttonBody: "Next",
                                    hieght: 30,
                                    buttonWidth: AppSize.screenWidth * 0.8,
                                    onTap: () {
                                      controller.goToVerifay();
                                    },
                                  ),
                                ),
                              ])),
                    ))
              ],
            )),
      ],
    );
  }
}
