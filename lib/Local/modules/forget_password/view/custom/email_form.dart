import 'package:driver_app/Local/modules/forget_password/controller/forget_password_controller.dart';
import 'package:driver_app/Local/Widget/CustomTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../Shared/show_country_bottom_sheet.dart';
import '../../../../Shared/top_page_forget_password.dart';

class EmailForm extends StatelessWidget {
  EmailForm({super.key});
  final ForgetPasswordController controller = Get.find();
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
                  title: "Please enter your phone number",
                  subTitle:
                      "We will send you a verify code to your\nphone number",
                  isVerifay: false,
                ),
                GetX<ForgetPasswordController>(
                    builder: (controller) => CustomTextFormField(
                          prefix: CustomCountryPicker(
                              onSelect: (country) {
                                controller.countryCode.value =
                                    country.phoneCode;
                              },
                              countryCode: controller.countryCode.value),
                          inputType: TextInputType.phone,
                          label: "Phone",
                          hint: "enter your Phone",
                          obscure: false,
                          textEditingController: controller.phone,
                        )),
                const SizedBox(
                  height: 20,
                )
              ],
            )),
      ),
    );
  }
}
