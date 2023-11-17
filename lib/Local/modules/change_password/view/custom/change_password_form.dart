import 'package:driver_app/Local/modules/change_password/controller/change_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Core/Constant/Colors.dart';
import '../../../../Shared/top_page_forget_password.dart';
import '../../../../Widget/CustomTextFormField.dart';

class ChangePasswordForm extends StatelessWidget {
  ChangePasswordForm({super.key});
  final ChangePasswordController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
            key: controller.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TopPageForgetPassword(
                    title: "Change your password",
                    subTitle: "Enter a new password to confirm ",
                    isVerifay: false),
                CustomTextFormField(
                  prefix: const Icon(
                    Icons.lock,
                    color: AppColors.primary,
                  ),
                  label: "New password",
                  hint: "Enter your new password",
                  obscure: controller.obscure1,
                  textEditingController: controller.password,
                  validator: (val) {
                    return null;
                  },
                  suffixIcon: IconButton(
                      onPressed: () {
                        controller.changeObscure1();
                      },
                      icon: Icon(
                        controller.obscure1
                            ? Icons.visibility_rounded
                            : Icons.visibility_off_rounded,
                        color: AppColors.deepGrey,
                      )),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFormField(
                  prefix: const Icon(
                    Icons.lock,
                    color: AppColors.primary,
                  ),
                  label: "Confirm password",
                  hint: "Confirm your new password",
                  obscure: controller.obscure2,
                  textEditingController: controller.confirmPassword,
                  validator: (val) {
                    return null;
                  },
                  suffixIcon: IconButton(
                      onPressed: () {
                        controller.changeObscure2();
                      },
                      icon: Icon(
                        controller.obscure2
                            ? Icons.visibility_rounded
                            : Icons.visibility_off_rounded,
                        color: AppColors.deepGrey,
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            )),
      ),
    );
  }
}
