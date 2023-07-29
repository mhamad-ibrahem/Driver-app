import 'package:driver_app/Local/modules/email_sending/controller/check_email_controller.dart';
import 'package:driver_app/Local/Widget/CustomTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Shared/top_page_forget_password.dart';

class EmailForm extends StatelessWidget {
  EmailForm({super.key});
  CheckEmailController controller = Get.find();
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
                      "We will send you a verifay code to your\nphone number",
                  isVerifay: false,
                ),
                CustomTextFormField(
                  icon: Icons.phone_android_rounded,
                  label: "Phone",
                  hint: "enter tour Phone",
                  obscure: false,
                  textEditingController: controller.phone,
                  validator: (val) {},
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            )),
      ),
    );
  }
}
