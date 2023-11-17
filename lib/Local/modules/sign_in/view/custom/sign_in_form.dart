import 'package:driver_app/Local/Shared/show_country_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/SignInController.dart';
import '../../../../Core/Constant/Colors.dart';
import '../../../../Shared/remember_me.row.dart';
import '../../../../Widget/CustomTextFormField.dart';
import 'top_page.dart';

class SignInForm extends StatelessWidget {
  SignInForm({super.key});
  final SignInController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: GetX<SignInController>(
        builder: (controller) => Form(
            key: controller.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TopPageSignIn(),
                CustomTextFormField(
                  // prefix: const Icon(
                  //   Icons.phone_android_rounded,
                  //   color: AppColors.primary,
                  // ),
                  prefix: CustomCountryPicker(
                      onSelect: (country) {
                        controller.countryCode.value = country.phoneCode;
                      },
                      countryCode: controller.countryCode.value),
                  label: "Phone Number",
                  hint: "Enter your phone number",
                  obscure: false,
                  textEditingController: controller.phone,
                  inputType: TextInputType.phone,
                  suffixIcon: null,
                  validator: (val) {
                    return null;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextFormField(
                  prefix: const Icon(
                    Icons.lock,
                    color: AppColors.primary,
                  ),
                  label: "Password",
                  hint: "Enter your password",
                  obscure: controller.obscure.value,
                  textEditingController: controller.password,
                  validator: (val) {
                    return null;
                  },
                  suffixIcon: IconButton(
                      onPressed: () {
                        controller.obscure.toggle();
                      },
                      icon: Icon(
                        controller.obscure.value
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
                  rememberMe: controller.rememberMe.value,
                  onChanged: (val) {
                    controller.rememberMe.toggle();
                  },
                  forgetPassword: () {
                    controller.goToForgetPassword();
                  },
                ),
              ],
            )),
      ),
    );
  }
}
