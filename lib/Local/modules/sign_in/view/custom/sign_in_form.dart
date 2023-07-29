import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/SignInController.dart';
import '../../../../Core/Constant/Colors.dart';
import '../../../../Shared/remember_me.row.dart';
import '../../../../Widget/CustomTextFormField.dart';
import 'custom/top_page.dart';

class SignInForm extends StatelessWidget {
  SignInForm({super.key});
  SignInController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Form(
          key: controller.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopPageSignIn(),
              CustomTextFormField(
                icon: Icons.phone_android_rounded,
                label: "Phone Number",
                hint: "Enter your phone number",
                obscure: false,
                textEditingController: controller.phone,
                validator: (val) {},
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextFormField(
                icon: Icons.lock,
                label: "Password",
                hint: "Enter your password",
                obscure: controller.obscure,
                textEditingController: controller.password,
                validator: (val) {},
                suffixIcon: IconButton(
                    onPressed: () {
                      controller.changeObscure();
                    },
                    icon: Icon(
                      controller.obscure
                          ? Icons.visibility_rounded
                          : Icons.visibility_off_rounded,
                      color: AppColors.deepGrey,
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              RememberMeRow(
                isLogin: true,
                rememberMe: controller.rememberMe,
                onChanged: (val) {
                  controller.rememberMeCheck();
                },
                forgetPassword: () {
                  controller.goToForgetPassword();
                },
              ),
            ],
          )),
    );
  }
}
