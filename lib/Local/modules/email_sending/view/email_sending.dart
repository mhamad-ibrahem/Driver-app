import 'package:driver_app/Global/Core/Constant/Size.dart';
import 'package:driver_app/Local/Core/Constant/Colors.dart';
import 'package:driver_app/Local/Widget/CustomAppScaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Global/Core/Constant/Colors.dart';
import '../controller/check_email_controller.dart';
import '../../../Shared/top_page_forget_password.dart';
import '../../../Widget/CustomButton.dart';
import 'custom/email_form.dart';

class EmailSending extends StatelessWidget {
  EmailSending({super.key});
  CheckEmailController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return CustomAppScaffold(
        color: AppColors.lPurple,
        ispadding: false,
        pageTitle: "Checking Phone",
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
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(35)),
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
        ));
  }
}
