import 'package:driver_app/Global/Core/Class/HandilingData.dart';
import 'package:driver_app/Global/Core/Constant/Size.dart';
import 'package:driver_app/Local/modules/change_password/controller/change_password_controller.dart';
import 'package:driver_app/Local/Core/Constant/Colors.dart';
import 'package:driver_app/Local/Shared/top_page_forget_password.dart';
import 'package:driver_app/Local/Widget/CustomAppScaffold.dart';
import 'package:driver_app/Local/Widget/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Global/Core/Constant/Colors.dart';
import 'custom/change_password_form.dart';

class ChangePassword extends StatelessWidget {
  ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppScaffold(
        color: AppColors.lPurple,
        pageTitle: "Change Password",
        isBack: true,
        ispadding: false,
        isScroll: false,
        widget: GetBuilder<ChangePasswordController>(
          builder: (controller) => HandilingDataRequest(
            statusRequest: controller.statusRequest,
            child: Column(
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
                                ChangePasswordForm(),
                                Center(
                                  child: CustomButton(
                                      buttonBody: "Finish",
                                      onTap: () {
                                        controller.changePassword();
                                      },
                                      buttonWidth: AppSize.screenWidth * 0.8),
                                )
                              ])),
                    ))
              ],
            ),
          ),
        ));
  }
}
